UPDATE quest_template SET
Details = 'I am Elaroth Ranworth, and it is my charge to keep the fire of this lighthouse burning bright. Before the war, we relied on a steady supply of oil from Southshore.$B$BEver since the Greymane Wall was sealed shut, this lighthouse has been burning on what excess I could find. It is only a matter of time before the light will cease burning, and with it, I will vanish from this world.$B$BI am not yet ready to depart, and so I am desperate. Lordaeron has been consumed by the plague, but whispers tell me of a new bastion of human power, far away to the west.$B$BI ask of you to visit the city called Theramore, speak with their dockmaster, and see if there is any oil that can be given to me.'
WHERE entry = 40929;

UPDATE quest_template SET
Details = 'Huh, now that you mention it, we do have a supply of old oil that has been lingering around here for some years. I hate to tell you this, but it was taken when the deserters left the city and went to found their camp in the Quagmire.$B$BI have no doubts their purposes for the highly flammable liquid are nefarious. That or they desire to make some coin off the valuable resource. There ain''t many active sources working these days.$B$BIf you want the oil, you''ll have to recover it from those deserters.',
RequestItemsText = 'Have you recovered the oil?',
OfferRewardText = 'Hmm, it has been some time since I last laid eyes on this drum, but I think this is it.'
WHERE entry  = 40930;

UPDATE quest_template SET
Details = 'Since you went to such lengths to recover this oil, I see no reason not to grant it to you for your return to Gilneas. Assuming you have a means to actually enter the place. I have heard rumors of a civil war brewing behind the great wall, so I suggest you be careful.',
OfferRewardText = 'Relief. I can say with certainty that I now feel an emotion besides fear.$B$BI was cursed long ago to forever tend to this fire. Should the flame ever extinguish, I would vanish forever from this world. I cannot properly describe the fear I feel about what would happen should the flame go out. Whilst I am bound to this spiritual form, I dare not think what comes after; it is the unknown that I truly dread.$B$BI would give anything to suffer as I am now than to drift away forever, forgotten for all time.'
WHERE entry = 40931;

REPLACE INTO creature_onkill_reputation VALUES (8216, 471, 0, 7, 0, 25, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (8636, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (7996, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91784, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91785, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91786, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91787, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91788, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91789, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (91790, 471, 0, 7, 0, 5, 0, 0, 0, 1);
REPLACE INTO creature_onkill_reputation VALUES (61502, 471, 0, 7, 0, 25, 0, 0, 0, 1);

UPDATE item_template SET Allowable_Class = 0, Flags = 2048 WHERE entry = 91762;

UPDATE item_template SET Buy_Price = 15094, Sell_Price = 3018 WHERE entry = 51719;

-- fix wand dps (Dragunovi)
update item_template set dmg_min1 = 43, dmg_max1 = 81 where entry = 81290; -- Diathorus' Claw
update item_template set dmg_min1 = 30, dmg_max1 = 55 where entry = 80829; -- Starcaller
