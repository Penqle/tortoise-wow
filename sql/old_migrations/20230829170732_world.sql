-- Change NPC ID 16184 to be able to enter and swim in water, it currently sits at the shore if the target is in a body of water, allowing the players to abuse him.
update creature_template set inhabit_type = 3 where entry = 16184;
-- NPC ID 61556 (Larannikus) should be immune to slow, root, stun, sleep, charm and fear.
update creature_template set mechanic_immune_mask = 2641 where entry = 61556;
-- NPC ID 61556 (Larannikus) should cast Spell ID 3391 every 12 seconds, remove Spell ID 26050 cast script from him.
update creature_spells set spellId_1 = 3391, delayRepeatMin_1 = 12, delayRepeatMax_1 = 12 where entry = 180208;

-- Disable quest 3090 (Tainted Parchment) for Troll Warlocks, they get their own version of Tainted Tablet which leads them to the troll warlock trainer instead. 
update quest_template set requiredraces = 306 where entry = 3090;
-- Change short description for quest ID 40959 (Into the Dream III).
update quest_template set objectives = 'Gather a Binding Fragment from Cliff Breakers in Azshara, Overloaded Arcane Prism from Arcane Torrents in the Western wing of Dire Maul, Slumberer\'s Shard from Weaver in the Sunken Temple and an Arcanite Rod. Report to Itharius in the Swamp of Sorrows with the collected items.' where entry = 40959;
-- Quest ID 40959 should also require 1 Arcanite Rod (Item ID 16206) to complete as the 4th item.
update quest_template set ReqItemId4 = 16206, ReqItemCount4 = 1 where entry = 40959;
-- Quest ID 40962 (Into the Dream VI) seems to be not be available everyone, as the quest was not offered to me as a Human Hunter. Make sure all races and classes can get the quest if they did the previous quest.
update quest_template set requiredclasses = 0 where entry = 40962;
-- Quest ID 40962 (Into the Dream VI) should only reward 1 Gemstone of Ysera, its rewarding 99+ of the item right now.
update quest_template set RewItemCount1 = 1 where entry = 40962;
-- Fix stat balancing on gemstone of ysera.
update item_template set stat_value1 = 0, stat_value2 = 0, max_count = 1, flags = 32 where entry = 50545; -- Gemstone of Ysera
-- Both Quest ID 40870 and 40871 should say "eight" where it says "fifteen" in the quest description, the item requirement was lowered but the quest text wasn't touched. Basically replace fifteen's with eight. 
update quest_template set Details = 'You there! Yes you, mortal! I am in need of assistance. My friend has begun falling ill from the madness of the emerald dream and I require a cure before he is lost forever.$B$BI have heard from the Wardens of Nordrassil of a herb called Hyjalroot that can only be found around this region: it is somewhat scarce, but I require eight bundles of it in order to ease the pain of Paranus. I bid you to be quick and act with haste, or else I will lose my friend forever.$B$B<The whelp lets out a sad mewl of distress.>' where entry = 40870;
update quest_template set Details = 'I am eternally thankful for your efforts in saving Paranus, but I have been thinking. When this conflict is all over and the Emerald Dream is restored, there will be many that require Hyjalroot in order to be brought back into the fold.$B$BI believe it is time to begin stockpiling Hyjalroot now in order to save those affected. If you so happen to collect eight Hyjalroot, return to me, and I will bestow upon you a Small Dream Shard for your efforts.' where entry = 40871;
-- Human Hunter's Taming the Beast Questline should take the taming rods when the quests are done.
-- Quest ID 41131 should require Item ID 61812 to complete.
-- Quest ID 41132 should require Item ID 61813 to complete.
-- Quest ID 41133 should require Item ID 61814 to complete.
update quest_template set reqitemcount1 = 1 where entry in (41131,41132,41133);