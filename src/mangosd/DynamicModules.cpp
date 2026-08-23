#include "DynamicModules.h"

#include "Log.h"
#include "ModulesScriptLoader.h"

#include <ace/OS_NS_dlfcn.h>

#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#ifndef TW_DYNAMIC_MODULES
#define TW_DYNAMIC_MODULES ""
#endif

#ifndef TW_MODULES_BUILD_DIRECTIVE
#define TW_MODULES_BUILD_DIRECTIVE ""
#endif

#ifndef TW_DYNAMIC_MODULES_INSTALL_DIR
#define TW_DYNAMIC_MODULES_INSTALL_DIR ""
#endif

namespace
{
    typedef char const* (*ModuleStringFunction)();
    typedef void (*ModuleScriptLoaderFunction)();

    struct LoadedModule
    {
        std::string path;
        ACE_SHLIB_HANDLE handle;
    };

    std::vector<LoadedModule>& LoadedModules()
    {
        static std::vector<LoadedModule> loadedModules;
        return loadedModules;
    }

    std::vector<std::string> SplitCommaSeparated(std::string const& value)
    {
        std::vector<std::string> result;
        std::string::size_type start = 0;

        while (start <= value.size())
        {
            std::string::size_type end = value.find(',', start);
            std::string item = value.substr(start, end == std::string::npos ? std::string::npos : end - start);
            if (!item.empty())
                result.push_back(item);

            if (end == std::string::npos)
                break;

            start = end + 1;
        }

        return result;
    }

    std::vector<std::string> GetDynamicModuleNames()
    {
        return SplitCommaSeparated(TW_DYNAMIC_MODULES);
    }

    char const* SharedLibraryPrefix()
    {
#if defined(_WIN32)
        return "";
#else
        return "lib";
#endif
    }

    char const* SharedLibraryExtension()
    {
#if defined(_WIN32)
        return ".dll";
#elif defined(__APPLE__)
        return ".dylib";
#else
        return ".so";
#endif
    }

    std::vector<std::string> GetModuleSearchDirectories()
    {
        std::vector<std::string> directories;

        if (std::strlen(TW_DYNAMIC_MODULES_INSTALL_DIR))
            directories.push_back(TW_DYNAMIC_MODULES_INSTALL_DIR);

        directories.push_back("modules");
        directories.push_back("lib/modules");
        directories.push_back("../lib/modules");

        return directories;
    }

    std::vector<std::string> GetModuleCandidatePaths(std::string const& moduleName)
    {
        std::vector<std::string> candidates;
        std::string const libraryName = std::string(SharedLibraryPrefix()) + moduleName + SharedLibraryExtension();

        for (std::string const& directory : GetModuleSearchDirectories())
            candidates.push_back(directory + "/" + libraryName);

        candidates.push_back(libraryName);
        return candidates;
    }

    void* ResolveRequiredSymbol(ACE_SHLIB_HANDLE handle, char const* symbolName, std::string const& modulePath)
    {
        void* symbol = ACE_OS::dlsym(handle, symbolName);
        if (!symbol)
            sLog.outError("Dynamic module %s is missing required symbol %s.", modulePath.c_str(), symbolName);

        return symbol;
    }

    bool ValidateModule(std::string const& moduleName, std::string const& modulePath, ACE_SHLIB_HANDLE handle,
                        ModuleScriptLoaderFunction& addScripts)
    {
        ModuleStringFunction getScriptModule = reinterpret_cast<ModuleStringFunction>(ResolveRequiredSymbol(handle, "GetScriptModule", modulePath));
        addScripts = reinterpret_cast<ModuleScriptLoaderFunction>(ResolveRequiredSymbol(handle, "AddModulesScripts", modulePath));
        ModuleStringFunction getBuildDirective = reinterpret_cast<ModuleStringFunction>(ResolveRequiredSymbol(handle, "GetModulesBuildDirective", modulePath));

        if (!getScriptModule || !addScripts || !getBuildDirective)
            return false;

        char const* scriptModule = getScriptModule();
        if (!scriptModule || moduleName != scriptModule)
        {
            sLog.outError("Dynamic module %s reports module name %s, expected %s.",
                          modulePath.c_str(), scriptModule ? scriptModule : "<null>", moduleName.c_str());
            return false;
        }

        char const* buildDirective = getBuildDirective();
        if (!buildDirective || std::strcmp(buildDirective, TW_MODULES_BUILD_DIRECTIVE) != 0)
        {
            sLog.outError("Dynamic module %s build type mismatch: module=%s core=%s.",
                          modulePath.c_str(), buildDirective ? buildDirective : "<null>", TW_MODULES_BUILD_DIRECTIVE);
            return false;
        }

        return true;
    }

    bool LoadDynamicModule(std::string const& moduleName)
    {
        for (std::string const& modulePath : GetModuleCandidatePaths(moduleName))
        {
            ACE_SHLIB_HANDLE handle = ACE_OS::dlopen(modulePath.c_str(), RTLD_NOW | RTLD_GLOBAL);
            if (!handle)
                continue;

            ModuleScriptLoaderFunction addScripts = nullptr;
            if (!ValidateModule(moduleName, modulePath, handle, addScripts))
            {
                ACE_OS::dlclose(handle);
                return false;
            }

            addScripts();
            LoadedModules().push_back({modulePath, handle});
            sLog.outString("Loaded dynamic module %s from %s.", moduleName.c_str(), modulePath.c_str());
            return true;
        }

        sLog.outError("Could not load dynamic module %s from configured module directories.", moduleName.c_str());
        return false;
    }
}

void AddConfiguredModulesScripts()
{
    AddModulesScripts();

    std::vector<std::string> const moduleNames = GetDynamicModuleNames();
    for (std::string const& moduleName : moduleNames)
        LoadDynamicModule(moduleName);
}
