-- whoops forgot to add rank 1
update spell_template SET recoveryTime = 60000, categoryRecoveryTime = 0, powerType = 2, manaCost = 10, durationIndex = 29, baseLevel = 10, spellLevel = 10, category = 0, description = 'Increases chance to dodge by 30% for $d.', auraDescription = 'Increases dodge chance by 30%.', nameSubtext = 'Rank 1' WHERE entry = 46296; -- Grace (Fox Ability)
update spell_template SET recoveryTime = 8000, attributes = 524288 WHERE entry = 46271; -- Poison Spit (Rank 1)
update spell_template SET recoveryTime = 8000, attributes = 524288 WHERE entry = 46272; -- Poison Spit (Rank 2)
update spell_template SET recoveryTime = 8000, attributes = 524288 WHERE entry = 46273; -- Poison Spit (Rank 3)
update spell_template SET auraDescription = '' WHERE entry = 51146; -- Shieldrender Talisman
update spell_template SET Description = 'Your next 5 successful melee attacks smite your target for 7 Holy damage. Lasts 12 sec.' WHERE entry = 51250; -- Consecrated Strikes
update spell_template SET Description = 'Reduces the cooldown of your Holy Strike and Crusader Strike by 0.5 sec.' WHERE entry = 51242; -- Holy Strike Crusader Strike Cooldown Reduction

-- finally
update item_template set stat_value1 = 16, stat_value2 = 15, stat_value3 = 24, spellid_2 = 51256 where entry = 51737; -- Vestments of Eternal Autumn
UPDATE `item_template` SET `spellid_1` = 9346, spellid_2 = 21361 WHERE `entry` = 61027; -- black morass mantle
UPDATE `item_template` SET `spellid_1` = 51245 WHERE `entry` = 55378; -- Inventor's Mitts
UPDATE `item_template` SET `spellid_1` = 51242, spelltrigger_1 = 1 WHERE `entry` = 55110; -- Libram of the Eternal Tower
UPDATE `item_template` SET `spellid_1` = 51247, spelltrigger_1 = 1 WHERE `entry` = 55379; -- Slag Slugger
UPDATE `item_template` SET `spellid_1` = 51248, spelltrigger_1 = 2, spellppmrate_1 = 1.3, display_id = 68229, sheath = 2 WHERE `entry` = 55381; -- Phytolance
UPDATE `item_template` SET `spellid_3` = 51251, spelltrigger_3 = 2, spellppmrate_3 = 3, spellid_1 = 7597, spelltrigger_1 = 1, spellppmrate_1 = -1 WHERE `entry` = 55133; -- Claw of the Mageweaver
UPDATE `item_template` SET `spellid_1` = 51250, spelltrigger_1 = 2, spellppmrate_1 = 1, delay = 2200, dmg_min1 = 24, dmg_max1 = 47 WHERE `entry` = 55384; -- Hilt of Radiance
UPDATE `item_template` SET display_id = 68228 WHERE `entry` = 55471; -- Wystan's Steel Fist


