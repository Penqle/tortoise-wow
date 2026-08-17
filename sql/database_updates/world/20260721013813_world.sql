-- ==============================================
-- FILE: add_spell_template_script_name.sql
-- GENERATED: 20260721013813
-- ==============================================
ALTER TABLE `spell_template`
    ADD COLUMN `script_name` VARCHAR(64) NOT NULL DEFAULT '' AFTER `customFlags`;

-- ==============================================
-- FILE: spell_script_assignment.sql
-- GENERATED: 20260721013813
-- ==============================================
UPDATE `spell_template` SET `script_name` = 'spell_mage_arcane_missiles' WHERE `entry` IN (5143, 5144, 5145, 8416, 8417, 10211, 10212, 15735, 15790, 22272, 25345, 51184);
UPDATE `spell_template` SET `script_name` = 'spell_mage_magic_absorption' WHERE `entry` IN (29441, 29444, 29445, 29446, 29447);
UPDATE `spell_template` SET `script_name` = 'spell_mage_master_of_elements' WHERE `entry` IN (29074, 29075, 29076);
UPDATE `spell_template` SET `script_name` = 'spell_mage_ignite' WHERE `entry` IN (11119, 11120, 12846, 12847, 12848);
UPDATE `spell_template` SET `script_name` = 'spell_mage_combustion' WHERE `entry` = 11129;
UPDATE `spell_template` SET `script_name` = 'spell_mage_cold_snap' WHERE `entry` = 12472;
UPDATE `spell_template` SET `script_name` = 'spell_mage_resonance_cascade' WHERE `entry` IN (51262, 51987, 51988, 51989, 51990);
UPDATE `spell_template` SET `script_name` = 'spell_mage_clear_resist_state' WHERE `entry` IN (51933, 51934, 51935, 51936);
UPDATE `spell_template` SET `script_name` = 'spell_mage_arcane_rupture' WHERE `entry` IN (51949, 51950, 51951, 51952, 51953, 51954);
UPDATE `spell_template` SET `script_name` = 'spell_mage_arcane_rupture_buff' WHERE `entry` = 52502;
UPDATE `spell_template` SET `script_name` = 'spell_item_persistent_shield' WHERE `entry` = 26467;
UPDATE `spell_template` SET `script_name` = 'spell_item_elunes_candle' WHERE `entry` = 26374;
UPDATE `spell_template` SET `script_name` = 'spell_item_first_aid' WHERE `entry` IN (746, 1159, 3267, 3268, 7926, 7927, 10838, 10839, 18608, 18610, 20803, 23567, 23568, 23569, 23696, 24412, 24413, 24414, 30020);
UPDATE `spell_template` SET `script_name` = 'spell_item_gnomish_death_ray' WHERE `entry` = 13278;
UPDATE `spell_template` SET `script_name` = 'spell_item_gnomish_death_ray_periodic' WHERE `entry` = 13493;
UPDATE `spell_template` SET `script_name` = 'spell_deviate_fish' WHERE `entry` = 8063;
UPDATE `spell_template` SET `script_name` = 'spell_cooked_deviate_fish' WHERE `entry` = 8213;
UPDATE `spell_template` SET `script_name` = 'spell_noggenfogger_elixir' WHERE `entry` = 16589;
UPDATE `spell_template` SET `script_name` = 'spell_net_o_matic' WHERE `entry` = 13120;
UPDATE `spell_template` SET `script_name` = 'spell_test_fetid_skull' WHERE `entry` = 17271;
UPDATE `spell_template` SET `script_name` = 'spell_cannibalize' WHERE `entry` = 20577;
UPDATE `spell_template` SET `script_name` = 'spell_mechanical_companion' WHERE `entry` IN (23074, 23075, 23076, 23133);
UPDATE `spell_template` SET `script_name` = 'spell_goblin_bomb_dispenser' WHERE `entry` = 23134;
UPDATE `spell_template` SET `script_name` = 'spell_gadgetzan_transporter' WHERE `entry` IN (23448, 23453);
UPDATE `spell_template` SET `script_name` = 'spell_item_everlook_transporter' WHERE `entry` = 23442;
UPDATE `spell_template` SET `script_name` = 'spell_kodo_kombobulator' WHERE `entry` = 18153;
UPDATE `spell_template` SET `script_name` = 'spell_melodious_rapture' WHERE `entry` = 21050;
UPDATE `spell_template` SET `script_name` = 'spell_purify_and_place_food' WHERE `entry` = 16072;
UPDATE `spell_template` SET `script_name` = 'spell_item_self_target_learn_spell' WHERE `entry` IN (12775, 46231);
UPDATE `spell_template` SET `script_name` = 'spell_item_war_mode' WHERE `entry` = 50029;
UPDATE `spell_template` SET `script_name` = 'spell_item_lunar_lantern' WHERE `entry` = 50100;
UPDATE `spell_template` SET `script_name` = 'spell_item_travelers_boat' WHERE `entry` = 46060;
UPDATE `spell_template` SET `script_name` = 'spell_item_travelers_tent' WHERE `entry` = 46058;
UPDATE `spell_template` SET `script_name` = 'spell_item_simple_wooden_planter' WHERE `entry` = 46062;
UPDATE `spell_template` SET `script_name` = 'spell_item_portable_wormhole' WHERE `entry` = 46012;
UPDATE `spell_template` SET `script_name` = 'spell_item_picnic_basket' WHERE `entry` = 56067;
UPDATE `spell_template` SET `script_name` = 'spell_item_toy_train_set' WHERE `entry` = 45840;
UPDATE `spell_template` SET `script_name` = 'spell_item_summon_utility_object' WHERE `entry` IN (36600, 46001, 46002);
UPDATE `spell_template` SET `script_name` = 'spell_item_guild_house_teleport' WHERE `entry` = 46010;
UPDATE `spell_template` SET `script_name` = 'spell_item_city_protector_teleport' WHERE `entry` = 46035;
UPDATE `spell_template` SET `script_name` = 'spell_item_ritual_table' WHERE `entry` IN (45407, 45920);
UPDATE `spell_template` SET `script_name` = 'spell_item_skin_change_token' WHERE `entry` = 56053;
UPDATE `spell_template` SET `script_name` = 'spell_item_teleport_to_gm_island' WHERE `entry` = 46028;
UPDATE `spell_template` SET `script_name` = 'spell_item_toggle_gm_invisibility' WHERE `entry` = 56047;
UPDATE `spell_template` SET `script_name` = 'spell_item_teresas_copper_coin' WHERE `entry` = 48304;
UPDATE `spell_template` SET `script_name` = 'spell_item_spitelash_shrine_offering' WHERE `entry` = 48305;
UPDATE `spell_template` SET `script_name` = 'spell_turtle_toy_collection' WHERE `entry` IN (46003, 46096);
UPDATE `spell_template` SET `script_name` = 'spell_item_display_debug' WHERE `entry` IN (56043, 56044, 56045);
UPDATE `spell_template` SET `script_name` = 'spell_item_gm_flight_mode' WHERE `entry` = 56046;
UPDATE `spell_template` SET `script_name` = 'spell_item_sunnyglade_spider' WHERE `entry` = 45873;
UPDATE `spell_template` SET `script_name` = 'spell_item_jukebox' WHERE `entry` = 29999;
UPDATE `spell_template` SET `script_name` = 'spell_item_illusion' WHERE `entry` IN (31960, 31961, 31962, 31963, 31964, 31965, 31966, 31967, 31968, 31969, 31970, 31971, 31972, 31973, 31974, 31975, 31976, 31977, 31978, 31979, 31980, 31981, 31982, 31983, 31984, 31985, 31986, 31987, 50910, 50911, 50912, 50913, 50914, 50915, 50916, 50917, 50918, 50919, 50920, 50921);
UPDATE `spell_template` SET `script_name` = 'spell_item_jukebox_music' WHERE `entry` IN (57531, 57532, 57533, 57534, 57535, 57536, 57537, 57538, 57539, 57540, 57541, 57542, 57543, 57544, 57545, 57546);
UPDATE `spell_template` SET `script_name` = 'spell_item_green_glow' WHERE `entry` = 12709;
UPDATE `spell_template` SET `script_name` = 'spell_item_linkens_boomerang' WHERE `entry` = 15712;
UPDATE `spell_template` SET `script_name` = 'spell_item_scorpid_surprise' WHERE `entry` = 6410;
UPDATE `spell_template` SET `script_name` = 'spell_item_brittle_armor' WHERE `entry` = 29284;
UPDATE `spell_template` SET `script_name` = 'spell_item_mercurial_shield' WHERE `entry` = 29286;
UPDATE `spell_template` SET `script_name` = 'spell_item_brittle_armor_remove_stack' WHERE `entry` = 24590;
UPDATE `spell_template` SET `script_name` = 'spell_item_mercurial_shield_remove_stack' WHERE `entry` = 26465;
UPDATE `spell_template` SET `script_name` = 'spell_item_hallowed_wand' WHERE `entry` IN (24717, 24718, 24719, 24720, 24737);
UPDATE `spell_template` SET `script_name` = 'spell_item_trick' WHERE `entry` = 24714;
UPDATE `spell_template` SET `script_name` = 'spell_item_cannon_fire' WHERE `entry` = 24731;
UPDATE `spell_template` SET `script_name` = 'spell_item_magic_wings' WHERE `entry` = 24742;
UPDATE `spell_template` SET `script_name` = 'spell_item_trick_or_treat' WHERE `entry` = 24751;
UPDATE `spell_template` SET `script_name` = 'spell_item_jubling_cooldown' WHERE `entry` = 23852;
UPDATE `spell_template` SET `script_name` = 'spell_summon_black_qiraji_battle_tank' WHERE `entry` = 26656;
UPDATE `spell_template` SET `script_name` = 'spell_item_aq40_battle_tank' WHERE `entry` IN (25863, 25953, 26054, 26055, 26056);
UPDATE `spell_template` SET `script_name` = 'spell_reindeer_transformation' WHERE `entry` = 25860;
UPDATE `spell_template` SET `script_name` = 'spell_turtle_companion_collection' WHERE `entry` = 46498;
UPDATE `spell_template` SET `script_name` = 'spell_turtle_mount_collection' WHERE `entry` = 46499;
UPDATE `spell_template` SET `script_name` = 'spell_mage_arcane_instability' WHERE `entry` IN (15058, 15059, 15060);
UPDATE `spell_template` SET `script_name` = 'spell_mage_improved_blizzard' WHERE `entry` IN (11185, 12487, 12488);
UPDATE `spell_template` SET `script_name` = 'spell_warrior_bloodthirst' WHERE `entry` IN (23881, 23892, 23893, 23894);
UPDATE `spell_template` SET `script_name` = 'spell_warrior_shield_slam' WHERE `entry` IN (23922, 23923, 23924, 23925, 52315);
UPDATE `spell_template` SET `script_name` = 'spell_warrior_execute' WHERE `entry` IN (5308, 20658, 20660, 20661, 20662);
UPDATE `spell_template` SET `script_name` = 'spell_warrior_execute_trigger' WHERE `entry` = 20647;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_warriors_wrath' WHERE `entry` = 21977;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_deep_wounds' WHERE `entry` IN (12162, 12850, 12868);
UPDATE `spell_template` SET `script_name` = 'spell_warrior_last_stand' WHERE `entry` = 12975;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_intimidating_shout' WHERE `entry` = 5246;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_sweeping_strikes' WHERE `entry` = 12292;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_retaliation' WHERE `entry` = 20230;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_fire_shield' WHERE `entry` IN (2947, 8316, 8317, 11770, 11771);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_conflagrate' WHERE `entry` IN (17962, 18930, 18931, 18932);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_pyroclasm' WHERE `entry` IN (18073, 18096);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_cheat_death' WHERE `entry` = 28845;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_consequences' WHERE `entry` IN (18119, 18120, 18121, 18122, 18123, 52630, 52633);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_soul_siphon' WHERE `entry` = 18371;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_life_tap' WHERE `entry` IN (1454, 1455, 1456, 11687, 11688, 11689);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_demonic_sacrifice' WHERE `entry` = 18788;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_create_healthstone' WHERE `entry` IN (6201, 6202, 5699, 11729, 11730, 27230);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_ritual_of_summoning' WHERE `entry` = 698;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_ritual_of_doom' WHERE `entry` IN (18540, 45908);
UPDATE `spell_template` SET `script_name` = 'spell_priest_power_word_shield' WHERE `entry` IN (17, 592, 600, 3747, 6065, 6066, 10898, 10899, 10900, 10901, 27607);
UPDATE `spell_template` SET `script_name` = 'spell_priest_holy_nova' WHERE `entry` IN (15237, 15430, 15431, 27799, 27800, 27801);
UPDATE `spell_template` SET `script_name` = 'spell_priest_inspiration' WHERE `entry` IN (14892, 15362, 15363, 15364, 15365);
UPDATE `spell_template` SET `script_name` = 'spell_priest_vampiric_embrace' WHERE `entry` = 15286;
UPDATE `spell_template` SET `script_name` = 'spell_priest_touch_of_weakness_trigger' WHERE `entry` = 28598;
UPDATE `spell_template` SET `script_name` = 'spell_priest_pain_spike' WHERE `entry` = 45555;
UPDATE `spell_template` SET `script_name` = 'spell_item_oracle_healing_bonus' WHERE `entry` = 26169;
UPDATE `spell_template` SET `script_name` = 'spell_priest_enlighten' WHERE `entry` = 51475;
UPDATE `spell_template` SET `script_name` = 'spell_priest_enlighten_link' WHERE `entry` = 51476;
UPDATE `spell_template` SET `script_name` = 'spell_item_greater_heal_t3' WHERE `entry` = 28809;
UPDATE `spell_template` SET `script_name` = 'spell_item_vial_of_potent_venoms' WHERE `entry` = 45417;
UPDATE `spell_template` SET `script_name` = 'spell_item_bonus_healing' WHERE `entry` = 45842;
UPDATE `spell_template` SET `script_name` = 'spell_priest_shadowguard' WHERE `entry` IN (18137, 19308, 19309, 19310, 19311, 19312);
UPDATE `spell_template` SET `script_name` = 'spell_priest_blessed_recovery' WHERE `entry` IN (27811, 27815, 27816);
UPDATE `spell_template` SET `script_name` = 'spell_priest_elunes_grace' WHERE `entry` IN (2651, 19289, 19291, 19292, 19293);
UPDATE `spell_template` SET `script_name` = 'spell_item_corrupted_healing' WHERE `entry` = 23401;
UPDATE `spell_template` SET `script_name` = 'spell_druid_reshift' WHERE `entry` = 47379;
UPDATE `spell_template` SET `script_name` = 'spell_druid_swiftmend' WHERE `entry` = 18562;
UPDATE `spell_template` SET `script_name` = 'spell_druid_berserk' WHERE `entry` = 45708;
UPDATE `spell_template` SET `script_name` = 'spell_druid_berserk_form_swap' WHERE `entry` IN (45709, 45710);
UPDATE `spell_template` SET `script_name` = 'spell_druid_enrage' WHERE `entry` = 5229;
UPDATE `spell_template` SET `script_name` = 'spell_druid_shapeshift_root_snare_removal' WHERE `entry` = 9033;
UPDATE `spell_template` SET `script_name` = 'spell_druid_aessinas_bloom' WHERE `entry` = 52567;
UPDATE `spell_template` SET `script_name` = 'spell_druid_open_wounds' WHERE `entry` IN (1082, 3029, 5201, 9849, 9850, 24187);
UPDATE `spell_template` SET `script_name` = 'spell_druid_ferocious_bite' WHERE `entry` IN (22557, 22568, 22827, 22828, 22829, 27557, 31018);
UPDATE `spell_template` SET `script_name` = 'spell_druid_moonclaw' WHERE `entry` = 45851;
UPDATE `spell_template` SET `script_name` = 'spell_druid_tree_of_life_aura' WHERE `entry` = 45707;
UPDATE `spell_template` SET `script_name` = 'spell_item_wolfshead_helm' WHERE `entry` = 17770;
UPDATE `spell_template` SET `script_name` = 'spell_item_dreamwalker_healing_touch' WHERE `entry` = 28719;
UPDATE `spell_template` SET `script_name` = 'spell_item_healing_touch_refund' WHERE `entry` = 28847;
UPDATE `spell_template` SET `script_name` = 'spell_druid_thorns_explosion' WHERE `entry` IN (21972, 46431);
UPDATE `spell_template` SET `script_name` = 'spell_item_dreamwalker_rejuvenation' WHERE `entry` = 28716;
UPDATE `spell_template` SET `script_name` = 'spell_item_dreamwalker_regrowth' WHERE `entry` = 28744;
UPDATE `spell_template` SET `script_name` = 'spell_druid_frenzied_regeneration' WHERE `entry` IN (22842, 22895, 22896);
UPDATE `spell_template` SET `script_name` = 'spell_rogue_eviscerate' WHERE `entry` IN (2098, 6760, 6761, 6762, 8623, 8624, 11299, 11300, 31016);
UPDATE `spell_template` SET `script_name` = 'spell_rogue_surprise_attack' WHERE `entry` = 52511;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_preparation' WHERE `entry` = 14185;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_deadly_throw_poison' WHERE `entry` = 45986;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_vanish' WHERE `entry` IN (1856, 1857, 27617);
UPDATE `spell_template` SET `script_name` = 'spell_rogue_honor_among_thieves' WHERE `entry` IN (52512, 52514);
UPDATE `spell_template` SET `script_name` = 'spell_rogue_clean_escape' WHERE `entry` = 23582;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_blade_flurry' WHERE `entry` = 13877;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_improved_ambush' WHERE `entry` IN (14079, 14080, 14081);
UPDATE `spell_template` SET `script_name` = 'spell_hunter_wyvern_sting' WHERE `entry` = 26180;
UPDATE `spell_template` SET `script_name` = 'spell_hunter_refocus' WHERE `entry` = 24531;
UPDATE `spell_template` SET `script_name` = 'spell_hunter_readiness' WHERE `entry` = 23989;
UPDATE `spell_template` SET `script_name` = 'spell_hunter_counterattack' WHERE `entry` IN (19306, 20909, 20910);
UPDATE `spell_template` SET `script_name` = 'spell_hunter_mongoose_bite' WHERE `entry` IN (1495, 14269, 14270, 14271);
UPDATE `spell_template` SET `script_name` = 'spell_hunter_stinging_nettle_fire_trap' WHERE `entry` IN (13797, 14298, 14299, 14300, 14301, 13812, 14314, 14315);
UPDATE `spell_template` SET `script_name` = 'spell_hunter_improved_mend_pet' WHERE `entry` IN (19572, 19573);
UPDATE `spell_template` SET `script_name` = 'spell_hunter_eyes_of_the_beast' WHERE `entry` = 1002;
UPDATE `spell_template` SET `script_name` = 'spell_paladin_invulnerability_forbearance' WHERE `entry` IN (498, 5573, 642, 1020, 1022, 5599, 10278);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_hammer_of_wrath' WHERE `entry` IN (24239, 24274, 24275);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement_of_command' WHERE `entry` IN (20467, 20963, 20964, 20965, 20966);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement_of_command_dummy' WHERE `entry` IN (20425, 20961, 20962, 20967, 20968);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement_of_the_crusader' WHERE `entry` IN (21183, 20188, 20300, 20301, 20302, 20303);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_holy_shock' WHERE `entry` IN (20473, 20929, 20930);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_holy_strike' WHERE `entry` IN (678, 679, 680, 1866, 2495, 5569, 10332, 10333);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement' WHERE `entry` = 20271;
UPDATE `spell_template` SET `script_name` = 'spell_paladin_conviction_seals' WHERE `entry` IN (20375, 20915, 20918, 20919, 20920);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_sanctified_command' WHERE `entry` IN (45954, 45955);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_eye_for_an_eye' WHERE `entry` IN (9799, 25988);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_improved_lay_on_hands' WHERE `entry` IN (20234, 20235);
UPDATE `spell_template` SET `script_name` = 'spell_item_holy_power' WHERE `entry` = 28789;
UPDATE `spell_template` SET `script_name` = 'spell_paladin_seal_of_righteousness' WHERE `entry` IN (20154, 20287, 20288, 20289, 20290, 20291, 20292, 20293, 21084, 25713, 25715, 25727, 25728, 25729, 25730, 25731, 25732, 25733, 25734, 25735, 25736, 25737, 25738, 25739, 25740, 25741, 25742);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_blessed_strikes' WHERE `entry` IN (51317, 51318, 51319, 51320, 51321);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_righteous_defense' WHERE `entry` IN (51328, 51329, 51330);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement_of_light_wisdom' WHERE `entry` IN (20185, 20344, 20345, 20346, 20186, 20354, 20355);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_flash_of_light' WHERE `entry` IN (19750, 19939, 19940, 19941, 19942, 19943, 51743);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_seal_of_fury_proc' WHERE `entry` IN (20231, 20415, 20416, 20417, 20418);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_illumination' WHERE `entry` IN (20210, 20212, 20213, 20214, 20215);
UPDATE `spell_template` SET `script_name` = 'spell_shaman_thunderhead' WHERE `entry` = 45508;
UPDATE `spell_template` SET `script_name` = 'spell_item_earthshatterer_t3' WHERE `entry` = 18350;
UPDATE `spell_template` SET `script_name` = 'spell_item_earthshatterer_t3_aura' WHERE `entry` = 28820;
UPDATE `spell_template` SET `script_name` = 'spell_item_totemic_power' WHERE `entry` = 28823;
UPDATE `spell_template` SET `script_name` = 'spell_item_lesser_healing_wave_relic' WHERE `entry` = 28849;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_rockbiter_proc' WHERE `entry` IN (20865, 20866, 20867, 20868, 20870, 20871);
UPDATE `spell_template` SET `script_name` = 'spell_shaman_rockbiter_weapon' WHERE `entry` IN (8017, 8018, 8019, 10399, 16314, 16315, 16316);
UPDATE `spell_template` SET `script_name` = 'spell_shaman_flametongue_proc' WHERE `entry` IN (8026, 8028, 8029, 8248, 8253, 10445, 10523, 16343, 16344, 16389);
UPDATE `spell_template` SET `script_name` = 'spell_shaman_lightning_shield' WHERE `entry` IN (324, 325, 905, 945, 8134, 10431, 10432);
UPDATE `spell_template` SET `script_name` = 'spell_item_ten_storms_lightning_shield' WHERE `entry` IN (23551, 23552);
UPDATE `spell_template` SET `script_name` = 'spell_item_mana_surge' WHERE `entry` = 23572;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_elemental_focus' WHERE `entry` = 45541;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_lightning_speed' WHERE `entry` = 45850;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_totemic_recall' WHERE `entry` = 45513;
UPDATE `spell_template` SET `script_name` = 'spell_decoy_place_loot' WHERE `entry` = 25720;
UPDATE `spell_template` SET `script_name` = 'spell_forbidden_capital_restriction' WHERE `entry` = 27433;
UPDATE `spell_template` SET `script_name` = 'spell_nefarian_corrupted_totems' WHERE `entry` = 23424;
UPDATE `spell_template` SET `script_name` = 'spell_loatheb_corrupted_mind' WHERE `entry` = 29201;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_feral_spirit' WHERE `entry` IN (45505, 45514);
UPDATE `spell_template` SET `script_name` = 'spell_shaman_ghost_wolf_speed' WHERE `entry` = 22801;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_calming_river' WHERE `entry` = 47357;
UPDATE `spell_template` SET `script_name` = 'spell_mage_brilliance_aura' WHERE `entry` = 45408;
UPDATE `spell_template` SET `script_name` = 'spell_paladin_improved_devotion_aura' WHERE `entry` = 27850;
UPDATE `spell_template` SET `script_name` = 'spell_druid_glyph_of_the_moon' WHERE `entry` = 53023;
UPDATE `spell_template` SET `script_name` = 'spell_emperor_mutate_bug' WHERE `entry` = 802;
UPDATE `spell_template` SET `script_name` = 'spell_emperor_explode_bug' WHERE `entry` = 804;
UPDATE `spell_template` SET `script_name` = 'spell_shazzrah_gate' WHERE `entry` = 23138;
UPDATE `spell_template` SET `script_name` = 'spell_emerald_dragons_dream_fog' WHERE `entry` = 24781;
UPDATE `spell_template` SET `script_name` = 'spell_aq20_drain_mana' WHERE `entry` IN (25676, 25754);
UPDATE `spell_template` SET `script_name` = 'spell_aq40_drain_mana' WHERE `entry` IN (26457, 26559);
UPDATE `spell_template` SET `script_name` = 'spell_uldaman_awaken_vault_warder' WHERE `entry` = 10258;
UPDATE `spell_template` SET `script_name` = 'spell_sapphiron_life_drain' WHERE `entry` = 28542;
UPDATE `spell_template` SET `script_name` = 'spell_sapphiron_ice_block' WHERE `entry` = 28535;
UPDATE `spell_template` SET `script_name` = 'spell_hateforge_dispel_counterpart' WHERE `entry` IN (56508, 56510, 56512, 56514, 56516);
UPDATE `spell_template` SET `script_name` = 'spell_faerlina_poison_bolt_volley' WHERE `entry` = 28796;
UPDATE `spell_template` SET `script_name` = 'spell_grobbulus_cloud_poison' WHERE `entry` = 28241;
UPDATE `spell_template` SET `script_name` = 'spell_heigan_mana_burn' WHERE `entry` = 29310;
UPDATE `spell_template` SET `script_name` = 'spell_huhuran_poison_bolt_volley' WHERE `entry` = 26052;
UPDATE `spell_template` SET `script_name` = 'spell_noth_curse_of_the_plaguebringer' WHERE `entry` = 29213;
UPDATE `spell_template` SET `script_name` = 'spell_unrelenting_rider_shadow_bolt_volley' WHERE `entry` = 27831;
UPDATE `spell_template` SET `script_name` = 'spell_maexxna_web_spray' WHERE `entry` = 29484;
UPDATE `spell_template` SET `script_name` = 'spell_meteor' WHERE `entry` IN (24340, 26558, 26789, 28884);
UPDATE `spell_template` SET `script_name` = 'spell_arcane_bomb' WHERE `entry` = 51099;
UPDATE `spell_template` SET `script_name` = 'spell_special_split_weapon_damage' WHERE `entry` IN (47350, 51164);
UPDATE `spell_template` SET `script_name` = 'spell_crustaceous_claws' WHERE `entry` = 51233;
UPDATE `spell_template` SET `script_name` = 'spell_special_summon_at_target' WHERE `entry` IN (51289, 51296);
UPDATE `spell_template` SET `script_name` = 'spell_harrowing_nets' WHERE `entry` = 51238;
UPDATE `spell_template` SET `script_name` = 'spell_rift_feedback' WHERE `entry` = 51205;
UPDATE `spell_template` SET `script_name` = 'spell_overflowing_hatred' WHERE `entry` = 51203;
UPDATE `spell_template` SET `script_name` = 'spell_form_rift_elemental' WHERE `entry` = 51199;
UPDATE `spell_template` SET `script_name` = 'spell_ley_line_disturbance' WHERE `entry` = 51185;
UPDATE `spell_template` SET `script_name` = 'spell_lunar_shift' WHERE `entry` = 51086;
UPDATE `spell_template` SET `script_name` = 'spell_flock_of_ravens' WHERE `entry` = 51083;
UPDATE `spell_template` SET `script_name` = 'spell_jewel_of_wild_magics' WHERE `entry` = 51012;
UPDATE `spell_template` SET `script_name` = 'spell_restore_creature_to_life' WHERE `entry` = 51216;
UPDATE `spell_template` SET `script_name` = 'spell_winterax_ritual_suicide' WHERE `entry` = 46436;
UPDATE `spell_template` SET `script_name` = 'spell_burning_blood_visual' WHERE `entry` = 46434;
UPDATE `spell_template` SET `script_name` = 'spell_owl_gaze' WHERE `entry` = 51087;
UPDATE `spell_template` SET `script_name` = 'spell_arcane_overload' WHERE `entry` = 51100;
UPDATE `spell_template` SET `script_name` = 'spell_dust_of_disappearance' WHERE `entry` = 52503;
UPDATE `spell_template` SET `script_name` = 'spell_drazares_embrace' WHERE `entry` = 44053;
UPDATE `spell_template` SET `script_name` = 'spell_spirit_armor' WHERE `entry` IN (45951, 45952, 45953);
UPDATE `spell_template` SET `script_name` = 'spell_inactive_tracker' WHERE `entry` = 44025;
UPDATE `spell_template` SET `script_name` = 'spell_vampirism' WHERE `entry` IN (45420, 45421, 45422, 45423, 45424, 51001);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_shield_specialization' WHERE `entry` IN (20148, 20149, 20150);
UPDATE `spell_template` SET `script_name` = 'spell_druid_primal_fury' WHERE `entry` IN (45719, 45720);
UPDATE `spell_template` SET `script_name` = 'spell_freezing_cold_passive' WHERE `entry` = 51276;
UPDATE `spell_template` SET `script_name` = 'spell_loop_of_infused_renewal' WHERE `entry` = 51022;
UPDATE `spell_template` SET `script_name` = 'spell_adrift_strikes' WHERE `entry` = 51068;
UPDATE `spell_template` SET `script_name` = 'spell_rogue_improved_sap_vanish' WHERE `entry` = 14093;
UPDATE `spell_template` SET `script_name` = 'spell_turtle_taming_quest_credit' WHERE `entry` IN (44000, 44002, 44004, 44006, 44008, 44010, 44012, 44014, 44016, 44018, 44020, 44022, 46090, 46092, 46094, 46700, 46702, 46704);
UPDATE `spell_template` SET `script_name` = 'spell_sayges_dark_fortune' WHERE `entry` IN (23735, 23736, 23737, 23738, 23766, 23767, 23768, 23769);
UPDATE `spell_template` SET `script_name` = 'spell_rajaxx_thundercrash' WHERE `entry` = 25599;
UPDATE `spell_template` SET `script_name` = 'spell_snowball_knockback' WHERE `entry` = 25677;
UPDATE `spell_template` SET `script_name` = 'spell_simone_seductress_chain_lightning' WHERE `entry` = 23206;
UPDATE `spell_template` SET `script_name` = 'spell_thaddius_positive_charge' WHERE `entry` = 28062;
UPDATE `spell_template` SET `script_name` = 'spell_thaddius_negative_charge' WHERE `entry` = 28085;
UPDATE `spell_template` SET `script_name` = 'spell_gluth_decimate' WHERE `entry` = 28375;
UPDATE `spell_template` SET `script_name` = 'spell_grobbulus_mutagen_explosion' WHERE `entry` = 28206;
UPDATE `spell_template` SET `script_name` = 'spell_kelthuzad_void_blast' WHERE `entry` = 27812;
UPDATE `spell_template` SET `script_name` = 'spell_darkmoon_steam_tonk_cannon' WHERE `entry` = 24933;
UPDATE `spell_template` SET `script_name` = 'spell_cannibalize_aura' WHERE `entry` = 20578;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_curse_of_idiocy' WHERE `entry` = 1010;
UPDATE `spell_template` SET `script_name` = 'spell_shaman_mana_tide' WHERE `entry` = 16191;
UPDATE `spell_template` SET `script_name` = 'spell_hunter_frost_trap_aura' WHERE `entry` = 13810;
UPDATE `spell_template` SET `script_name` = 'spell_thaddius_positive_charge_aura' WHERE `entry` = 28059;
UPDATE `spell_template` SET `script_name` = 'spell_thaddius_negative_charge_aura' WHERE `entry` = 28084;
UPDATE `spell_template` SET `script_name` = 'spell_activate_mg_turret' WHERE `entry` = 25026;
UPDATE `spell_template` SET `script_name` = 'spell_flamethrower' WHERE `entry` = 25027;
UPDATE `spell_template` SET `script_name` = 'spell_gargoyle_stoneform' WHERE `entry` = 29153;
UPDATE `spell_template` SET `script_name` = 'spell_shadowmeld' WHERE `entry` = 20580;
UPDATE `spell_template` SET `script_name` = 'spell_stoneform' WHERE `entry` = 20594;
UPDATE `spell_template` SET `script_name` = 'spell_silithyst' WHERE `entry` = 29519;
UPDATE `spell_template` SET `script_name` = 'spell_controlling_steam_tonk' WHERE `entry` = 24937;
UPDATE `spell_template` SET `script_name` = 'spell_haunting_phantoms' WHERE `entry` = 16336;
UPDATE `spell_template` SET `script_name` = 'spell_mutating_injection' WHERE `entry` = 28169;
UPDATE `spell_template` SET `script_name` = 'spell_discombobulate' WHERE `entry` = 4060;
UPDATE `spell_template` SET `script_name` = 'spell_ashbringer' WHERE `entry` = 28282;
UPDATE `spell_template` SET `script_name` = 'spell_battleground_banner_open' WHERE `entry` = 21651;
UPDATE `spell_template` SET `script_name` = 'spell_tanaris_field_sampling' WHERE `entry` IN (11759, 11760, 11761);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_judgement_of_light_wisdom' WHERE `entry` IN (20267, 20341, 20342, 20343);
UPDATE `spell_template` SET `script_name` = 'spell_paladin_reckoning' WHERE `entry` = 20178;
UPDATE `spell_template` SET `script_name` = 'spell_warrior_bloodrage' WHERE `entry` = 2687;
UPDATE `spell_template` SET `script_name` = 'spell_warlock_devour_magic' WHERE `entry` IN (19505, 19731, 19734, 19736);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_inferno' WHERE `entry` IN (1122, 24670);
UPDATE `spell_template` SET `script_name` = 'spell_warlock_summon_felguard' WHERE `entry` = 30146;
UPDATE `spell_template` SET `script_name` = 'spell_target_dummy' WHERE `entry` IN (4071, 4072, 19805);
UPDATE `spell_template` SET `script_name` = 'spell_alterac_shredder' WHERE `entry` IN (21544, 21565);
UPDATE `spell_template` SET `script_name` = 'spell_rockwing_gargoyle' WHERE `entry` = 16381;
UPDATE `spell_template` SET `script_name` = 'spell_chained_essence_of_eranikus' WHERE `entry` = 12766;
UPDATE `spell_template` SET `script_name` = 'spell_release_umis_yeti' WHERE `entry` = 17166;
UPDATE `spell_template` SET `script_name` = 'spell_vanquished_tentacle_of_cthun' WHERE `entry` = 26391;
UPDATE `spell_template` SET `script_name` = 'spell_goblin_jumper_cables' WHERE `entry` = 8342;
UPDATE `spell_template` SET `script_name` = 'spell_goblin_jumper_cables_xl' WHERE `entry` = 22999;
UPDATE `spell_template` SET `script_name` = 'spell_thaddius_magnetic_pull' WHERE `entry` = 28337;
UPDATE `spell_template` SET `script_name` = 'spell_incindis_quaking_stomp' WHERE `entry` = 42036;
UPDATE `spell_template` SET `script_name` = 'spell_maexxna_spider_web' WHERE `entry` = 28434;
UPDATE `spell_template` SET `script_name` = 'spell_kruul_call_from_twisting_nether' WHERE `entry` = 51170;
UPDATE `spell_template` SET `script_name` = 'spell_ubrs_freeze_rookery_egg' WHERE `entry` IN (15748, 16028);
UPDATE `spell_template` SET `script_name` = 'spell_turtle_av_tied_up' WHERE `entry` IN (46432, 46433);
UPDATE `spell_template` SET `script_name` = 'spell_superconducting_magnet' WHERE `entry` = 45872;
UPDATE `spell_template` SET `script_name` = 'spell_baxxil_dummy' WHERE `entry` = 50060;
UPDATE `spell_template` SET `script_name` = 'spell_spell_momentum_passive' WHERE `entry` = 51003;
UPDATE `spell_template` SET `script_name` = 'spell_pawns_advance' WHERE `entry` = 51210;
UPDATE `spell_template` SET `script_name` = 'spell_champion_buff' WHERE `entry` IN (45563, 45564, 45565, 45566, 45567, 45569);
UPDATE `spell_template` SET `script_name` = 'spell_proclaim_champion' WHERE `entry` = 45568;
UPDATE `spell_template` SET `script_name` = 'spell_wisdom_of_the_makaru' WHERE `entry` = 51271;
UPDATE `spell_template` SET `script_name` = 'spell_frostfire' WHERE `entry` = 51280;
UPDATE `spell_template` SET `script_name` = 'spell_mark_of_the_highlord' WHERE `entry` = 51166;

