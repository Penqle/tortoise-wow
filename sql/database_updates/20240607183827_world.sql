-- Make alliance and horde Head of Onyxia quests exclusive to each other.
UPDATE `quest_template` SET `ExclusiveGroup`=7491 WHERE `entry` IN (7491, 7496);

-- Make alliance and horde Head of Nefarian quests exclusive to each other.
UPDATE `quest_template` SET `ExclusiveGroup`=7782 WHERE `entry` IN (7782, 7784);

