-- Do not open Requisitioning a Core after turning in A Profitable Acquisition.
UPDATE `quest_template` SET `NextQuestInChain`=0 WHERE `entry`=40130;
-- Do not open The Profitable Activation after turning in Requisitioning a Core.
UPDATE `quest_template` SET `NextQuestInChain`=0 WHERE  `entry`=40131;

