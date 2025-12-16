#pragma once

#include "field_duty_alliance/npc_arcanist_nozzlespring.h"
#include "field_duty_alliance/npc_captain_blackanvil.h"
#include "field_duty_alliance/npc_hivezora_abomination.h"
#include "field_duty_alliance/npc_janela_stouthammer.h"
#include "field_duty_alliance/trigger_field_duty_alliance.h"
#include "field_duty_horde/npc_hiveregal_hunterkiller.h"
#include "field_duty_horde/npc_krug_skullsplit.h"
#include "field_duty_horde/npc_merok_longstride.h"
#include "field_duty_horde/npc_orgrimmar_legion_grunt.h"
#include "field_duty_horde/npc_shadow_priestess_shai.h"

inline void RegisterScripts_Silithus()
{
    // Field Duty - Alliance
    npc_arcanist_nozzlespring::RegisterScript();
    npc_captain_blackanvil::RegisterScript();
    npc_hivezora_abomination::RegisterScript();
    npc_janela_stouthammer::RegisterScript();
    trigger_field_duty_alliance::RegisterScript();

    // Field Duty - Horde
    npc_hiveregal_hunterkiller::register_script();
    npc_krug_skullsplit::register_script();
    npc_merok_longstride::register_script();
    npc_orgrimmar_legion_grunt::register_script();
    npc_shadow_priestess_shai::register_script();
}
