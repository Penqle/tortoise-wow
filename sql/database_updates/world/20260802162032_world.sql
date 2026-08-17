-- ==============================================
-- FILE: fix_quest_39001_exploration_trigger.sql
-- GENERATED: 20260802162032
-- ==============================================
UPDATE `gameobject_template`
SET `script_name` = 'custom_exploration_trigger'
WHERE `entry` = 3000102;

