/*
 * Copyright (C) 2017-2018 namreeb (legal@namreeb.org)
 *
 * This is private software and may not be shared under any circumstances,
 * absent permission of namreeb.
 */

#ifndef __WARDENMODULEMGR_HPP_
#define __WARDENMODULEMGR_HPP_

#include "WardenModule.hpp"

#include "Policies/Singleton.h"
#include "Platform/Define.h"

#include <vector>

class WardenModuleMgr
{
private:
    turtle_vector<WardenModule, Category_Anticheat> _winModules;
    turtle_vector<WardenModule, Category_Anticheat> _macModules;

public:
    WardenModuleMgr();
    void LoadWardenModules();

    const WardenModule *GetWindowsModule() const;
    const WardenModule *GetMacModule() const;
};

extern WardenModuleMgr sWardenModuleMgr;

#endif /* !__WARDENMODULEMGR_HPP_ */