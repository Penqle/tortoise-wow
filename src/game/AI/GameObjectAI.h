#ifndef _HEADER_GAMEOBJECT_AI
#define _HEADER_GAMEOBJECT_AI

#include "SharedDefines.h"
#include "ObjectGuid.h"

class Creature;
class GameObject;
class Unit;
class ObjectGuid;
class WorldObject;

class GameObjectAI
{
    public:
        explicit GameObjectAI(GameObject* pGo): me(pGo) {}
        virtual ~GameObjectAI() {}

        virtual void UpdateAI(uint32 const /*uiDiff*/) {}
        virtual void SetData(uint32 /*id*/, uint32 /*value*/) {}
        virtual void InformGuid(ObjectGuid guid) {}
        virtual bool OnUse(Unit* /*user*/) { return false; }
        virtual bool OnActivateBySpell(WorldObject* caster, uint32 spellId, uint32 action) { return false; }

        // Called if a temporary summoned of m_creature reach a move point
        virtual void SummonedMovementInform(Creature* /*summoned*/, uint32 /*motion_type*/, uint32 /*point_id*/) {}

        virtual const char* GetDebugInfo() { return ""; }

    protected:
        GameObject* me;
};

#endif
