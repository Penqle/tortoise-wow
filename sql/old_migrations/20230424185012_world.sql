UPDATE quest_template SET ZoneOrSort = 17 WHERE entry IN (39994, 39995, 39996, 39999);

UPDATE quest_template SET
Objectives = 'Speak with Birgitte Cranston in Thunder Bluff.'
WHERE entry = 39997;

update item_template set allowable_class = 464 where entry = 21563; -- Don Rodrigo's Band
-- Adds shamans to the list of classes that can use the AV reward.

REPLACE INTO gameobject_template VALUES (2011107, 5, 294, 'Gallows01,mdx', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); 

update item_template set stat_value1 = 25, spellid_1 = 15464, spellid_2 = 0 where entry = 65025; -- Flamewrath Leggings
update item_template set spellid_1 = 15464, spellid_2 = 13669, spellid_3 = 11789 where entry = 65026; -- Depthstalker Helm
update item_template set stat_value1 = 20, spellid_1 = 8815, spellid_2 = 23990, spellid_3 = 0 where entry = 65027; -- Windwalker Boots

-- Flamewrath Leggings: 28 -> 25 Strength, Removed 1% Critical Chance
-- Depthstalker Helm: Removed 1% Critical and Dodge Chance
-- Windwalker Boots: 22 -> 20 Agility, Removed 1% Dodge

UPDATE quest_template SET
Objectives = 'Slay Duchess Faliona, Captain Silas, 8 Remnants Footmen and 4 Remnants Priests for Duchess Grelda.',
Details = 'With their forces weakened, it is as good as time as any to attack them directly. Before I changed into... this...$B$B<She points at her undead features.>$B$BI was one of the commanders here, before... That''s why I know their camp will prove to be a difficult challenge, even while weakened. I recommend that you call for aid when attacking their base. Beware that your primary goal is to end the lives of both Captain Silas, and my usurper sister Faliona too. Do this for me, and I promise that you will be well rewarded.',
RequestItemsText = 'Is it done?',
OfferRewardText = 'I wish I was there to see the look on her miserable face when she realized one last time that she was never able to beat me. Neither in life nor in death, my dear sister. You have proven to be quite an ally, $c. From this day forth, consider yourself welcome to my court... when I rebuild it, of course.'
WHERE entry = 40277;

UPDATE quest_template SET
Objectives = 'Slay 6 Tirisclaw Ravagers and 6 Tirisclaw Shadowcasters at Crumblepoint Tower before returning to Volgrin.',
Details = 'I have no idea how they managed to slip past our forces in Silverpine. These Worgen have come in great numbers! Without the tower in our control, our ability to monitor activity here is reduced, which is why I could use the help of an adventurer like you. Help us reclaim it.$B$BYou haven''t run, yet, so consider me impressed. Good. Head over and kill those flea-ridden wretches.',
RequestItemsText = 'Back so soon, $c?',
OfferRewardText = 'You did it? Well, I was honestly not expecting you to return! I wish you had arrived a few days earlier, then We might have avoided this whole situation to begin with.'
WHERE entry = 40087;

UPDATE quest_template SET Objectives = 'Slay 6 Magram Scouts, 6 Magram Outrunners, 6 Magram Stormers, and 6 Magram Windchasers for Warleader Temukar at Gelkis Village in Desolace.' WHERE entry = 40632;
-- Remove level requirement from the QUEST REWARD https://database.turtle-wow.org/?item=40061	
UPDATE item_template SET Required_Level = 0 WHERE entry = 40061;
-- Turn Convergence of Elements set items into BoP.
UPDATE item_template SET bonding = 1 WHERE entry BETWEEN 65024 AND 65027;

-- REPLACE INTO faction_template (id, faction_id, faction_flags, our_mask, friendly_mask, hostile_mask, enemy_faction1, enemy_faction2, enemy_faction3, enemy_faction4, friend_faction1, friend_faction2, friend_faction3, friend_faction4) VALUES (1711, 1001, 2081, 5, 4, 10, 0, 0, 0, 1001, 0, 0, 0);
-- UPDATE creature_template SET faction = 1711 WHERE entry IN (16096, 60971, 91236);

