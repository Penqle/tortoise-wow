#pragma once

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The invalid handle NULL.
///
/// The class returns invalid handle for all handles which invalid value is NULL. 
template <typename HandleType>
class NullHandleValue
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Gets the invalid handle.
    ///
    /// \return
    /// Invalid handle NULL.
    static inline HandleType Get() { return NULL; }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The invalid handle INVALID_HANDLE_VALUE.
///
/// The class returns invalid handle for all handles which invalid value is INVALID_HANDLE_VALUE.
class InvalidHandleValue
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Gets the invalid handle.
    ///
    /// \return
    /// Invalid handle INVALID_HANDLE_VALUE.
    static inline HANDLE Get() { return INVALID_HANDLE_VALUE; }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The invalid handle INVALID_SOCKET.
///
/// The class returns invalid handle for all handles which invalid value is INVALID_SOCKET.
class InvalidSocketValue
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Gets the invalid handle.
    ///
    /// \return
    /// Invalid handle INVALID_SOCKET.
    static inline SOCKET Get() { return INVALID_SOCKET; }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The CloseHandle() method.
class CloseHandleMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Closes the handle.
    static inline void Close(HANDLE Handle) { CloseHandle(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The DeleteObject() method.
class DeleteObjectMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Deletes the attached Windows GDI object from memory.
    static inline void Close(HGDIOBJ Handle) { DeleteObject(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The closesocket() method.
class CloseSocketMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Closes an existing socket.
    static inline void Close(SOCKET Handle) { closesocket(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The UnmapViewOfFile() method.
class UnmapViewOfFileMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Unmaps a mapped view of a file from the calling process's address space.
    static inline void Close(LPVOID Handle) { UnmapViewOfFile(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The RegCloseKey() method.
class RegCloseKeyMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Releases a handle to the specified registry key.
    static inline void Close(HKEY Handle) { RegCloseKey(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The FreeLibrary() method.
class FreeLibraryMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Frees the loaded dynamic-link library (DLL). 
    static inline void Close(HMODULE Handle) { FreeLibrary(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The FindClose() method.
class FindCloseMethod
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Closes a file search handle.
    static inline void Close(HANDLE Handle) { FindClose(Handle); }
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// The scoped handle for Windows objects.
///
/// This wrapper ensures that the delete handle method will be called during destruction ala scoped_ptr().
///
/// Because invalid value and delete method for handles are inconsistent in Windows, the template parameters
/// InvalidHandle and CloseMethod have been introduced.
///
/// Because old compiler does not like the template none-class parameters, the special classes which return
/// the invalid handles and close methods have been introduced.
template <typename HandleType, class InvalidValue, class CloseMethod>
class ScopedHandle
{
public:
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Constructor.
    explicit ScopedHandle
    (
        HandleType     Handle = InvalidValue::Get()  ///< Windows object handle to wrap
    ) : m_Handle(Handle)
    {
    } // ScopedHandle

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Destructor.
    ~ScopedHandle()
    {
        if (m_Handle != InvalidValue::Get())
            CloseMethod::Close(m_Handle);
    } // ~ScopedHandle

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Reset the wrapped handle.
    void Reset
    (
        HandleType     Handle = InvalidValue::Get()  ///< Windows object handle to reset
    )
    {
        ScopedHandle NewWrapper(m_Handle);
        m_Handle = Handle;
    } // Reset

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Gets the wrapped handle.
    ///
    /// \return
    /// The wrapped handle.
    HandleType Get() const
    {
        return m_Handle;
    } // Get

    operator HandleType() const
    {
        return m_Handle;
    }

    bool IsValid() const
    {
        return m_Handle != InvalidValue::Get();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Implementation of the cast operator to bool.
    operator bool() const
    {
        return m_Handle != InvalidValue::Get();
    } // operator bool()

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Implementation of the operator!.
    bool operator!() const
    {
        return m_Handle == InvalidValue::Get();
    } // operator!()

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Exchanges the contents of the two scoped handles.
    void Swap
    (
        ScopedHandle& Other                         ///< Object to swap the value with
    )
    {
        HandleType Tmp = m_Handle;
        m_Handle = Other.m_Handle;
        Other.m_Handle = Tmp;
    } // Swap

private:
    // disable copy constructor and copy assignment operator
    ScopedHandle(const ScopedHandle&);
    ScopedHandle& operator=(const ScopedHandle&);

    HandleType      m_Handle;       ///< the Windows object handle to wrap
};

/// The wrapper for the event handle returned from CreateEvent() method.
typedef ScopedHandle<HANDLE, NullHandleValue<HANDLE>, CloseHandleMethod> EventScopedHandle;

/// The wrapper for the thread handle returned from CreateThread() method.
typedef ScopedHandle<HANDLE, NullHandleValue<HANDLE>, CloseHandleMethod> ThreadScopedHandle;

/// The wrapper for the file handle returned from CreateFile() method.
typedef ScopedHandle<HANDLE, InvalidHandleValue, CloseHandleMethod> FileScopedHandle;

/// The wrapper for the socket handle returned from socket() method.
typedef ScopedHandle<SOCKET, InvalidSocketValue, CloseSocketMethod> SocketScopedHandle;

/// The wrapper for the file mapping handle returned from CreateFileMapping() method.
typedef ScopedHandle<HANDLE, NullHandleValue<HANDLE>, CloseHandleMethod> MappingScopedHandle;

/// The wrapper for the view of file handle returned from MapViewOfFile() method.
typedef ScopedHandle<LPVOID, NullHandleValue<LPVOID>, UnmapViewOfFileMethod> ViewOfFileScopedHandle;

/// The wrapper for the registry key handle returned from RegOpenKeyEx() method.
typedef ScopedHandle<HKEY, NullHandleValue<HKEY>, RegCloseKeyMethod> RegKeyScopedHandle;

/// The wrapper for the module handle returned from LoadLibrary() method.
typedef ScopedHandle<HMODULE, NullHandleValue<HMODULE>, FreeLibraryMethod> ModuleScopedHandle;

/// The wrapper for the find file handle returned from FindFirstFile() method.
typedef ScopedHandle<HANDLE, InvalidHandleValue, FindCloseMethod> FindFileScopedHandle;