-- ==============================================
-- FILE: spell_template_aura_flags.sql
-- GENERATED: 20260721013813
-- ==============================================
-- SPELL_CUSTOM_AURA_NON_EXCLUSIVE = 65536
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 65536
WHERE `entry` IN (57106, 57107, 56521) AND (`customFlags` & 65536) = 0;

-- SPELL_CUSTOM_AURA_EXCLUSIVE = 131072
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 131072
WHERE `entry` = 48004 AND (`customFlags` & 131072) = 0;

-- SPELL_CUSTOM_MOUNT_SPEED_100 = 262144
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 262144
WHERE `entry` IN (17229, 22717, 22718, 22719, 22720, 22721, 22722, 22723, 22724, 25953, 26054, 26055, 26056)
  AND (`customFlags` & 262144) = 0;

-- SPELL_CUSTOM_IGNORE_RIDING_SKILL_MOUNT_SPEED = 524288
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 524288
WHERE `entry` IN (50061, 50062) AND (`customFlags` & 524288) = 0;

-- SPELL_CUSTOM_TEMPORARY_HEALTH_BONUS = 1048576
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 1048576
WHERE `entry` = 45709 AND (`customFlags` & 1048576) = 0;

-- SPELL_CUSTOM_AURA_STACKS_WITH_EXCLUSIVE = 2097152
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 2097152
WHERE `entry` IN (
    7363,
    10693, 10691, 10668, 10671, 10667, 10670, 10669, 10672, 10692, 10690,
    24382, 25804, 20875, 25722, 25037, 22789, 22790, 6114, 5020, 5021,
    23179, 20007, 20572, 17038, 16329, 25891, 18264, 12022, 22817,
    19506, 20905, 20906, 18262, 24932, 24907, 22888, 15366, 22820,
    17628, 22730, 18141, 18125, 18192, 18191, 25661, 24427, 17528,
    23697, 27664, 27665, 27666, 27669, 27670, 27671
) AND (`customFlags` & 2097152) = 0;

