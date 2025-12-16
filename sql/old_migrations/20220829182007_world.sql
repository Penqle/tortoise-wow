-- Remove requirement to not have done "Break Sharptusk!" from "Preventive Strike".
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=60115;
