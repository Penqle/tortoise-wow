-- Makes Blood Talon Bind on Equip
update item_template set bonding = 2 where entry = 12795; -- Blood Talon
-- Remove BoP Gear Prof Req
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 0, required_skill_rank = 0 where entry = 14152; -- Robe of the Archmage

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2880
UPDATE `creature_template` SET `armor` = 4248 WHERE `entry` = 6352;

update item_template set max_count = 1 where entry = 65105; -- Scale of the Wakener

-- Add RaceMasks to Call of Earth quests

UPDATE quest_template SET RequiredRaces = 130 WHERE entry = 1516;
UPDATE quest_template SET RequiredRaces = 32 WHERE entry = 1519;