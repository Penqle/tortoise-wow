-- Dispatch Commander Metz should finish Writ of Safe Passage.
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16212, 9165);

-- Change Battered Viking Shield to green quality
UPDATE item_template SET Quality = 2 WHERE entry = 9403;

-- Fix name typo on Ancient Treasure Chest in Uldaman
UPDATE gameobject_template SET Name = 'Ancient Treasure Chest' WHERE entry = 2010828;

-- Add direction to quest objectives for Intact Power Core
UPDATE quest_template SET Type = 81, Objectives = 'Bring an Intact Power Core from Uldaman''s Ancient Treasures to Kex Blowmaster in the southern Barrens.' WHERE entry = 40131;
UPDATE quest_template SET Objectives = 'Bring an Intact Power Core from Uldaman''s Ancient Treasures to Torble Sparksprocket in the southern Barrens.' WHERE entry = 40129;

-- Make Smoldering Dream Essence Bind on Pickup
UPDATE item_template SET Bonding = 4 WHERE entry = 61444;