-- SPELL_CUSTOM_AURA_EFFECT0_STACKS_WITH_EXCLUSIVE = 4194304
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 4194304
WHERE `entry` = 17538 AND (`customFlags` & 4194304) = 0;

-- ==============================================
-- FILE: spell_template_weapon_proc_flags.sql
-- GENERATED: 20260721013813
-- ==============================================
-- SPELL_CUSTOM_TRIGGER_WEAPON_PROCS = 32768

-- Shield Bash, Shield Slam
-- NOTE: vanilla only mechanic, patched out in 2.0.1.
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 32768
WHERE `entry` IN (72, 1671, 1672, 8242, 11972, 15655, 23922, 23923, 23924, 23925, 47382, 51219, 52315);

-- Bloodthirst and Execute
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 32768
WHERE `entry` IN (20647, 23881, 23892, 23893, 23894);

-- Judgement of Command and Seal of Command
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 32768
WHERE `entry` IN (20424, 20467, 20963, 20964, 20965, 20966);

-- Judgement of Righteousness
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 32768
WHERE `entry` IN (20187, 20280, 20281, 20282, 20283, 20284, 20285, 20286);

-- Stormstrike
UPDATE `spell_template`
SET `customFlags` = `customFlags` + 32768
WHERE `entry` IN (17364, 45521);

