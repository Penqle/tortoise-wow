-- NPC "Ralo'shan" now has blizzlike gossip menu.
UPDATE `gossip_menu_option` SET `action_menu_id` = 6585 WHERE `menu_id` = 6586;
UPDATE `gossip_menu_option` SET `action_menu_id` = 6586 WHERE `menu_id` = 6587;
UPDATE `gossip_menu_option` SET `action_menu_id` = 6587 WHERE `menu_id` = 6588;

-- Add chaining to Desolace Centaur quests
UPDATE quest_template SET NextQuestInChain = 40613 WHERE entry = 40612;
UPDATE quest_template SET NextQuestInChain = 40614 WHERE entry = 40613;
UPDATE quest_template SET NextQuestInChain = 40615 WHERE entry = 40614;
UPDATE quest_template SET NextQuestInChain = 40616 WHERE entry = 40615;

UPDATE quest_template SET NextQuestInChain = 40626 WHERE entry = 40625;
UPDATE quest_template SET NextQuestInChain = 40627 WHERE entry = 40626;
UPDATE quest_template SET NextQuestInChain = 40628 WHERE entry = 40627;
UPDATE quest_template SET NextQuestInChain = 40629 WHERE entry = 40628;
