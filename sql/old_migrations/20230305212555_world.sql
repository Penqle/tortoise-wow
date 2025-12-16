
-- Increase drop chance from 0.4% to 1.0% regarding to the average of wowhead.com
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `item` IN
(
	20879, -- Idol of Life
	20875, -- Idol of Night
	20878, -- Idol of Rebirth
	20881, -- Idol of Strife
	20882, -- Idol of War
	20877, -- Idol of the Sage
	20874  -- Idol of the Sun
);
