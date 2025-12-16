-- Remove money reward from quest A Troubling Presence.
update quest_template set reworreqmoney = 0 where entry = 41193;
-- Remove money reward from quest Thalassian Goulash.
update quest_template set reworreqmoney = 0 where entry = 41190;
-- Remove money reward from quest Safety for Refugees.
update quest_template set reworreqmoney = 0 where entry = 41189;
-- Remove money reward from quest A Crown of Flowers.
update quest_template set reworreqmoney = 0 where entry = 41191;
-- Change short objective of quest A Crown of Flowers to "Bring ten flowers to Avenant so he can make a crown of flowers for Jolie."
update quest_template set objectives = 'Bring ten flowers to Avenant so he can make a crown of flowers for Jolie.' where entry = 41191;
-- Gob 2020072 set scale to 0.4
update gameobject_template set size = 0.4 where entry = 2020072;
-- Add quest flag to Tiriel Brightwater.
update creature_template set npc_flags = 135 where entry = 61831;
-- Quest "The Wrath of the Light Fall Upon Thee" should be marked as Elite.
update quest_template set type = 1 where entry = 41200;
-- Apply SQLs spell and item fixes.
-- weps
update item_template set spellid_2 = 45076, spellid_1 = 15464, stat_value1 = 28 where entry = 41076; -- Aspect of Seradane
update item_template set spellid_1 = 16921, spellppmrate_1 = 0.65 where entry = 40080; -- Thunderforge Lance
-- fix text for new enchant
update spell_template SET Description = 'Permanently enchant a two-handed melee weapon to grant +2 Intellect.' WHERE entry = 45071; 
-- make aspect of seradane proc cooler
update spell_template SET spellVisual1 = 3860, spellIconId = 263, name = "Wrath Volley", effectBasePoints1 = 129, description = 'Unleashes a wave of energy that blasts up to 3 targets for $s1 Nature damage.' WHERE entry = 45076; -- chain lightning
