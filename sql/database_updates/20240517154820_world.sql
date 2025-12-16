-- Warsong Gulch
-- honored
update item_template set item_level = 68, required_level = 60, stat_value1 = 16, stat_value2 = 12 where entry = 19538; -- Sentinel's Medallion
update item_template set item_level = 68, required_level = 60, stat_value1 = 16, stat_value2 = 12 where entry = 19534; -- Scout's Medallion
update item_template set item_level = 68, required_level = 60, stat_value2 = 12, stat_value3 = 10 where entry = 19514; -- Protector's Band
update item_template set item_level = 68, required_level = 60, stat_value2 = 12, stat_value3 = 10 where entry = 19510; -- Legionnaire's Band
update item_template set item_level = 68, required_level = 60, stat_value1 = 9, spellid_1 = 9345 where entry = 19522; -- Lorekeeper's Ring
update item_template set item_level = 68, required_level = 60, stat_value1 = 9, spellid_1 = 9345 where entry = 19518; -- Advisor's Ring
update item_template set armor = 50, item_level = 68, required_level = 60, stat_value1 = 12, spellid_1 = 9316 where entry = 19530; -- Caretaker's Cape
update item_template set armor = 50, item_level = 68, required_level = 60, stat_value1 = 12, spellid_1 = 9316 where entry = 19526; -- Battle Healer's Cloak
-- revered
update item_template set item_level = 71, required_level = 60, dmg_min1 = 89, dmg_max1 = 165, stat_value1 = 14, stat_value2 = 7 where entry = 19550; -- Legionnaire's Sword
update item_template set item_level = 71, required_level = 60, dmg_min1 = 89, dmg_max1 = 165, stat_value1 = 14, stat_value2 = 7 where entry = 19554; -- Protector's Sword
update item_template set item_level = 71, required_level = 60, dmg_min1 = 59, dmg_max1 = 104, stat_value1 = 14, stat_value2 = 7 where entry = 19546; -- Sentinel's Blade
update item_template set item_level = 71, required_level = 60, dmg_min1 = 59, dmg_max1 = 104, stat_value1 = 14, stat_value2 = 7 where entry = 19542; -- Scout's Blade
update item_template set item_level = 71, required_level = 60, dmg_min1 = 62, dmg_max1 = 114, stat_value1 = 11, stat_value2 = 5 where entry = 19562; -- Outrunner's Bow
update item_template set item_level = 71, required_level = 60, dmg_min1 = 62, dmg_max1 = 114, stat_value1 = 11, stat_value2 = 5 where entry = 19558; -- Outrider's Bow
update item_template set item_level = 71, required_level = 60, spellid_1 = 45530, spellid_2 = 17367, spelltrigger_2 = 1, stat_value2 = 10 where entry = 19570; -- Lorekeeper's Staff
update item_template set item_level = 71, required_level = 60, spellid_1 = 45530, spellid_2 = 17367, spelltrigger_2 = 1, stat_value2 = 10 where entry = 19566; -- Advisor's Gnarled Staff
-- exalted
-- bracers
update item_template set armor = 351, item_level = 71, stat_value2 = 11, stat_value3 = 13 where entry = 19578; -- Berserker Bracers
update item_template set armor = 198, item_level = 71, stat_value1 = 9, stat_value2 = 8, stat_value3 = 11, stat_type2 = 3 where entry = 19582; -- Windtalker's Wristguards
update item_template set armor = 103, item_level = 71, stat_value3 = 11, stat_value2 = 13 where entry = 19587; -- Forest Stalker's Bracers
update item_template set armor = 47, item_level = 71, stat_value3 = 0, stat_value2 = 14, stat_value1 = 9, stat_type2 = 7 where entry = 19595; -- Dryad's Wrist Bindings
-- legs
update item_template set armor = 396, item_level = 71, stat_value2 = 23 where entry = 22748; -- Sentinel's Chain Leggings
update item_template set armor = 396, item_level = 71, stat_value2 = 23 where entry = 22673; -- Outrider's Chain Leggings

update item_template set armor = 396, item_level = 71, stat_value2 = 23, stat_type1 = 5, stat_type2 = 7, stat_value3 = 0, spellid_1 = 18384, spellid_2 = 14055, spelltrigger_2 = 1 where entry = 22676; -- Outrider's Mail Leggings
update item_template set armor = 703, item_level = 71, stat_value2 = 24, stat_value1 = 24, spellid_3 = 14054 where entry = 22753; -- Sentinel's Lamellar Legguards

update item_template set armor = 257, item_level = 71, stat_value2 = 30, stat_value1 = 31 where entry = 22749; -- Sentinel's Leather Pants
update item_template set armor = 257, item_level = 71, stat_value2 = 30, stat_value1 = 31 where entry = 22740; -- Outrider's Leather Pants

update item_template set armor = 703, item_level = 71, stat_value2 = 30, stat_value1 = 31 where entry = 22672; -- Sentinel's Plate Legguards
update item_template set armor = 703, item_level = 71, stat_value2 = 30, stat_value1 = 31 where entry = 22651; -- Outrider's Plate Legguards	

