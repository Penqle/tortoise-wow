-- Makes Blood Talon Bind on Equip
update item_template set bonding = 2 where entry = 12795; -- Blood Talon
-- Remove BoP Gear Prof Req
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14152; -- Robe of the Archmage

-- Shovel stuff.

UPDATE `quest_template` SET `OfferRewardText` = 'What do you have there, $C?$B$BOh, where did you find this?$B$BTThis was the shovel my father had given me back when we worked the farmstead years ago. It served me well, and reminds me of him.$B$BMemories of a better time.$B$B<Sven stares at the shovel and hands it back to you.>$B$BIt was a nice gesture of you to bring me this, $N, but I have no use for it anymore.$B$BDo with it what you will.' WHERE `entry` = 70057;

UPDATE `creature_template` SET `npc_flags` = 2 WHERE `entry` = 60821;

-- Fix stupid HC drake:

UPDATE `creature_template` SET `display_id1` = 18286 WHERE `entry` = 80155;

-- Restored Uldum Pedestal original GUID.

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (17230, 142343, 1, -9619.27, -2815.05, 8.21132, -3.13287, 0, 0, 0.99999, -0.004363, 2, 2, 100, 1, 0, 0);

-- Spirit to Spellpower on T2.5 Sets
-- Hunter
update item_template set stat_value3 = 16, stat_type3 = 7, stat_value4 = 0, spellid_1 = 9416 where entry = 21365; -- Striker's Footguards
update item_template set stat_value3 = 22, stat_type3 = 7, stat_value4 = 0, spellid_2 = 14254 where entry = 21368; -- Striker's Leggings
update item_template set stat_value3 = 26, stat_type3 = 7, stat_value4 = 0, spellid_2 = 14248 where entry = 21366; -- Striker's Diadem
update item_template set stat_value3 = 24, stat_type3 = 7, stat_value4 = 0, spellid_1 = 9415, spellid_2 = 0 where entry = 21367; -- Striker's Pauldrons
update item_template set stat_value3 = 26, stat_type3 = 7, stat_value4 = 0, spellid_2 = 14799 where entry = 21370; -- Striker's Hauberk
-- Warlock
update item_template set stat_value2 = 20, stat_type2 = 7, stat_value3 = 0, spellid_1 = 13881 where entry = 21338; -- Doomcaller's Footwraps
update item_template set stat_value2 = 28, stat_type2 = 7, stat_value3 = 0, spellid_1 = 18054 where entry = 21336; -- Doomcaller's Trousers
update item_template set stat_value2 = 27, stat_type2 = 7, stat_value3 = 0, spellid_1 = 14055 where entry = 21337; -- Doomcaller's Circlet
update item_template set stat_value2 = 20, stat_type2 = 7, stat_value3 = 0, spellid_1 = 13881 where entry = 21335; -- Doomcaller's Mantle
update item_template set stat_value2 = 23, stat_type2 = 7, stat_value3 = 0, spellid_2 = 18382 where entry = 21334; -- Doomcaller's Robes
-- Shaman
update item_template set stat_value4 = 14, stat_type4 = 7, stat_value5 = 0, spellid_3 = 21363 where entry = 21373; -- Stormcaller's Footguards
update item_template set stat_value4 = 22, stat_type4 = 7, stat_value5 = 0, spellid_3 = 21628 where entry = 21375; -- Stormcaller's Leggings
update item_template set stat_value4 = 22, stat_type4 = 7, stat_value5 = 0, spellid_1 = 18050, spellid_3 = 23727, spelltrigger_3 = 1 where entry = 21372; -- Stormcaller's Diadem
update item_template set stat_value4 = 15, stat_type4 = 7, stat_value5 = 0, spellid_2 = 21618 where entry = 21376; -- Stormcaller's Pauldrons
update item_template set stat_value4 = 24, stat_type4 = 7, stat_value5 = 0, spellid_4 = 23727, spelltrigger_4 = 1 where entry = 21374; -- Stormcaller's Hauberk