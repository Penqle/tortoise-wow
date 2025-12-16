-- Prevent pulling Baron Rivendare outside his room.
UPDATE `creature_template` SET `leash_range`=40 WHERE `entry`=10440;
UPDATE `spell_template` SET `customFlags`=0 WHERE `entry`=17467;

-- Values should be signed integers.
ALTER TABLE `conditions`
	CHANGE COLUMN `value1` `value1` INT NOT NULL DEFAULT '0' COMMENT 'data field one for the condition' AFTER `type`,
	CHANGE COLUMN `value2` `value2` INT NOT NULL DEFAULT '0' COMMENT 'data field two for the condition' AFTER `value1`,
	CHANGE COLUMN `value3` `value3` INT NOT NULL DEFAULT '0' COMMENT 'data field three for the condition' AFTER `value2`,
	CHANGE COLUMN `value4` `value4` INT NOT NULL DEFAULT '0' COMMENT 'data field four for the condition' AFTER `value3`;

-- 10440: Source Is Within 1 Yards Of X 4032 Y -3365 Z 115
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (10440, 54, 4032, -3368, 115, 4, 2);

-- Events list for Baron Rivendare
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (1044004, 10440, 10440, 0, 0, 100, 1, 1, 1, 1, 1, 1044004, 0, 0, 'Baron Rivendare - Evade if pulled outside of room');
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1044004, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Evade');
