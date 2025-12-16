-- Add item 61407 to NPC with GUID 2574685.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61269, 0, 61407, 0, 0, 0, 0);
-- NPC Postworker Albertus Manethas (Entry 61611), change faction to 12.
update creature_template set faction = 12 where entry = 61611;
-- NPC Darius Ravenwood, change greeting text to : Gilneas has seen darker days. But with newfound allies, such as you, hope remains. I feared the Alliance would've abandoned us, but here we stand. I will bend no knee to these Alteraci scum.$B$BWe will prevail. 
update broadcast_text set male_text = 'Gilneas has seen darker days. But with newfound allies, such as you, hope remains. I feared the Alliance would\'ve abandoned us, but here we stand. I will bend no knee to these Alteraci scum.$B$BWe will prevail.' where entry = 61259;
-- Fix dumb desc.
update spell_template SET description = 'Increases the Holy damage bonus of your Crusader Strike by $s1 per stack.' WHERE entry = 23300; -- Seal of the Crusader Judgement Increase.
-- Quest The Binding of Xanthar (Entry 41015) needs its start npc set to Hanvar the Righteous (Entry 61568).
delete from creature_questrelation where quest = 41015;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (61568, 41015);
update quest_template set details = 'Some years ago, a rare and powerful item was stored inside of this church. I have been cursed to remain ever since its disappearance years ago. If you could recover this item and return it to Karazhan, I would be more than thankful.$B$BThe Binding was torn apart before it was ever stolen, both halves now rest with separate owners. The first was taken by a hermit mage who held no affiliations, his accent certainly sounded like he came from the north.$B$BThe second half of the binding was taken by a man of faith, of vigilance, wearing red cloth and bearing the symbol of the Light itself. His ravings almost sounded mad!$B$BGather me both the upper and lower half of the binding, and I can make it whole.' where entry = 41015;
-- NPC Hanvar the Righteous make sure he has Quest flags.
update creature_template set npc_flags = 3 where entry = 61568;
-- Quest The Binding of Xanthar, make sure it has no previous required quests.
update quest_template set prevquestid = 0 where entry = 41015;
-- Update Proclaim Champion description to state only one Champion can be proclaimed at a time.  Update Champion buffs to state only 1 Champion effect can be active at a time.
UPDATE `spell_template` SET `description` = 'Proclaim the friendly target as your champion for 2 hours. Increases armor by 230, all resistances by 10 and allows the use of various Champion spells on that target. Only one Champion can be proclaimed at a time.' WHERE `entry` = 45562;
update spell_template SET description = 'Your Water Shield ability grants an additional 6 mana per 5 sec. while active.' WHERE entry = 47357; -- Calming River