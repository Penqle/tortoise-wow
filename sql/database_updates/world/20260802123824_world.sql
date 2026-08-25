-- ==============================================
-- FILE: creature_spells_toa.sql
-- GENERATED: 20260802123824
-- ==============================================
INSERT INTO `creature_spells`
(
    `entry`,
    `name`,
    `spellId_1`,
    `probability_1`,
    `castTarget_1`,
    `targetParam1_1`,
    `targetParam2_1`,
    `castFlags_1`,
    `delayInitialMin_1`,
    `delayInitialMax_1`,
    `delayRepeatMin_1`,
    `delayRepeatMax_1`,
    `scriptId_1`,
    `spellId_2`,
    `probability_2`,
    `castTarget_2`,
    `targetParam1_2`,
    `targetParam2_2`,
    `castFlags_2`,
    `delayInitialMin_2`,
    `delayInitialMax_2`,
    `delayRepeatMin_2`,
    `delayRepeatMax_2`,
    `scriptId_2`,
    `spellId_3`,
    `probability_3`,
    `castTarget_3`,
    `targetParam1_3`,
    `targetParam2_3`,
    `castFlags_3`,
    `delayInitialMin_3`,
    `delayInitialMax_3`,
    `delayRepeatMin_3`,
    `delayRepeatMax_3`,
    `scriptId_3`,
    `spellId_4`,
    `probability_4`,
    `castTarget_4`,
    `targetParam1_4`,
    `targetParam2_4`,
    `castFlags_4`,
    `delayInitialMin_4`,
    `delayInitialMax_4`,
    `delayRepeatMin_4`,
    `delayRepeatMax_4`,
    `scriptId_4`,
    `spellId_5`,
    `probability_5`,
    `castTarget_5`,
    `targetParam1_5`,
    `targetParam2_5`,
    `castFlags_5`,
    `delayInitialMin_5`,
    `delayInitialMax_5`,
    `delayRepeatMin_5`,
    `delayRepeatMax_5`,
    `scriptId_5`,
    `spellId_6`,
    `probability_6`,
    `castTarget_6`,
    `targetParam1_6`,
    `targetParam2_6`,
    `castFlags_6`,
    `delayInitialMin_6`,
    `delayInitialMax_6`,
    `delayRepeatMin_6`,
    `delayRepeatMax_6`,
    `scriptId_6`,
    `spellId_7`,
    `probability_7`,
    `castTarget_7`,
    `targetParam1_7`,
    `targetParam2_7`,
    `castFlags_7`,
    `delayInitialMin_7`,
    `delayInitialMax_7`,
    `delayRepeatMin_7`,
    `delayRepeatMax_7`,
    `scriptId_7`,
    `spellId_8`,
    `probability_8`,
    `castTarget_8`,
    `targetParam1_8`,
    `targetParam2_8`,
    `castFlags_8`,
    `delayInitialMin_8`,
    `delayInitialMax_8`,
    `delayRepeatMin_8`,
    `delayRepeatMax_8`,
    `scriptId_8`
)
VALUES
(62633, 'Lesser Arcane Elemental', 21073, 100, 0, 0, 0, 0, 3, 5, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_toa.sql
-- GENERATED: 20260802123824
-- ==============================================
UPDATE `creature_template`
SET `scale` = 0.6,
    `dmg_min` = 24.2,
    `dmg_max` = 26.136,
    `attack_power` = 34,
    `base_attack_time` = 2000,
    `ranged_attack_time` = 2000,
    `unit_class` = 2,
    `unit_flags` = 32768,
    `ranged_dmg_min` = 11.797632,
    `ranged_dmg_max` = 16.221743,
    `ranged_attack_power` = 28,
    `spell_list_id` = `entry`
WHERE `entry` = 62633;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 12.729635,
    `dmg_max` = 14.851181,
    `attack_power` = 46,
    `base_attack_time` = 2000,
    `ranged_attack_time` = 2000,
    `unit_class` = 1,
    `unit_flags` = 33280,
    `ranged_dmg_min` = 16.126387,
    `ranged_dmg_max` = 22.173782,
    `ranged_attack_power` = 36
WHERE `entry` = 62634;


-- ==============================================
-- FILE: creature_toa.sql
-- GENERATED: 20260802123824
-- ==============================================
INSERT INTO `creature`
(
    `guid`,
    `id`,
    `id2`,
    `id3`,
    `id4`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `wander_distance`,
    `health_percent`,
    `mana_percent`,
    `movement_type`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(2590700, 62634, 0, 0, 0, 0, -9556.950195, -717.487976, 64.739403, 3.8810501098632812, 300, 300, 0, 100, 100, 0, 0, 0),
(2590701, 62633, 0, 0, 0, 0, -9499.864258, -698.869751, 64.561371, 1.7173157930374146, 300, 300, 5, 100, 100, 1, 0, 0),
(2590702, 62633, 0, 0, 0, 0, -9486.751953, -734.287781, 61.317631, 2.719937801361084, 300, 300, 5, 100, 100, 1, 0, 0),
(2590703, 62633, 0, 0, 0, 0, -9522.823242, -752.866516, 60.654861, -0.523819625377655, 300, 300, 5, 100, 100, 1, 0, 0),
(2590704, 62633, 0, 0, 0, 0, -9530.742188, -781.113647, 64.528419, 0.029875995591282845, 300, 300, 5, 100, 100, 1, 0, 0),
(2590705, 62633, 0, 0, 0, 0, -9519.509766, -633.258728, 65.433121, -2.556457281112671, 300, 300, 5, 100, 100, 1, 0, 0),
(2590706, 62633, 0, 0, 0, 0, -9564.061523, -662.231201, 61.337891, 1.6745120286941528, 300, 300, 5, 100, 100, 1, 0, 0),
(2590707, 62633, 0, 0, 0, 0, -9542.24707, -603.098633, 61.025398, -1.6768988370895386, 300, 300, 5, 100, 100, 1, 0, 0),
(2590708, 62633, 0, 0, 0, 0, -9485.015625, -635.721863, 65.665771, -1.065744400024414, 300, 300, 5, 100, 100, 1, 0, 0),
(2590709, 62633, 0, 0, 0, 0, -9436.647461, -691.74469, 64.787766, -1.0665470361709595, 300, 300, 5, 100, 100, 1, 0, 0),
(2590710, 62633, 0, 0, 0, 0, -9460.055664, -788.754272, 61.822456, 1.8169147968292236, 300, 300, 5, 100, 100, 1, 0, 0),
(2590711, 62633, 0, 0, 0, 0, -9584.816406, -783.248413, 42.607689, -0.5659314393997192, 300, 300, 5, 100, 100, 1, 0, 0),
(2590712, 62633, 0, 0, 0, 0, -9614.47168, -694.72522, 50.223724, -3.0654759407043457, 300, 300, 5, 100, 100, 1, 0, 0),
(2590713, 62633, 0, 0, 0, 0, -9442.537109, -643.603516, 66.000717, 2.557943344116211, 300, 300, 5, 100, 100, 1, 0, 0);

