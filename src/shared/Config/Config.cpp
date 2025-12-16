/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Config.h"

#include "Policies/SingletonImp.h"

INSTANTIATE_SINGLETON_2(Config, Config::Lock);
INSTANTIATE_CLASS_MUTEX(Config, std::shared_mutex);

// Defined here as it must not be exposed to end-users.
bool Config::GetValueHelper(const char* name, ACE_TString &result)
{
    GuardType guard(m_configLock);

    if (!mConf)
        return false;

    ACE_TString section_name;
    ACE_Configuration_Section_Key section_key;
    const ACE_Configuration_Section_Key &root_key = mConf->root_section();

    int i = 0;
    while (mConf->enumerate_sections(root_key, i, section_name) == 0)
    {
        mConf->open_section(root_key, section_name.c_str(), 0, section_key);
        if (mConf->get_string_value(section_key, name, result) == 0)
            return true;
        ++i;
    }

    return false;
}

std::string Config::GetStringDefaultInSection(const char* name, const char* section, const char* def)
{
    GuardType guard(m_configLock);

    if (!mConf)
        return def;

    const ACE_Configuration_Section_Key &root_key = mConf->root_section();
    ACE_Configuration_Section_Key primary_section_key;
    int openErrCode = mConf->open_section(root_key, section, 0, primary_section_key);
    if (openErrCode != 0)
    {
        return def;
    }

    ACE_TString section_value;
    openErrCode = mConf->get_string_value(primary_section_key, name, section_value);
    if (openErrCode != 0) return def;

    return section_value.c_str();
}

void Config::GetRootSections(std::vector<std::string>& OutSectionList)
{
    const ACE_Configuration_Section_Key &RootKey = mConf->root_section();

    ACE_TString section_name;
    int i = 0;
    while (mConf->enumerate_sections(RootKey, i, section_name) == 0)
    {
        OutSectionList.emplace_back(section_name.c_str());
        ++i;
    }
}

void Config::GetSections(const char* SectionName, std::vector<std::string>& OutSectionList)
{
    const ACE_Configuration_Section_Key &RootKey = mConf->root_section();
    ACE_Configuration_Section_Key BaseSectionKey;
    if (mConf->open_section(RootKey, SectionName, 0, BaseSectionKey) == 0)
    {
        ACE_TString section_name;
        int i = 0;
        while (mConf->enumerate_sections(BaseSectionKey, i, section_name) == 0)
        {
            OutSectionList.emplace_back(section_name.c_str());
            ++i;
        }
    }
}

void Config::GetKeys(const char* SectionName, std::vector<std::string>& OutKeysList)
{
    const ACE_Configuration_Section_Key &RootKey = mConf->root_section();
    ACE_Configuration_Section_Key BaseSectionKey;
    if (mConf->open_section(RootKey, SectionName, 0, BaseSectionKey) == 0)
    {
        ACE_TString key_name;
        ACE_Configuration::VALUETYPE valueType;
        int i = 0;
        while (mConf->enumerate_values(BaseSectionKey, i, key_name, valueType) == 0)
        {
            OutKeysList.emplace_back(key_name.c_str());
            ++i;
        }
    }
}

Config::Config()
    : mConf(nullptr)
{
}

Config::~Config()
{
    delete mConf;
}

bool Config::SetSource(const char *file)
{
    mFilename = file;

    return Reload();
}

bool Config::Reload()
{
    delete mConf;
    mConf = new ACE_Configuration_Heap;

    if (mConf->open() != -1)
    {
        ACE_Ini_ImpExp config_importer(*mConf);
        if (config_importer.import_config(mFilename.c_str()) != -1)
            return true;
    }

    delete mConf;
    mConf = nullptr;
    return false;
}

std::string Config::GetStringDefault(const char* name, const char* def)
{
    ACE_TString val;
    return GetValueHelper(name, val) ? val.c_str() : def;
}

bool Config::GetBoolDefault(const char* name, bool def)
{
    ACE_TString val;
    if (!GetValueHelper(name, val))
        return def;

    const char* str = val.c_str();
    return strcmp(str, "true") == 0 || strcmp(str, "TRUE") == 0 ||
           strcmp(str, "yes") == 0 || strcmp(str, "YES") == 0 ||
           strcmp(str, "1") == 0;
}


int32 Config::GetIntDefault(const char* name, int32 def)
{
    ACE_TString val;
    return GetValueHelper(name, val) ? atoi(val.c_str()) : def;
}


float Config::GetFloatDefault(const char* name, float def)
{
    ACE_TString val;
    return GetValueHelper(name, val) ? (float)atof(val.c_str()) : def;
}

float Config::GetFloatDefault(const char* name, const char* section, const float def)
{
    std::string rawValue = GetStringDefaultInSection(name, section, "invalid");
    if (rawValue == "invalid") return def;
    return atof(rawValue.c_str());
}