UPDATE `map_template` SET `script_name` = 'instance_dragonmaw_retreat' WHERE `entry` = 816;

UPDATE `creature_template` SET `script_name` = 'boss_searistrasz' WHERE `entry` = 62072;
UPDATE `creature_template` SET `script_name` = 'boss_zuluhed_the_whacked' WHERE `entry` = 62037;
UPDATE `creature_template` SET `script_name` = 'boss_web_master_torkon' WHERE `entry` = 62067;
UPDATE `creature_template` SET `script_name` = 'boss_gowlfang' WHERE `entry` = 62057;
UPDATE `creature_template` SET `script_name` = 'boss_bogpaw_truthsay' WHERE `entry` = 62056;
UPDATE `creature_template` SET `script_name` = 'boss_halgan_redbrand' WHERE `entry` = 62069;

DELETE FROM `creature_spells` WHERE `entry` IN (62056, 62066, 62068, 62069, 62070, 62071, 62074, 62038);
INSERT INTO `creature_spells`
    (`entry`, `name`,
     `spellId_1`, `probability_1`, `castTarget_1`, `targetParam1_1`, `targetParam2_1`, `castFlags_1`, `delayInitialMin_1`, `delayInitialMax_1`, `delayRepeatMin_1`, `delayRepeatMax_1`,
     `spellId_2`, `probability_2`, `castTarget_2`, `targetParam1_2`, `targetParam2_2`, `castFlags_2`, `delayInitialMin_2`, `delayInitialMax_2`, `delayRepeatMin_2`, `delayRepeatMax_2`,
     `spellId_3`, `probability_3`, `castTarget_3`, `targetParam1_3`, `targetParam2_3`, `castFlags_3`, `delayInitialMin_3`, `delayInitialMax_3`, `delayRepeatMin_3`, `delayRepeatMax_3`,
     `spellId_4`, `probability_4`, `castTarget_4`, `targetParam1_4`, `targetParam2_4`, `castFlags_4`, `delayInitialMin_4`, `delayInitialMax_4`, `delayRepeatMin_4`, `delayRepeatMax_4`,
     `spellId_5`, `probability_5`, `castTarget_5`, `targetParam1_5`, `targetParam2_5`, `castFlags_5`, `delayInitialMin_5`, `delayInitialMax_5`, `delayRepeatMin_5`, `delayRepeatMax_5`)
VALUES
    (62066, 'Dragonmaw Retreat - Cavernweb Broodmother',
     13884, 100, 4, 0, 0, 32, 0, 1, 14, 17,
     22595, 100, 4, 0, 0, 0, 3, 4, 8, 10,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0),
    (62074, 'Dragonmaw Retreat - Cavernweb Creeper',
     7367, 100, 1, 0, 0, 32, 2, 3, 12, 15,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0),
    (62071, 'Dragonmaw Retreat - Garlok Flamekeeper',
     18958, 100, 4, 0, 0, 32, 1, 2, 10, 12,
     10452, 100, 4, 0, 0, 0, 3, 5, 18, 22,
     6725, 100, 4, 0, 0, 0, 6, 8, 24, 30,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0),
    (62068, 'Dragonmaw Retreat - Slagfist Destroyer',
     6864, 100, 6, 0, 0, 32, 1, 2, 10, 14,
     12734, 100, 1, 0, 0, 64, 2, 4, 22, 26,
     3574, 100, 6, 0, 0, 32, 3, 5, 12, 16,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0),
    (62070, 'Dragonmaw Retreat - Overlord Blackheart',
     13444, 100, 1, 0, 0, 64, 1, 2, 14, 18,
     15588, 100, 1, 0, 0, 64, 2, 4, 12, 15,
     16095, 100, 4, 0, 0, 32, 13, 15, 10, 12,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0,
     0, 100, 1, 0, 0, 0, 0, 0, 0, 0),
    (62038, 'Dragonmaw Retreat - Elder Hollowblood',
     15038, 100, 6, 0, 0, 0, 2, 3, 11, 14,
     15786, 100, 6, 0, 0, 0, 6, 7, 28, 35,
     930, 100, 4, 0, 0, 0, 8, 9, 14, 18,
     8264, 100, 6, 0, 0, 0, 11, 12, 24, 30,
     6041, 100, 4, 0, 0, 0, 13, 15, 7, 10);

UPDATE `creature_template` SET `spell_list_id` = `entry` WHERE `entry` IN (62066, 62068, 62070, 62071, 62074, 62038);
UPDATE `creature_template` SET `spell_list_id` = 0 WHERE `entry` IN (62056, 62057, 62069, 62067);
