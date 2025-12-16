DELETE FROM faction WHERE id IN (999, 1000, 1002, 1003, 1010, 1014, 1015, 1016, 1017);
DELETE FROM faction_template WHERE faction_id IN (999, 1000, 1002, 1003, 1010, 1014, 1015, 1016, 1017);

UPDATE `faction` SET `reputation_flags1` = 16 WHERE `id` = 1007;
UPDATE `faction` SET `reputation_flags1` = 16 WHERE `id` = 1008;

UPDATE `faction` SET `reputation_flags1` = 4, `reputation_flags2` = 4 WHERE `id` = 1012;

DELETE FROM `faction_template` WHERE `id` IN (1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709);

UPDATE `faction` SET `reputation_list_id` = -1, `base_rep_race_mask1` = 0, `base_rep_race_mask2` = 0, `base_rep_value1` = 0, `base_rep_value2` = 0 WHERE `id` = 189;
UPDATE `faction` SET `reputation_list_id` = -1, `base_rep_race_mask1` = 0, `base_rep_race_mask2` = 0, `base_rep_value1` = 0, `base_rep_value2` = 0 WHERE `id` = 66;


UPDATE `spell_template` SET `description` = 'The caster is surrounded by $n globes of water. When a spell, melee or ranged attack hits the caster, 130 mana is restored to the caster. This expends one water globe. Only one globe will activate every few seconds. Lasts $d. Only one elemental shield can be active on the Shaman at any one time.' WHERE `entry` = 45527;

-- Assigned correct factions to some schmucks:

UPDATE `creature_template` SET `subname` = '' WHERE `entry` in ( 65000, 65001, 65002, 65003, 65005, 65006, 65007, 65008, 65009, 65010, 65011, 65012, 65013, 65014, 65015, 65016, 65017, 65018, 60622, 65128);

-- npc 80458 change lvl to 55, remove boss and leader tag

UPDATE creature_template set level_min = 55, level_max = 55, rank = 1, racial_leader = 0 where entry = 80458;

UPDATE `item_template` SET `name` = 'Naturalist I [Night Elf]' WHERE `entry` = 83092;
UPDATE `item_template` SET `name` = 'Necromancer II [Night Elf, male only]' WHERE `entry` = 61106;

UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81255;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81206;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81210;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81209;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50105;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50106;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50204;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50205;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50206;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50207;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50208;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50209;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50210;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50211;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50212;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 51010;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 51011;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81230;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81229;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81228;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 81208;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83090;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83091;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83092;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50220;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50221;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50250;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50251;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50252;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83099;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 83100;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50225;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50290;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50291;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50292;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50223;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 50224;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61104;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61105;
UPDATE `item_template` SET `description` = 'This token will alter your character\'s skin, while leaving the haircut, hair color, and facial features unchanged.' WHERE `entry` = 61106;

UPDATE `item_template` SET `bonding` = 1 WHERE `entry` = 53016;

UPDATE quest_template SET
Method = 0,
Details = '',
Objectives = '',
RequestItemsText = 'You there! Are you looking to cash out those Arena Marks of Honor you''ve got lying around? Well, if you''re looking for rewards from our coffers, I could take some of those marks off your hands in exchange for a Token of Blood. Think of it as the local currency around here.'
WHERE entry = 41118;

UPDATE `quest_template` SET `Objectives` = 'Bring 50 Tokens of Blood to Bradley Steel at the Gurubashi Arena in Stranglethorn Vale.', `ReqItemCount1` = 50 WHERE `entry` = 41119;

UPDATE quest_template SET
Method = 0,
Objectives = '',
Details = '',
RequestItemsText = 'Does your heart burn with a yearning for battle? The best of the best compete in the Blood Ring. Heed the call, and fight against the strongest competitors in Azeroth! Bring me proof of your triumphs, and you shall be showered in the spoils of war.'
WHERE entry = 41109;

UPDATE quest_template SET
Method = 0,
Objectives = '',
Details = '',
RequestItemsText = 'You there, champion!$B$BLooking to make a name for yourself with us? Well, we are currently taking donations. Tokens of Blood are what we''re looking for. If you don''t think you will be using yours, return them to us, and I will put in a good word with the bosses on your behalf.'
WHERE entry = 41123;

UPDATE quest_template SET
Details = 'The foul demons are mustering their strength, performing obscene rituals for some dark purpose I shudder to imagine. I am certain these Succubi are receiving some form of direction from their commanders, so it stands to reason that documented orders must be among them.$B$BIt is imperative that we acquire whatever plans we can find, and so I rely upon you, $N. Slay those vile temptresses until you find their orders, then return them to me promptly!'
WHERE entry = 41090;

UPDATE quest_template SET
Details = 'Travel to the summit of Mount Hyjal and find my superior, Annesastrasza. She needs to know every pertinent detail about what happened.$B$BLeaving those demons lurking in the Barrow Deeps would have endangered us all. I will make sure to seal the cave while you deliver the news.$B$BYou have done us a great service, $N.',
OfferRewardText = 'This is ill news you bring me. You have done well in assisting my daughter. The Greens are currently dealing with an emergency here and cannot spare the forces to deal with the demons in the Barrows right this moment.$B$BRest assured, however, we will most certainly keep them at bay.$B$BTake this as a gift for your efforts. You will find these to be of use here in Nordanaar. Now, if you will excuse me, I have much work to do in order to suppress the demon threat.'
WHERE entry = 41097;

-- Change quest requirement of The Upper Binding II , from 5 Elemental Fire to 5 Essence of Fire

UPDATE `quest_template` SET `ReqItemId1` = 7078 WHERE `entry` = 41012;

UPDATE `quest_template` SET `Objectives` = 'Gather 5 Essence of Fire, and 1 Fragment of Earth for Parnabus in Gilneas.', `Details` = 'I have attempted to use the Dragonkin Charge to repower the relic, but I have had no luck in energizing its latent power. I suspect we will require a more active source of ley energy.$B$BI will require some items before I can begin this ritual. First, I need you to collect the following items which should be easier to obtain. Five essence of fire, and a single fragment of earth should be enough to get us started. These materials might be tricky to find, but I do know that fragments of earth can be found from earth elementals seen in Silithus. I suggest that you start there.' WHERE `entry` = 41012;
