-- Warlord Krom'zar should be an elite mob.
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=9456;
-- Make Counterattack! an elite quest.
UPDATE `quest_template` SET `Type`=1 WHERE `entry`=4021;
