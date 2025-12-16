-- Assign spells and loot from Greater Fleshripper to Plateau Fleshripper.
UPDATE `creature_template` SET `spell_list_id`=1540, `pet_spell_list_id`=8834, `ai_name`='', `loot_id`=154 WHERE `entry`=61018;