UPDATE quest_template SET
Objectives = 'Bring the scroll and the box to Duchess Grelda.',
Details = 'All this knowledge, just left to rot. You, my friend, have brought me a valuable gift. But I digress. You probably just want to find out how to open that box. Let''s see.$B$B<Pierce produces an old scroll from within the belongings.>$B$BThere you are. Hah, it is easier to do than I thought. You will need to take these instructions to Duchess Grelda as her blood is required to open the box. I heard that the Duchess is currently residing in a manor alongside the southern road from Tirisfal Uplands. Be well, and if you ever feel like you want to delve into another dangerous place to recover old magical items, do let me know.',
RequestItemsText = 'Speak quickly.',
OfferRewardText = 'I already received notice from my husband that he found someone capable enough to assist our noble house with such an important task. You certainly outdid yourself with this one. Ah, so it requires my blood to open it, a good thing I still have a bit of that left.$B$BBut this spell will be tricky. Anyways, I doubt that you wish to stay here for days while I prepare the ritual. And to the matter of your reward: I will allow you to pick one of the relics from my family armory. I hope that you find this agreeable, after all the help you have provided us.'
WHERE entry = 40282;

UPDATE item_template SET Name = 'Melenas'' Belongings' WHERE entry = 60191;

UPDATE quest_template SET
Objectives = 'Find Melenas'' Belongings in the Shadowfang Keep Library and return them to Pierce Shackleton in the Undercity.',
Details = 'I have certainly not seen this kind of lock for quite a while. And now I can see why House Darlthos surrounded this whole ordeal in secrecy. What we have here is a type of blood magic. Although not as dangerous as some, it certainly requires blood of the family member to activate it. Not many know how to wield this magic; the last mage I knew who used this is long dead! $B$B Melenas used to have a section of his own in a library deep in the Shadowfang Keep. Perhaps there you can find something of use. But beware, that place is overrun by the savage Worgen, so it is better if I hold on to this box until your return. We wouldn''t want to lose both you and the box should you fail, right?',
RequestItemsText = 'Hmm...',
OfferRewardText = 'You are persistent, to say at least. Let''s see what Melenas had in store for us.'
WHERE entry = 40281;

UPDATE quest_template SET
Objectives = 'Take the Box and letter to Pierce Shackleton in the Undercity Magic Quarter.',
Details = 'Let me think for a second. Hmm... Why, yes! I have an acquaintance of sorts in the Undercity. The name is Pierce Shackleton. He calls himself a mage, and he owes me a favor, or rather he owes my wife a favor. Take this letter to him along with the box and find out what can be done with it.',
RequestItemsText = 'And who might you be?',
OfferRewardText = 'A letter for me? That ignorant son of a... Apologies, $c. That man certainly knows how to get on my nerves. I will do this for him, but this is the last time I deal with that accursed family.'
WHERE entry = 40280;

-- REPLACE INTO faction_template (id, faction_id, faction_flags, our_mask, friendly_mask, hostile_mask, enemy_faction1, enemy_faction2, enemy_faction3, enemy_faction4, friend_faction1, friend_faction2, friend_faction3, friend_faction4) VALUES (1711, 1001, 2081, 5, 4, 10, 0, 0, 0, 1001, 0, 0, 0);
-- UPDATE creature_template SET faction = 1711 WHERE entry IN (16096, 60971, 91236);

UPDATE quest_template SET
Objectives = 'Return Darlthos'' Jewelry Box to Duke Nargelas in Glenshire and inform him of your findings.',
Details = 'Do you realize what you are holding in your hands!$B$B<Vathras snatches the box away, and carefully inspects the sigil of the House Darlthos on top of it.>$B$BMy, my, I wanted to inspect this beauty for a long time. No one aside from the royal family of House Darlthos has ever seen the contents of this box before. You see this sigil? It is an old yet powerful lock that protects the box from being harmed and opened in any way other than through the original incantation that sealed it.$B$BSkilled as I am, without the incantation I will not be able to assist the Duke with this task. Send the Duke my regards and wish him luck in his endeavors, will you?',
RequestItemsText = 'What did he say?',
OfferRewardText = 'A magical lock? Naturally. Nothing can ever just be simple.'
WHERE entry = 40279;

UPDATE quest_template SET
Objectives = 'Bring Darlthos'' Jewelry Box to Vathras Millson in Steepcliff Port.',
Details = '$R, I have a task for you. A rather important one.$B$B<Nargelas shows you a well-decorated jewelry box>.$B$BIn here lies the deed to the Tirisfal Uplands. You see, before the scourge invaded, my wife Grelda was supposed to inherit these lands from her father. On the coronation day, the contents of this box were supposed to pass on into her possession.$B$BMany moons have passed, and yet my courtiers and I had no luck in opening the lock on this thing. But during my research, a name came up. Vathras Millson. He specializes in these kinds of things. Head to Steepcliff Port and find him; I heard he owns an Inn now.$B$BOh, and do be careful. The box is worth more than your life.',
RequestItemsText = 'I''m busy.',
OfferRewardText = 'And who might you be? The Duke sent you? On with it then, I''m a busy man.'
WHERE entry = 40278;

UPDATE quest_template SET NextQuestInChain = 0 WHERE entry IN (40128, 40129, 40132);