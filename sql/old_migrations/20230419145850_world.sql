-- https://database.turtle-wow.org/?quest=80396 Quest edit for Tamamo.
UPDATE quest_template SET
Details = 'I am Kheyna Spinpistol. Mechanist, medic and killer of evil.$B$BI am currently tracking a dangerous foe who threatens the lives of an untold number of innocents. I might ask for your help in dealing with this later…$B$BFor now, I have a task for you, and a generous reward if you do it well! The nearby Kolkar tribe is preparing for a raid on the Crossroads. I know this because I''ve used one of my tools, and you could say I "sneaked" into their tent and heard their Khan ordering it. This can be avoided, however. You''ll save many lives if you go down there and put an end to them all.$B$BThey''re all around the Oasis to the west. Once you''re done, come back to me. If I am not here, simply touch the crystal again and I will know someone is waiting for me. Now get out there and KILL them all!',
OfferRewardText = 'Wonderful. I wonder what it felt like to have their blood splatter all over you, or what came into your mind as you heard them scream in pain and fall like the vermin they are.$B$BI wish I could have been there to see it for myself, heh.$B$BNonetheless, know that thanks to your violent deeds many lives were saved. Now, of course I''ll be sure to reward you… Hmm, let''s see… Yes, this will be something you can either use or sell for compensation.$B$BI''ll make sure to tell others of your deeds. Hopefully we''ll meet again, $N.'
WHERE entry = 80396;
-- Remove Eitrigg alpha quest for Orc/Troll starter zone quests, and enable the release quest which deprecated it to be done by all Horde races.
DELETE FROM creature_questrelation WHERE quest = 787;
DELETE FROM creature_involvedrelation WHERE quest = 787;
UPDATE quest_template SET RequiredRaces = 434 WHERE entry = 4641;
-- https://database.turtle-wow.org/?item=61097 Please update with the following name:
UPDATE item_template SET Name = 'The Deeds of Sir Danuvis' WHERE entry = 61097;
-- https://database.turtle-wow.org/?item=60917 Please update with the following name:
UPDATE item_template SET Name = 'Ring of Durotar' WHERE entry = 60917;
-- https://database.turtle-wow.org/?item=60912 Please update with the following name:
UPDATE item_template SET Name = 'Warbringer''s Commendation' WHERE entry = 60912;
-- Deekin changes for https://database.turtle-wow.org/?item=51767.
UPDATE item_template SET Dmg_Min1 = 39, Dmg_Max1 = 72, Delay = 1900 WHERE entry = 51767;
-- https://database.turtle-wow.org/?quest=40665 Please update with the following text:
UPDATE quest_template SET
Objectives = 'Slay 7 Expedition Scouts and 7 Expedition Commandos for Warbringer Dar''nakk in Razor Hill in Durotar.'
WHERE entry = 40665;
-- https://database.turtle-wow.org/?quest=40666 Please update with the following text:
UPDATE quest_template SET
Objectives = 'Gather 6 Bundles of Expedition Supplies for Warbringer Dar''nakk in Razor Hill in Durotar.'
WHERE entry = 40666;
-- https://database.turtle-wow.org/?quest=40667 Please update with the following text:
UPDATE quest_template SET
Details = 'You have made glorious battle upon our enemies, $N.$B$BThe Horde honors those who bear our banner so proudly. For your might, I bestow upon you this commendation. Wear it well, for your next task will take you to our great Orgrimmar.$B$BIn the Valley of Wisdom, our Warchief waits for tidings of the ongoing Kul Tiran conflict. Tell him all you have done and all you have learned.',
Objectives = 'Speak with Thrall in Orgrimmar about the Kul Tiran threat.',
RequestItemsText = 'Lok-regar no''gal, $r. I bid you welcome.',
OfferRewardText = 'I see you carry Dar''nakk''s commendation. I''ve never known him to grant such accolades freely.$B$BYou did well in defending our coasts, and for that the Horde owes you its gratitude.'
WHERE entry = 40667;
-- https://database.turtle-wow.org/?quest=40671 Please update with the following text:
UPDATE quest_template SET
Title = 'A War Worth Fighting',
Details = 'There are few things I loathe more than needless war, $N. It might be an irony to you, for the title I bear, but I saw what horrors wake in men and women when ashes and bloodshed are all that is left of their lives.$B$BI led my people to Kalimdor because I wished to give our children a better world to grow into. I believe that world is still within reach: Woe betide anyone that would threaten it!$B$BI have sent envoys to treat peace with Alverold, to make him see sense. Return to Dar''nakk, and if Alverold refuses... it can only be victory or death.',
Objectives = 'Report back to Warbringer Dar''nakk in Razor Hill.',
RequestItemsText = 'You return, and not a moment too soon.',
OfferRewardText = 'I advised the Warchief against the sending of envoys. It was no use with a man like Alverold.$B$BOur men were cowardly assailed under the flag of peace. Those treacherous Kul Tirans tied them to stakes, soaked them in tar and burned them living on the shore.$B$BNow we hold nothing back, now we put an end to them!'
WHERE entry = 40671;
-- https://database.turtle-wow.org/?quest=40672 Please update with the following text:
UPDATE quest_template SET
Details = 'There is an island south of the Echo Isles the pinkskins have come to call Anchor''s Edge.$B$BThe time for planning and talking is over.$B$BTravel to Anchor''s Edge with as many comrades as you can find and kill every Kul Tiran armed with either blade or spell. Take the rest prisoner. That is my command!$B$BGO FORTH FOR THE HORDE, FOR BLOOD AND THUNDER!',
Objectives = 'Slay 8 Expedition Sailors, 6 Expedition Clerics, and 10 Expedition Soldiers for Warbringer Dar''nakk in Razor Hill.',
OfferRewardText = 'If my duties did not keep me here, I would have gladly joined you in the thrill of battle.$B$BYou have delivered the Warchief''s reckoning to our enemies. For that, the whole Horde shall sing your praise.'
WHERE entry = 40672;
-- https://database.turtle-wow.org/?quest=40673 Please update with the following text:
UPDATE quest_template SET
Details = 'If we wish to utterly dismantle the Expedition Fleet, then we must crush the head of the snake: Captains, commanders, officers and other figures of interest. The Shattered Hand Clan was kind enough to provide me with a list of their names.$B$BGo to Anchor''s Edge, south of the Echo Isles in southeastern Durotar.$B$BOnce you arrive, you must look for and kill Hydromancer Shaleborn and Deckmaster Darkhollow, along with any breathing officer on the isle .$B$BTheir whole leadership shall crumble!',
Objectives = 'Slay 10 Expedition Officers, Hydromancer Shaleborn, and Deckmaster Darkhollow for Warbringer Dar''nakk in Razor Hill.',
RequestItemsText = 'It must be done, their leaders must die. They, more than the luckless footsoldiers they throw at us, are at fault for the persecution of our people.$B$BDo not forget it.',
OfferRewardText = 'It is done, then. With their chain of command gone, it might take months for their expedition to re-organize.$B$BWe shall not give them such a luxury.'
WHERE entry = 40673;
-- https://database.turtle-wow.org/?quest=40674 Please update with the following text:
UPDATE quest_template SET
Details = 'You have bested their warriors, killed their champions, breached the heart of their stronghold.$B$BOnly one deed remains to be done: Alverold himself must follow Daelin Proudmoore to the grave.$B$BHe is likely to be hiding in the most fortified structure on Anchor''s Edge, guarded by a paladin knight known as Danuvis.$B$BEnd them both, then return to me with Alverold''s head.',
Objectives = 'Slay Sir Danuvis and bring the Head of Alverold to Warbringer Dar''nakk in Razor Hill.',
RequestItemsText = 'I have not forgotten Alverold''s heinous pyres. Give him and the last of his expedition what they deserve!',
OfferRewardText = '<Dar''nakk holds the head of Alverold aloft.>$B$BHere you are, pinkskin. Burn in your hell, knowing it was the Horde who vanquished you.$B$BWe orcs are here to stay, you make sure you remember that when you bring my regards to Daelin!$B$B<Dar''nakk looks back to you.>$B$BNow, you and I shall have a talk.'
WHERE entry = 40674;
-- https://database.turtle-wow.org/?quest=40675 Please update with the following text:
UPDATE quest_template SET
Title = 'A Hero''s Reward',
Details = 'Your dedication to the Horde and your courage in battle are both beyond question.$B$BYou have earned one of the highest honors Orgrimmar can bestow: A Lok''tra shall be composed of your victory at Anchor''s Edge, forevermore to be sung by our people in memory of what transpired there.$B$BBut that cannot be your only reward.$B$BThe Warchief wishes to see you again — he is known to be generous to his loyal warriors.',
Objectives = 'Speak with Thrall in Orgrimmar and claim your reward.',
RequestItemsText = 'Here you are. Hail, $N!',
OfferRewardText = 'I feel sorrow in having to be forced to violence a second time in so few years.$B$BBut I feel no shame in ordering the deaths of our enemies when our sovereignty is infringed. A war in the defense of our people is a just war.$B$BTake pride in your bravery, $N! For I now name you Champion of the Horde and give you this mighty signet as recognition of your triumphs! Bear it with honor!'
WHERE entry = 40675;
-- https://database.turtle-wow.org/?quest=40789 Please update with the following text:
UPDATE quest_template SET
Title = 'The Deeds of Sir Danuvis',
Details = 'It has been a long and exhausting journey. I have fought many battles, and vanquished many foes.$B$BBefore I left my home, I yearned to behold the Cathedral of Light following its restoration. Instead, I was told I would be sent here, rather than to the Embassy in Stormwind. I will not lie to say it hurt me, for I fear I may not see it at the end of all this.$B$BI would still like to pay homage to the Cathedral, however, and I ask you, friend, to do it for me.$B$BBring this tome containing all of my deeds to the Cathedral of Stormwind, and let it be recorded, lest I fall unremembered on this forsaken edge of the world.',
Objectives = 'Bring The Deeds of Sir Danuvis to the Cathedral of Light in Stormwind.',
RequestItemsText = 'Light''s blessings, $N. Have you come to join our service?',
OfferRewardText = 'A Kul Tiran paladin gave you this book?$B$BIn Kul Tiras, the Holy Light is not as widespread as it is in Stormwind and Lordaeron; places where the tradition of the faith has long been established.$B$BYet I am gladdened to see that our church has touched the heart of such a worthy man. I will make sure all its contents are kept safe in our archives.$B$BThank you, and may the Light ever be with you, $N.'
WHERE entry = 40789;
-- https://database.turtle-wow.org/?quest=40689 Please update with the following text:
UPDATE quest_template SET
Title = 'Theramore Deserters',
Details = 'We have learned that desertion is rife in the ranks of Theramore. Human weakness makes itself clear to see.$B$BBut do not take those to be good news, $c, as those cravens are only quitting their posts to come harry us here.$B$BAlready their rabble draws close past the border established by the truce in Dustwallow. We cannot allow them to go any further.$B$BVenture southeast of Brackenwall and punish them. Ensure they think twice about trespassing again.',
Objectives = 'Find the Deserter''s Hideout and slay 9 Deserter Turncoats and 9 Deserter Exiles for Nazeer Bloodpike in Brackenwall Village.',
RequestItemsText = 'Have the wretches been dealt with, $c?',
OfferRewardText = 'You fight well and kill better, $N. With you at our side, who knows, we might even conquer Theramore a second time over!'
WHERE entry = 40689;
-- https://database.turtle-wow.org/?npc=61026 Please update with the following name:
UPDATE creature_template SET Name = 'Warbringer Dar''nakk' WHERE entry = 61026;
-- https://database.turtle-wow.org/?npc=60902 Please update with the following name:
UPDATE creature_template SET Name = 'Sir Danuvis' WHERE entry = 60902;