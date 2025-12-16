-- Fix Spirit Worg mount:
update creature_template set scale = 1, display_id1 = 18920 where entry = 16000;
replace into creature_display_info_addon (display_id) values (18920);

update quest_template set details = 'I’d love to take a peek through those again, I was sure they were lost!\n\nThalestien was such an awe-inspiring engineer. So many exciting stories about people and their crafts.\n\nHave you ever heard of Brymdiaine Zecker? A trickster dwarf, that is what he was! Many believed he was the greatest dwarven mage of all time, but rumors say that his magic was no magic at all.\n\nBut the benefit of Engineering and Technology! Look at me babbling, Nor’diel surely awaits these notes.\n\nOh well, do tell Nor’diel I’ll visit soon, maybe even help with his Golem!' where entry = 40517;

-- Warsong Gulch Friendly Trinket Changes
update item_template set allowable_class = -1, spellid_1 = 48030 where entry = 21568; -- Rune of Duty Level 20
update item_template set allowable_class = -1, spellid_1 = 48034 where entry = 21567; -- Rune of Duty Level 40
update item_template set allowable_class = -1 where entry = 21566; -- Rune of Perfection Level 20
update item_template set allowable_class = -1 where entry = 21565; -- Rune of Perfection Level 40

-- Correct health of Living Flame.
update creature_template set health_min= 71, health_max= 77, speed_walk= 1, speed_run= 0.857143, base_attack_time = 2000 where entry=3417;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1744
replace into quest_template (entry, ZoneOrSort, MinLevel, QuestLevel, QuestFlags, NextQuestInChain, Title, Details, Objectives, OfferRewardText, RewRepFaction1, RewRepFaction2, RewRepValue1, RewRepValue2, RewXP, RewMoneyMaxLevel, CompleteEmote) values (787, 363, 1, 1, 8, 788, 'The New Horde', 'Throm\'ka, $c. I am Eitrigg, charged by Thrall to oversee the training of recruits.$b$bThe Horde has changed from what it once was. There was a time where I left the Horde, disillusioned by the growing influence of the power-hungry pawns of the Burning Legion. During my exile, I was taken prisoner by a group of humans, but was rescued by the Warchief. Hearing his vision of the Horde free of demonic influence, guided by the shamans, I returned.$b$bGornek will have further instructions for you.', 'Report to Gornek in the Den.', 'Another one of Eitrigg\'s recruits, hm?$B$BA sorry state of affairs we find ourselves in if this is the best the Horde can produce. No matter. By the time we think you\'re ready to leave the Valley, you\'ll be a proud warrior of the Horde.', 76, 530, 50, 50, 40, 30, 1);

replace into creature_questrelation (id, quest) values (3144, 787);
replace into creature_involvedrelation (id, quest) values (3143, 787);
