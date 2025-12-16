#pragma once

#include <list>
#include <thread>
#include <memory>
#include <mutex>

#include "MapTree.h"
#include "ModelInstance.h"

#include "DetourNavMeshBuilder.h"
#include "TerrainBuilder.h"
#include "IntermediateValues.h"
#include "DetourCommon.h"

#include <condition_variable>
#include <mutex>
#include <queue>
#include <atomic>
#include <type_traits>

namespace MMAP
{

    struct TileInfo
    {
        TileInfo() : m_mapId(uint32(-1)), m_tileX(), m_tileY(), m_navMeshParams(), m_curTile(0), m_tileCount(0) {}

        uint32 m_mapId;
        uint32 m_tileX;
        uint32 m_tileY;
        uint32 m_curTile;
        uint32 m_tileCount;
        dtNavMeshParams m_navMeshParams;
    };


    template <typename T>
    class ProducerConsumerQueue
    {
    private:
        std::mutex _queueLock;
        std::queue<T> _queue;
        std::condition_variable _condition;
        std::atomic<bool> _shutdown;

    public:

        ProducerConsumerQueue<T>() : _shutdown(false) { }

        void Push(const T& value)
        {
            std::lock_guard<std::mutex> lock(_queueLock);
            _queue.push(std::move(value));

            _condition.notify_one();
        }

        bool Empty()
        {
            std::lock_guard<std::mutex> lock(_queueLock);

            return _queue.empty();
        }

        bool Pop(T& value)
        {
            std::lock_guard<std::mutex> lock(_queueLock);

            if (_queue.empty() || _shutdown)
                return false;

            value = _queue.front();

            _queue.pop();

            return true;
        }

        bool WaitAndPop(T& value)
        {
            std::unique_lock<std::mutex> lock(_queueLock);

            // we could be using .wait(lock, predicate) overload here but it is broken
            // https://connect.microsoft.com/VisualStudio/feedback/details/1098841
            while (_queue.empty() && !_shutdown)
                _condition.wait(lock);

            if (_queue.empty() || _shutdown)
                return false;

            value = _queue.front();

            _queue.pop();
            return true;
        }

        void Cancel()
        {
            std::unique_lock<std::mutex> lock(_queueLock);

            while (!_queue.empty())
            {
                T& value = _queue.front();

                DeleteQueuedObject(value);
                _queue.pop();
            }

            _shutdown = true;

            _condition.notify_all();
        }

    private:
        template<typename E = T>
        typename std::enable_if<std::is_pointer<E>::value>::type DeleteQueuedObject(E& obj) { delete obj; }

        template<typename E = T>
        typename std::enable_if<!std::is_pointer<E>::value>::type DeleteQueuedObject(E const& /*packet*/) { }
    };


    class MapBuilder;

    class TileBuilder
    {
    public:
        TileBuilder(MapBuilder* mapBuilder, bool skipLiquid, bool quick, bool bigBaseUnit, bool debugOutput) :
            m_bigBaseUnit(bigBaseUnit),
            m_debugOutput(debugOutput),
            m_mapBuilder(mapBuilder),
            m_terrainBuilder(nullptr),
            m_workerThread(&TileBuilder::WorkerThread, this),
            m_rcContext(nullptr)
        {
            m_terrainBuilder = new TerrainBuilder(skipLiquid, quick);
            m_rcContext = new rcContext(false);
        }

        ~TileBuilder()
        {
            WaitCompletion();

            delete m_terrainBuilder;
            delete m_rcContext;
        }

        void WaitCompletion()
        {
            if (m_workerThread.joinable())
                m_workerThread.join();
        }

        void WorkerThread();
        bool shouldSkipTile(uint32 mapID, uint32 tileX, uint32 tileY);
        void buildTile(uint32 mapID, uint32 tileX, uint32 tileY, dtNavMesh* navMesh, uint32 curTile, uint32 tileCount);

        // move map building
        void buildMoveMapTile(uint32 mapID,
            uint32 tileX,
            uint32 tileY,
            MeshData& meshData,
            float bmin[3],
            float bmax[3],
            dtNavMesh* navMesh);


        bool m_bigBaseUnit;
        bool m_debugOutput;

        MMAP::MapBuilder* m_mapBuilder;
        TerrainBuilder* m_terrainBuilder;
        std::thread m_workerThread;
        // build performance - not really used for now
        rcContext* m_rcContext;
    };
}