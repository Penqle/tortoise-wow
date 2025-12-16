-- Correct auras used by Fen Creeper.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (104001, 104002);
DELETE FROM `creature_ai_events` WHERE `creature_id`=1040;
UPDATE `creature_template` SET `auras`='7939 22766', `ai_name`='' WHERE `entry`=1040;

-- Correct auras used by Bleakheart Shadowstalker.
DELETE FROM `creature_ai_events` WHERE `creature_id`=3770;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (377002, 3770, 0, 2, 0, 100, 0, 15, 0, 0, 0, 377002, 0, 0, 'Bleakheart Shadowstalker - Flee at 15% HP');
DELETE FROM `creature_ai_scripts` WHERE `id` IN (377001);
UPDATE `creature_template` SET `auras`='7939 22766 6947' WHERE `entry`=3770;
