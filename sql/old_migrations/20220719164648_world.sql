-- Change meaning of value 6 in attack_target field for SCRIPT_COMMAND_TEMP_SUMMON_CREATURE.
UPDATE `creature_ai_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `creature_movement_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `creature_spells_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `event_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `gameobject_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `generic_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `gossip_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `quest_end_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `quest_start_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
UPDATE `spell_scripts` SET `dataint3`=-1 WHERE `command`=10 && `dataint3`=6;
