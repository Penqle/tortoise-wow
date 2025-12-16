-- Change mulgore wyvern hatchling quests (https://database.turtle-wow.org/?quest=40535) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40536, `NextQuestId` = 0 where `entry` = 40535;
update `quest_template` set `NextQuestInChain` = 40537, `NextQuestId` = 0 where `entry` = 40536;

-- Change mulgore centaur quests (https://database.turtle-wow.org/?quest=40363) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40364, `NextQuestId` = 0 where `entry` = 40363;
update `quest_template` set `NextQuestInChain` = 40365, `NextQuestId` = 0 where `entry` = 40364;
update `quest_template` set `NextQuestInChain` = 40366, `NextQuestId` = 0 where `entry` = 40365;

-- Change mulgore mysterious leaf quests (https://database.turtle-wow.org/?quest=40583) into proper quest chain
update `quest_template` set `NextQuestInChain` = 40584, `NextQuestId` = 0 where `entry` = 40583;
update `quest_template` set `NextQuestInChain` = 40585, `NextQuestId` = 0 where `entry` = 40584;
update `quest_template` set `NextQuestInChain` = 40586, `NextQuestId` = 0 where `entry` = 40585;
update `quest_template` set `NextQuestInChain` = 40587, `NextQuestId` = 0 where `entry` = 40586;
update `quest_template` set `NextQuestInChain` = 40588, `NextQuestId` = 0 where `entry` = 40587;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2910
UPDATE `item_template` SET `item_level` = 68 WHERE `entry` = 83461;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2906
DELETE FROM `creature` WHERE `id` = 4158;
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21548, 4158, 0, 0, 0, 1, -6041.31, -4138.35, -58.625, 6.28054, 300, 300, 30, 100, 0, 1, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21547, 4158, 0, 0, 0, 1, -6176.85, -3557.04, -58.625, 4.43404, 300, 300, 30, 100, 0, 1, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (21546, 4158, 0, 0, 0, 1, -6602.18, -3865.56, -58.7499, -2.61482, 300, 300, 0, 100, 0, 0, 0, 0);

-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32583, 4158, 0, 0, 0, 1, -6040.3, -4084.69, -58.625, 2.36436, 300, 300, 30, 100, 0, 1, 0, 0);
-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32584, 4158, 0, 0, 0, 1, -6290.34, -3564.31, -58.625, 0.90427, 300, 300, 30, 100, 0, 1, 0, 0);
-- INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (32585, 4158, 0, 0, 0, 1, -6582.02, -3923.57, -58.625, 5.82247, 300, 300, 0, 100, 0, 0, 0, 0);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2901
-- Custom expedition mobs have a massive stealth touch radius #2901

UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60893;
UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60896;
UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60894;
UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60895;
UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60898;
UPDATE `creature_template` SET `detection_range` = 18 WHERE `entry` = 60898;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2899
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 10 WHERE `id` in (2010893, 2010894, 2010895);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2789
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 40710;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 40711;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 40709;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2724
UPDATE `creature_display_info_addon` SET `combat_reach` = 1.4375, `bounding_radius` = 1.15 WHERE `display_id` in (18177, 18008, 18005, 18007, 18007, 18006, 18008, 18004, 18004, 18244, 18244, 18493, 18773);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2640
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 2673;
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 2674;
UPDATE `creature_template` SET `loot_id` = 0 WHERE `entry` = 12426;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2912
-- quests on tel'abim doesnt give extra gold at max level #2912

UPDATE `quest_template` SET `Title` = 'The Ape Bounty', `RewXP` = 5250, `RewMoneyMaxLevel` = 31500 WHERE `entry` = 40724;
UPDATE `quest_template` SET `Title` = 'The Spitefin Bounty', `RewXP` = 5000, `RewMoneyMaxLevel` = 30000 WHERE `entry` = 40725;
UPDATE `quest_template` SET `Title` = 'The Backup Seal-Valve', `RewXP` = 2500, `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40726;
UPDATE `quest_template` SET `Title` = 'Derelict Supplies', `RewXP` = 5100, `RewMoneyMaxLevel` = 30600 WHERE `entry` = 40727;
UPDATE `quest_template` SET `Title` = 'Highvale Rise', `RewXP` = 5750, `RewMoneyMaxLevel` = 34500 WHERE `entry` = 40728;
UPDATE `quest_template` SET `Title` = 'Collecting Specimens', `RewXP` = 4800, `RewMoneyMaxLevel` = 28800 WHERE `entry` = 40729;
UPDATE `quest_template` SET `Title` = 'Early Testing', `RewXP` = 1850, `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40730;
UPDATE `quest_template` SET `Title` = 'A Costly Favor', `RewXP` = 1050, `RewMoneyMaxLevel` = 6300 WHERE `entry` = 40731;
UPDATE `quest_template` SET `Title` = 'Two Favors For The Price of One', `RewXP` = 5100, `RewMoneyMaxLevel` = 30600 WHERE `entry` = 40732;
UPDATE `quest_template` SET `Title` = 'Gargantuan Information!', `RewXP` = 500, `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40733;
UPDATE `quest_template` SET `Title` = 'A Must Have Discovery', `RewXP` = 5550, `RewMoneyMaxLevel` = 33300 WHERE `entry` = 40734;
UPDATE `quest_template` SET `Title` = 'The Micro Filter Tazzo-Scope', `RewXP` = 3550, `RewMoneyMaxLevel` = 21300 WHERE `entry` = 40735;
UPDATE `quest_template` SET `Title` = 'Gargantuan Studies', `RewXP` = 2550, `RewMoneyMaxLevel` = 15300 WHERE `entry` = 40736;
UPDATE `quest_template` SET `Title` = 'The Final Test', `RewXP` = 2150, `RewMoneyMaxLevel` = 12900 WHERE `entry` = 40737;
UPDATE `quest_template` SET `Title` = 'News for Danonzo!', `RewXP` = 2150, `RewMoneyMaxLevel` = 12900 WHERE `entry` = 40738;
UPDATE `quest_template` SET `Title` = 'The Tel\'abim Banana Transmutation', `RewXP` = 0, `RewMoneyMaxLevel` = 0 WHERE `entry` = 40739;
UPDATE `quest_template` SET `Title` = 'Tel\'abim Transmutations!', `RewXP` = 0, `RewMoneyMaxLevel` = 0 WHERE `entry` = 40740;
UPDATE `quest_template` SET `Title` = 'Shipments on Time', `RewXP` = 5000, `RewMoneyMaxLevel` = 30000 WHERE `entry` = 40741;
UPDATE `quest_template` SET `Title` = 'The Work Must Continue', `RewXP` = 5000, `RewMoneyMaxLevel` = 30000 WHERE `entry` = 40742;
UPDATE `quest_template` SET `Title` = 'Translating The Unknown', `RewXP` = 1875, `RewMoneyMaxLevel` = 11250 WHERE `entry` = 40749;
UPDATE `quest_template` SET `Title` = 'An Exile\'s Regret', `RewXP` = 1375, `RewMoneyMaxLevel` = 8250 WHERE `entry` = 40750;
UPDATE `quest_template` SET `Title` = 'Danonzo\'s Tel\'Abim Surprise', `RewXP` = 3500, `RewMoneyMaxLevel` = 21000 WHERE `entry` = 40752;
UPDATE `quest_template` SET `Title` = 'Danonzo\'s Tel\'Abim Delight', `RewXP` = 3500, `RewMoneyMaxLevel` = 21000 WHERE `entry` = 40753;
UPDATE `quest_template` SET `Title` = 'Danonzo\'s Tel\'Abim Medley', `RewXP` = 3500, `RewMoneyMaxLevel` = 21000 WHERE `entry` = 40754;
UPDATE `quest_template` SET `Title` = 'Operation Screwfuse 1000', `RewXP` = 3500, `RewMoneyMaxLevel` = 21000 WHERE `entry` = 40755;
UPDATE `quest_template` SET `Title` = 'Operation FIX Screwfuse 1000', `RewXP` = 300, `RewMoneyMaxLevel` = 1800 WHERE `entry` = 40756;
UPDATE `quest_template` SET `Title` = 'Operation Help Jabbey 2', `RewXP` = 5450, `RewMoneyMaxLevel` = 32700 WHERE `entry` = 40758;
UPDATE `quest_template` SET `Title` = 'Operation Return to Screwfuse', `RewXP` = 450, `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40759;
UPDATE `quest_template` SET `Title` = 'Operation Final Repairs', `RewXP` = 1250, `RewMoneyMaxLevel` = 7500 WHERE `entry` = 40760;
UPDATE `quest_template` SET `Title` = 'Secrets of the Dark Iron Desecrator', `RewXP` = 650, `RewMoneyMaxLevel` = 3900 WHERE `entry` = 40761;
UPDATE `quest_template` SET `Title` = 'The Dark Iron Desecrator', `RewXP` = 500, `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40762;
UPDATE `quest_template` SET `Title` = 'To heal a Soul', `RewXP` = 5875, `RewMoneyMaxLevel` = 35250 WHERE `entry` = 40751;
UPDATE `quest_template` SET `Title` = 'King Morogo Thunderfoot!', `RewXP` = 6500, `RewMoneyMaxLevel` = 39000 WHERE `entry` = 40785;
UPDATE `quest_template` SET `Title` = 'An Opportunity to Dig Deep', `RewXP` = 4875, `RewMoneyMaxLevel` = 29250 WHERE `entry` = 40763;
UPDATE `quest_template` SET `Title` = 'Azotha Gold', `RewXP` = 4500, `RewMoneyMaxLevel` = 27000 WHERE `entry` = 40764;
UPDATE `quest_template` SET `Title` = 'Finding Bixxle!', `RewXP` = 650, `RewMoneyMaxLevel` = 3900 WHERE `entry` = 40765;
UPDATE `quest_template` SET `Title` = 'A Report From Bixxle', `RewXP` = 1400, `RewMoneyMaxLevel` = 8400 WHERE `entry` = 40766;
UPDATE `quest_template` SET `Title` = 'Final Flight of the Venomflayer', `RewXP` = 5200, `RewMoneyMaxLevel` = 31200 WHERE `entry` = 40767;
UPDATE `quest_template` SET `Title` = 'Intercepting Wavecrest', `RewXP` = 5400, `RewMoneyMaxLevel` = 32400 WHERE `entry` = 40768;
UPDATE `quest_template` SET `Title` = 'Chillwind Armor', `RewXP` = 5250, `RewMoneyMaxLevel` = 31500 WHERE `entry` = 40769;
UPDATE `quest_template` SET `Title` = 'Murloc-Monkey Wars', `RewXP` = 5850, `RewMoneyMaxLevel` = 35100 WHERE `entry` = 40770;
UPDATE `quest_template` SET `Title` = 'The Missing Friend!', `RewXP` = 5850, `RewMoneyMaxLevel` = 35100 WHERE `entry` = 40771;
