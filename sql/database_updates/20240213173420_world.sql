update item_template set spellid_1 = 15464, stat_value1 = 22, stat_value2 = 10, stat_type2 = 3, stat_value3 = 9, stat_type3 = 6 where entry = 81355; 

-- Fallen Crusader Legguards 
-- 17 str -> 22 str, added 10 agi, removed 28 dmg to undead, added 1 hit
-- 28 dmg to undead is a flat increase not like attack power so its impact is too big and not a single item can come close to its dps vs undead

-- Fix chaining on Captain Grayson vs Cookie quest, and remove redundant quest objectives
UPDATE quest_template SET NextQuestInChain = 40396 WHERE entry = 40395;
UPDATE quest_template SET ReqCreatureOrGOId1 = 0, ReqCreatureOrGOCount1 = 0 WHERE entry = 40396;

-- Fix Horde level 10 Warrior quest locking
-- If you can figure out how to make 1505 and 1818 close each other, but STILL have their follow-up quests available after doing one or the other, go ahead and write a query
-- But I'm not going to spend 10 times as long trying to tweak ExclusiveGroups, NextQuestInChains, PrevQuestIds, NextQuestIds, etc just to replicate an arbitrary Classic behavior
UPDATE quest_template SET ExclusiveGroup = 0, NextQuestID = 0 WHERE entry IN (1505, 1818);

-- Change Smoldering Dream Essence from Quest item to Bind on Pickup
UPDATE item_template SET Bonding = 1 WHERE entry = 61444;