update item_template set armor = 196, item_level = 71, stat_value2 = 14, spellid_1 = 18384, spellid_2 = 14055, spelltrigger_2 = 1 where entry = 22752; -- Sentinel's Silk Leggings
update item_template set armor = 196, item_level = 71, stat_value2 = 14, spellid_1 = 18384, spellid_2 = 14055, spelltrigger_2 = 1 where entry = 22747; -- Outrider's Silk Leggings

update item_template set armor = 257, item_level = 71, stat_value1 = 18, stat_value2 = 22, stat_type1 = 5, stat_type2 = 7, stat_value3 = 0, stat_value4 = 0, stat_value5 = 0, spellid_1 = 18384, spellid_2 = 14055, spelltrigger_2 = 1 where entry = 22750; -- Sentinel's Lizardhide Pants
update item_template set armor = 257, item_level = 71, stat_value1 = 18, stat_value2 = 22, stat_type1 = 5, stat_type2 = 7, stat_value3 = 0, stat_value4 = 0, stat_value5 = 0, spellid_1 = 18384, spellid_2 = 14055, spelltrigger_2 = 1 where entry = 22741; -- Outrider's Lizardhide Pants

-- Arathi Basin
-- friendly
update item_template set item_level = 66, required_level = 60, stat_value1 = 6, stat_type1 = 7 where entry = 20071; -- Talisman of Arathor
update item_template set item_level = 66, required_level = 60, stat_value1 = 6, stat_type1 = 7 where entry = 20072; -- Defiler's Talisman
-- honored
update item_template set armor = 224, item_level = 68, required_level = 60, spellid_2 = 45530, spellid_3 = 15808, spelltrigger_3 = 1 where entry = 20043; -- Highlander's Chain Girdle
update item_template set armor = 224, item_level = 68, required_level = 60, spellid_2 = 45530, spellid_3 = 15808, spelltrigger_3 = 1 where entry = 20150; -- Defiler's Chain Girdle
update item_template set armor = 156, item_level = 68, required_level = 60, spellid_2 = 45530, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20047; -- Highlander's Cloth Girdle
update item_template set armor = 156, item_level = 68, required_level = 60, spellid_2 = 45530, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20163; -- Defiler's Cloth Girdle
update item_template set armor = 414, item_level = 68, required_level = 60, stat_value1 = 16, stat_value2 = 8, stat_value3 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1 where entry = 20042; -- Highlander's Lamellar Girdle
update item_template set armor = 414, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20195; -- Defiler's Mail Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 9, spellid_2 = 45530, spellid_3 = 15808, spelltrigger_3 = 1 where entry = 20045; -- Highlander's Leather Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 9, spellid_2 = 45530, spellid_3 = 15808, spelltrigger_3 = 1 where entry = 20190; -- Defiler's Leather Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20046; -- Highlander's Lizardhide Girdle
update item_template set armor = 170, item_level = 68, required_level = 60, stat_value1 = 12, stat_value2 = 6, stat_value3 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1, spellid_3 = 9346, spelltrigger_3 = 1 where entry = 20171; -- Defiler's Lizardhide Girdle
update item_template set armor = 414, item_level = 68, required_level = 60, stat_value2 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1 where entry = 20041; -- Highlander's Plate Girdle
update item_template set armor = 414, item_level = 68, required_level = 60, stat_value2 = 12, spellid_2 = 45530, spellid_1 = 7597, spelltrigger_2 = 1 where entry = 20204; -- Defiler's Plate Girdle
-- Revered
update item_template set armor = 285, item_level = 71, required_level = 60, stat_value2 = 16, stat_value1 = 17, stat_value3 = 10, spellid_1 = 45530, spellid_2 = 23990, spelltrigger_2 = 1 where entry = 20050; -- Highlander's Chain Greaves
update item_template set armor = 285, item_level = 71, required_level = 60, stat_value2 = 16, stat_value1 = 17, stat_value3 = 10, spellid_1 = 45530, spellid_2 = 23990, spelltrigger_2 = 1 where entry = 20154; -- Defiler's Chain Greaves
update item_template set armor = 169, item_level = 71, required_level = 60, stat_value1 = 6, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1 where entry = 20054; -- Highlander's Cloth Boots
update item_template set armor = 169, item_level = 71, required_level = 60, stat_value1 = 6, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1 where entry = 20159; -- Defiler's Cloth Boots
update item_template set armor = 511, item_level = 71, required_level = 60, stat_value1 = 15, stat_value2 = 10, stat_value3 = 14, stat_value4 = 10, spellid_1 = 45530, spellid_2 = 23990, spelltrigger_2 = 1 where entry = 20049; -- Highlander's Lamellar Greaves
update item_template set armor = 285, item_level = 71, required_level = 60, stat_value1 = 16, stat_value2 = 4, stat_value3 = 0, stat_type2 = 5, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1, spellid_4 = 21362, spelltrigger_4 = 1 where entry = 20199; -- Defiler's Mail Greaves
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 15, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 9331, spelltrigger_3 = 1 where entry = 20052; -- Highlander's Leather Boots
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 15, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 9331, spelltrigger_3 = 1 where entry = 20186; -- Defiler's Leather Boots
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 9, stat_value3 = 0, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1 where entry = 20053; -- Highlander's Lizardhide Boots
update item_template set armor = 224, item_level = 71, required_level = 60, stat_value1 = 17, stat_value2 = 9, stat_value3 = 0, spellid_1 = 45530, spellid_2 = 9346, spellid_3 = 23990, spelltrigger_3 = 1 where entry = 20167; -- Defiler's Lizardhide Boots
update item_template set armor = 511, item_level = 68, required_level = 60, stat_value2 = 15, stat_value3 = 14, spellid_1 = 45530, spellid_2 = 23990, spelltrigger_2 = 1 where entry = 20048; -- Highlander's Plate Greaves
update item_template set armor = 511, item_level = 68, required_level = 60, stat_value2 = 15, stat_value3 = 14, spellid_1 = 45530, spellid_2 = 23990, spelltrigger_2 = 1 where entry = 20208; -- Defiler's Plate Greaves
-- Exalted
update item_template set armor = 55, item_level = 71, stat_value2 = 9, stat_value1 = 13, spellid_1 = 45530, spellid_2 = 15806, spelltrigger_2 = 1 where entry = 20073; -- Cloak of the Honor Guard
update item_template set armor = 55, item_level = 71, stat_value2 = 9, stat_value1 = 13, spellid_1 = 45530, spellid_2 = 15806, spelltrigger_2 = 1 where entry = 20068; -- Deathguard's Cloak
update item_template set armor = 219, item_level = 71, stat_value2 = 9, stat_value1 = 20, spellid_1 = 45530, spellid_2 = 15807, spelltrigger_2 = 1 where entry = 20059; -- Highlander's Leather Shoulders
update item_template set armor = 219, item_level = 71, stat_value2 = 9, stat_value1 = 20, spellid_1 = 45530, spellid_2 = 15807, spelltrigger_2 = 1 where entry = 20194; -- Defiler's Leather Shoulders
update item_template set armor = 602, item_level = 71, stat_value2 = 17, stat_value4 = 12, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 20058; -- Highlander's Lamellar Spaulders
update item_template set armor = 339, item_level = 71, stat_value2 = 19, stat_value1 = 17, stat_type1 = 5, stat_type2 = 7, spellid_1 = 45530, spellid_2 = 14799, spelltrigger_2 = 1, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 20203; -- Defiler's Mail Pauldrons
update item_template set armor = 339, item_level = 71, stat_value2 = 20, stat_value1 = 22, stat_value3 = 18, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 20055; -- Highlander's Chain Pauldrons
update item_template set armor = 339, item_level = 71, stat_value2 = 20, stat_value1 = 22, stat_value3 = 18, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 20158; -- Defiler's Chain Pauldrons
update item_template set armor = 182, item_level = 71, spellid_1 = 45530, spellid_2 = 14799, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 20061; -- Highlander's Epaulets
update item_template set armor = 182, item_level = 71, spellid_1 = 45530, spellid_2 = 14799, spellid_3 = 21618, spelltrigger_3 = 1 where entry = 20176; -- Defiler's Epaulets
update item_template set armor = 219, item_level = 71, stat_value1 = 18, stat_value2 = 17, stat_value3 = 0, stat_type2 = 5, spellid_1 = 45530, spellid_2 = 14799, spellid_3 = 57158, spelltrigger_3 = 1, spelltrigger_2 = 1 where entry = 20060; -- Highlander's Lizardhide Shoulders
update item_template set armor = 219, item_level = 71, stat_value1 = 18, stat_value2 = 17, stat_value3 = 0, stat_type2 = 5, spellid_1 = 45530, spellid_2 = 14799, spellid_3 = 57158, spelltrigger_3 = 1, spelltrigger_2 = 1 where entry = 20175; -- Defiler's Lizardhide Shoulders
update item_template set armor = 602, item_level = 71, stat_value1 = 22, stat_value3 = 18, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 20057; -- Highlander's Plate Spaulders
update item_template set armor = 602, item_level = 71, stat_value1 = 22, stat_value3 = 18, spellid_1 = 45530, spelltrigger_1 = 1 where entry = 20212; -- Defiler's Plate Spaulders
update item_template set armor = 200, item_level = 71, stat_value2 = 28, spellid_2 = 26142 where entry = 20220; -- Ironbark Staff
update item_template set armor = 200, item_level = 71, stat_value2 = 28, spellid_2 = 26142 where entry = 20069; -- Ironbark Staff
update item_template set armor = 80, item_level = 71, stat_value1 = 14, spellid_1 = 18056 where entry = 20214; -- Mindfang
update item_template set armor = 80, item_level = 71, stat_value1 = 14, spellid_1 = 18056 where entry = 20070; -- Sageclaw