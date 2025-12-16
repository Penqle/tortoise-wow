UPDATE quest_template SET NextQuestInChain = 40756 WHERE entry = 40755;
UPDATE quest_template SET NextQuestInChain = 40757 WHERE entry = 40756;
UPDATE quest_template SET NextQuestInChain = 40758 WHERE entry = 40757;
UPDATE quest_template SET NextQuestInChain = 40759 WHERE entry = 40758;
UPDATE quest_template SET NextQuestInChain = 40760 WHERE entry = 40759;
UPDATE quest_template SET NextQuestInChain = 40761 WHERE entry = 40760;
UPDATE quest_template SET NextQuestInChain = 40762 WHERE entry = 40761;

UPDATE item_template SET Description = 'An old spell is still emanating with arcane runes and the incantation is too worn to read properly.' WHERE entry = 51600;

UPDATE quest_template SET
Details = '',
RequestItemsText = 'So then, back for another Gargantuan Banana, are you? I know: The flavor is so spectacular, I couldn''t get enough of it!$B$BAll I require from you is 3 Ripe Tel''Abim Bananas and a single Dream Dust. Once you bring me the materials, I can transmute another big banana for you. Yes, it''s that simple!',
OfferRewardText = '<Within a matter of seconds, the gnome processes the bananas and procures a Gargantuan Bananas before your eyes.>$B$BThere you have it, one transmuted Gargantuan Banana. If you ever want more bananas, stop by any time!',
Objectives = ''
WHERE entry = 40739;

UPDATE quest_template SET
Details = '',
RequestItemsText = 'I have refined my transmutation process and even expanded my lab! The ability to create multiple Gargantuan Bananas at once is now a very real possibility. All I need, of course, is the required materials to begin the process.$B$BTo make 5 Gargantuan Bananas, I will need 15 Ripe Tel''Abim Bananas as well as 5 Dream Dust. If you need a bundle of those giant bananas, bring me those materials and I''ll make your dreams come true!',
OfferRewardText = '<Within a matter of seconds, the gnome processes the bananas and procures five Gargantuan Bananas before your eyes.>$B$BSee? It''s all refined now! If you ever want more bananas, stop by any time!',
Objectives = ''
WHERE entry = 40740;

UPDATE item_template SET Name = 'Strange Tel''Abim Banana' WHERE entry = 60961;
UPDATE quest_template SET Title = 'The Tel''Abim Banana Transmutation' WHERE entry = 40739;
UPDATE quest_template SET Title = 'Tel''Abim Banana Transmutations!' WHERE entry = 40740;

UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE id = 2010915;

UPDATE quest_template SET RewRepValue1 = 100, RewRepFaction1 = 1010 WHERE entry = 70048;

UPDATE quest_template SET NextQuestInChain = 40750 WHERE entry = 40749;
UPDATE quest_template SET NextQuestInChain = 40751 WHERE entry = 40750;
UPDATE quest_template SET Title = 'To Heal A Soul' WHERE entry = 40751;

UPDATE item_template SET Description = 'You cannot make heads or tails of this text, but you have the sense that it is important.' WHERE entry = 60989;

UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE id = 2010968;

UPDATE item_template SET
Name = 'Tel''Abim Sand',
Description = 'Sand, coarse and fairly full of small rocks.'
WHERE entry = 81301;

UPDATE quest_template SET
Details = 'As you may have divined, we contrive to infiltrate you into the ranks of the Scarlet Crusade.$B$BUpon the uniform you''ve brought me I placed an illusion charm, as well as a few greater cloaking wards to keep the enchantment from easy detection.$B$BAll that is left is for you to introduce yourself as a novice to the recruiters in Tyr''s Hand.$B$BOne such recruiter should be Mavel Brightwood.$B$BI wish you luck, $N. Have your wits about you and find out what you can of their meddlesome alchemists.'
WHERE entry = 80729;

UPDATE quest_template SET
Details = 'I know all of the draught that clouds the minds of my warriors, your collusion with my dreadlord and the deathguard you''ve squandered at his behest.$B$BBut perhaps you have grown fond of Varimathras. Would you like to be one of his playthings? One word and I will make sure you are his. Forever.$B$BNo? You yet value your soul? Pity.$B$BThen you will do as I say and go to Tyr''s Hand, in the Eastern Plaguelands. Fetch a Scarlet uniform from those zealous fools and bring it to Gunther. He will know the rest.$B$BGo now, begone from my sight.',
Objectives = 'Travel to Tyr''s Hand in the Eastern Plaguelands, obtain a Scarlet Initiate Uniform, then return to Gunther Arcanus on the isle of Brightwater Lake.',
RequestItemsText = 'Yes, the Banshee Queen forewarned me of your arrival. Do you have the uniform at hand?$B$BIt might make amends for the unfortunate feelings I hear you roused in her.',
OfferRewardText = 'That will suffice. Lay it here for a moment. It will not take me long.'
WHERE entry = 80728;

UPDATE quest_template SET
Details = 'I have prepared a report of our findings to be delivered to the Dark Lady.$B$BShe will little like what she shall read, and it would be a shame if her wrath were to be your end.$B$BSo kneel before her, appease her, serve her as loyally as you served me...but do not forget to whom you belong.',
RequestItemsText = '<Sylvanas takes the report you give her. She does not open it.>',
OfferRewardText = 'Do you think me a fool, $N? Did you think I would be unaware of what occurs within my own realm, within my own throne room?$B$B<Sylvanas shreds the report with her hands.>'
WHERE entry = 80727;

UPDATE quest_template SET
Details = 'The potion brewed by the Scarlets that you retrieved is known as the Draught of Dormant Death, or Mortudiant as we scholars prefer.$B$BIt was first conceived during the Second War, in Dalaran, to aid in countering the unhallowed might of Gul''dan''s death knights.$B$BIt can only be concocted with a specific alchemical implement commonly used in transmutation known as the Philosopher''s Stone. Which, unfortunately, I neither possess nor know how to emulate.$B$BFor now, you should return to your masters in the Undercity with what you''ve learned. I will keep the potion and see whether I can learn anything else.',
RequestItemsText = 'My loyal $r returns.$B$BGo on, speak.',
OfferRewardText = 'Bah, draughts, potions and stones. Could there be anything more tedious?$B$BAt least that so-called ''lich'' made himself useful. As did you.$B$BYou have pleased me once more.'
WHERE entry = 80726;

UPDATE quest_template SET
Details = 'I sometimes long for Dalaran and of the days I once lived as no more than a mere student of the arcane arts.$B$BWhen the Scourge shackled me to their dominion, my old memories were the only tether that kept me from losing myself utterly.$B$BI do not intend to burden you with my life''s story, $N, but I already know what this vial is and how it was made, yet I need you to do me a favor before I tell you. Think of it as an equivalent exchange.$B$BGo to the decadent town of Ambermill: Behind its town hall I buried a locket and sealed it with magic.$B$BI will give you a scroll that will erase its warding spell, retrieve the locket, and return it to me. Then we shall talk.',
OfferRewardText = 'You had to battle a mage for it?$B$BI presume he failed to speak his name as you slew him, but that ought to be no concern of ours.$B$BYou fulfilled your end of the bargain, $N, and it is now my turn to repay the debt.'
WHERE entry = 80725;

UPDATE quest_template SET
Details = 'I did perform a few precursory tests on the substance you have with you. All I have been able to discern is that the potion contains Peacebloom and Ghost Hair.$B$BBut that cannot answer for the catatonic state it forces upon undead.$B$BIt is my hypothesis that this concoction has been tampered with some manner of higher spellcraft, and that is beyond my abilities to solve.$B$BThere is only one who can give us the answers we need. He dwells at the centre of Brightwater Lake, east of Brill.$B$BApproach him with great reverence and measure your words accordingly.',
OfferRewardText = 'If your tale and the effects of this potion are true, you were right to come to me.$B$BThis is a weapon that should never lay in the hands of the Scarlet Crusade. As for what it is, you will have to indulge me momentarily.'
WHERE entry = 80724;

UPDATE quest_template SET
Details = 'So this potion is the crux of the Scarlet schemes. Dull, crude and yet irritatingly potent.$B$BI myself do not dabble in the low craft of alchemy. Fortunately, our Queen''s Royal Apothecaries favor the art of pondering alembics and grinding grass.$B$BVenture to the Apothecarium, find Apothecary Zwinker and show her what you have found. She is a creature of mine.$B$BGo, be quick and be discreet.',
RequestItemsText = 'Zwinker...Yes, I can see that Lord Varimathras sent you.',
OfferRewardText = 'My name is Zinge, $c.$B$BShow me what you''ve brought and I shall help you as I can, if such is my lord''s command.'
WHERE entry = 80723;

UPDATE quest_template SET
Details = 'If we truly want to unravel the truth of this ploy, we will have to spur the Scarlets to play their cards into our hands.$B$BFor this purpose, I have pressed a Deathguard into your service. His name is Maverin, or Moverish — human names are a blight to my tongue.$B$BYou will find him in the graveyard near the path to the Monastery in the north. Have him play the bait, he is not a valuable asset, then slay the Scarlets and seize whatever you can find of this curious new weapon in their arsenal.$B$BDo not disappoint me.',
RequestItemsText = 'You return already.$B$BHow is Meverius? Not too tarnished, I hope?',
OfferRewardText = 'I can smell the sweet stench of man-blood on you, $N. Good, very good.$B$BAs for Deathguard Mavonius there, the Undertakers and Apothecaries can tend to him, and I expect that to be the last of your concerns.'
WHERE entry = 80722;

UPDATE quest_template SET
Details = 'Word has come to me of strange occurrences on the frontlines.$B$BSome of our Queen''s finest servants have gone missing. Too many, too swiftly and with conspicuous precision to be mere ill luck in warfare.$B$BMy Deathstalkers are preoccupied with far direr tasks, hence I would have you travel to Brill, the Sepulcher and Tarren Mill to collect the accounts of the local executors in their stead.$B$BReturn to me, and if I am pleased, I might just reward you.',
RequestItemsText = 'I will empty your veins if you dare dawdle before me for one more fruitless instant.',
OfferRewardText = 'The fanatics of the Scarlet Crusade are behind this?$B$BHere I thought such cunning to be bereaved of their agitable little brains.'
WHERE entry = 80721;

UPDATE quest_template SET
Details = '$N, is it?$B$BLord Varimathras tasked me to seek you out at once.$B$BI believe you know where to find him — he stands by the Dark Lady, forever bound to linger in her shadow.$B$BAnd now it is his shadow that looms over you; I would not try his patience.',
RequestItemsText = 'Kneel all you like, mortal. I do so enjoy a good groveling.',
OfferRewardText = 'Ah, $N, here to do my bidding. I expect you to be quicker if you deem yourself worthy of remaining in my service.'
WHERE entry = 80720;

update quest_template set RequestItemsText = 'The golem needs to remain intact for this to work.' where entry = 40476;

update item_template set class = 4 where entry = 60417; -- Skull of Tham
update item_template set class = 4 where entry = 80724; -- Cell Heater

UPDATE quest_template SET
RequestItemsText = '...',
OfferRewardText = '<Lorax laughs.>'
WHERE entry = 5126;

update item_template set spellcharges_1 = -1, spellcooldown_1 = 3600000 where entry = 8546; -- Powerful Smelling Salts

-- Buff White Items to Uncommon Items
-- Tailoring
update item_template set quality = 2, disenchant_id = 4, bonding = 1, armor = 34, buy_price = 6220, sell_price = 1244, stat_type1 = 5, stat_value1 = 8, spellid_1 = 7701, spelltrigger_1 = 1 where entry = 7048; -- Azure Silk Hood
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 49, buy_price = 16648, sell_price = 3329, stat_type1 = 5, stat_value1 = 8, spellid_1 = 9294, spelltrigger_1 = 1 where entry = 7058; -- Crimson Silk Vest
update item_template set quality = 2, disenchant_id = 5, bonding = 1, armor = 36, buy_price = 7787, sell_price = 1257, stat_type1 = 7, stat_value1 = 9, stat_type2 = 6, stat_value2 = 7 where entry = 7050; -- Silk Headband
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 45, buy_price = 19495, sell_price = 3899, stat_type1 = 5, stat_value1 = 11, stat_type2 = 6, stat_value2 = 10 where entry = 7062; -- Crimson Silk Pantaloons
update item_template set quality = 2, disenchant_id = 1, bonding = 1, armor = 15, buy_price = 1012, sell_price = 253, stat_type1 = 5, stat_value1 = 2 where entry = 2584; -- Woolen Cape
update item_template set quality = 2, disenchant_id = 4, bonding = 1, armor = 29, buy_price = 4480, sell_price = 896, stat_type1 = 7, stat_value1 = 4, stat_type2 = 6, stat_value2 = 4 where entry = 4315; -- Reinforced Woolen Shoulders
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 30, buy_price = 1792, sell_price = 358, stat_type1 = 7, stat_value1 = 5 where entry = 2582; -- Green Woolen Vest
update item_template set name = 'Azure Silk Shoulders' where entry = 8795; -- Azure Shoulders
-- Leatherworking
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 53, buy_price = 2735, sell_price = 547, stat_type1 = 3, stat_value1 = 5 where entry = 2315; -- Dark Leather Boots
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 18, buy_price = 2808, sell_price = 561, stat_type1 = 3, stat_value1 = 4 where entry = 2316; -- Dark Leather Cloak
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 106, buy_price = 24677, sell_price = 4935, stat_type1 = 7, stat_value1 = 8, stat_type2 = 6, stat_value2 = 8, stat_type3 = 3, stat_value3 = 8 where entry = 5739; -- Barbaric Harness
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 84, buy_price = 6780, sell_price = 1356, stat_type1 = 7, stat_value1 = 5, stat_type2 = 6, stat_value2 = 4, stat_type3 = 3, stat_value3 = 5 where entry = 2314; -- Toughened Leather Tunic
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 40, buy_price = 969, sell_price = 193, stat_type1 = 5, stat_value1 = 2, stat_type2 = 7, stat_value2 = 2 where entry = 4246; -- Fine Leather Belt
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 51, buy_price = 1926, sell_price = 385, stat_type1 = 5, stat_value1 = 3, stat_type2 = 7, stat_value2 = 2 where entry = 2307; -- Fine Leather Boots
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 66, buy_price = 11497, sell_price = 2299, stat_type1 = 5, stat_value1 = 8, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 5966; -- Guardian Gloves
-- Blacksmithing
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 91, buy_price = 1563, sell_price = 312, stat_type1 = 4, stat_value1 = 3, stat_type2 = 7, stat_value2 = 2 where entry = 2857; -- Runed Copper Belt
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 72, buy_price = 1865, sell_price = 373, stat_type1 = 4, stat_value1 = 2, stat_type2 = 7, stat_value2 = 2 where entry = 2854; -- Runed Copper Bracers
update item_template set quality = 2, disenchant_id = 5, bonding = 1, armor = 91, buy_price = 8859, sell_price = 1771, stat_type1 = 4, stat_value1 = 4, stat_type2 = 7, stat_value2 = 5 where entry = 3835; -- Green Iron Bracers
update item_template set quality = 2, disenchant_id = 6, bonding = 1, armor = 96, buy_price = 12487, sell_price = 2497, stat_type1 = 4, stat_value1 = 7, spellid_1 = 48029, spelltrigger_1 = 1 where entry = 6040; -- Golden Scale Bracers
update item_template set quality = 2, disenchant_id = 7, bonding = 1, armor = 395, buy_price = 19824, sell_price = 3964, stat_type1 = 7, stat_value1 = 14 where entry = 7922; -- Steel Helm
update item_template set quality = 2, disenchant_id = 1, bonding = 1, armor = 76, buy_price = 728, sell_price = 182, stat_type1 = 4, stat_value1 = 2, stat_type2 = 7, stat_value2 = 1 where entry = 3472; -- Runed Copper Gauntlets
-- Buffing Rare Recipe Crafts to Rare Items
update item_template set quality = 3, disenchant_id = 3, armor = 50, max_durability = 90, dmg_min1 = 45, dmg_max1 = 88, buy_price = 12576, sell_price = 25141, stat_type1 = 7, stat_type2 = 4, stat_value1 = 8 where entry = 7946; -- Runed Mithril Hammer
update item_template set quality = 3, disenchant_id = 44, armor = 83, max_durability = 50, stat_value2 = 5, stat_value1 = 12, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 7390; -- Dusky Boots
update item_template set quality = 3, disenchant_id = 44, armor = 44, max_durability = 50, buy_price = 15862, sell_price = 3172, stat_value1 = 18, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 4393; -- Craftsman's Monocle
update item_template set quality = 3, disenchant_id = 44, armor = 174, max_durability = 60, buy_price = 30915, sell_price = 6183, stat_value1 = 13, stat_value2 = 0, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 3847; -- Golden Scale Boots
update item_template set quality = 3, disenchant_id = 44, armor = 177, max_durability = 70, stat_value1 = 10, stat_value2 = 0, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 3841; -- Golden Scale Shoulders
update item_template set quality = 3, disenchant_id = 46, armor = 213, max_durability = 70, buy_price = 51825, sell_price = 10365, stat_value1 = 0, stat_value2 = 0, spellid_1 = 12310, spelltrigger_1 = 1 where entry = 7932; -- Mithril Scale Shoulders
update item_template set quality = 3, disenchant_id = 43, armor = 62, max_durability = 35, buy_price = 10277, sell_price = 2055, stat_type2 = 0, stat_value2 = 0, stat_value1 = 9, spellid_1 = 9398, spelltrigger_1 = 1, spellid_2 = 21360, spelltrigger_2 = 1 where entry = 4258; -- Guardian Belt
update item_template set quality = 3, disenchant_id = 44, armor = 68, max_durability = 35, stat_value1 = 14 where entry = 4264; -- Barbaric Belt
update item_template set quality = 3, disenchant_id = 44, armor = 98, max_durability = 60, stat_value1 = 14, spellid_1 = 18676, spelltrigger_1 = 1 where entry = 8174; -- Comfortable Leather Hat
update item_template set quality = 3, disenchant_id = 48, armor = 59, max_durability = 50, spellid_1 = 18052, spelltrigger_1 = 1 where entry = 15999; -- Spellpower Goggles Xtreme Plus
update item_template set quality = 3 where entry = 16045; -- Schematic: Spellpower Goggles Xtreme Plus
update item_template set quality = 2, disenchant_id = 8, armor = 46, max_durability = 45, spellid_1 = 14248, spelltrigger_1 = 1 where entry = 10502; -- Spellpower Goggles Xtreme
update item_template set quality = 2 where entry = 10605; -- Schematic: Spellpower Goggles Xtreme
-- Crafted Pseudo-Set Buffs
-- Guardian Set
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 11, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 4256; -- Guardian Tunic
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 6, stat_type1 = 5, spellid_1 = 21360, spelltrigger_1 = 1 where entry = 5965; -- Guardian Cloak
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 21360, spelltrigger_1 = 1, name = 'Guardian Bracers' where entry = 4260; -- Guardian Leather Bracer
update item_template set name = 'Pattern: Guardian Bracers' where entry = 4300; -- Pattern: Guardian Leather Bracer
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 9, spellid_1 = 21361, spelltrigger_1 = 1 where entry = 5962; -- Guardian Pants
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 21361, spelltrigger_1 = 1, name = 'Guardian Gloves' where entry = 5966; -- Guardian Gloves
-- Mithril Scale Set
update item_template set stat_type1 = 3 where entry = 7924; -- Mithril Scale Bracers
update item_template set stat_type1 = 7 where entry = 7920; -- Mithril Scale Pants
update item_template set stat_type1 = 3 where entry = 7925; -- Mithril Scale Gloves
-- Golden Scale Set
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48034, spelltrigger_1 = 1 where entry = 3837; -- Golden Scale Coif
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48031, spelltrigger_1 = 1 where entry = 3845; -- Golden Scale Cuirass
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48029, spelltrigger_1 = 1 where entry = 9366; -- Golden Scale Gauntlets
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 48030, spelltrigger_1 = 1 where entry = 3843; -- Golden Scale Leggings
-- Rough Bronze Set
update item_template set quality = 2, disenchant_id = 2, bonding = 1, armor = 111, buy_price = 2345, sell_price = 469, stat_type1 = 7, stat_value1 = 3, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 6350; -- Rough Bronze Boots
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 177, buy_price = 6562, sell_price = 1312, stat_type1 = 7, stat_value1 = 6, spellid_1 = 7517, spelltrigger_1 = 1 where entry = 2866; -- Rough Bronze Cuirass
update item_template set quality = 2, disenchant_id = 3, bonding = 1, armor = 130, buy_price = 1276, sell_price = 319, stat_type1 = 7, stat_value1 = 5, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 3480; -- Rough Bronze Shoulders
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 7516, spelltrigger_1 = 1 where entry = 2865; -- Rough Bronze Leggings
update item_template set stat_value1 = 3, spellid_1 = 7514, spelltrigger_1 = 1 where entry = 2867; -- Rough Bronze Bracers
-- Runic Leather Set
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 15092; -- Runic Leather Bracers
update item_template set stat_value1 = 18, stat_type2 = 0, stat_value2 = 0, spellid_1 = 23727, spelltrigger_1 = 1, spellid_2 = 9342, spelltrigger_2 = 1 where entry = 15090; -- Runic Leather Armor
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 15093; -- Runic Leather Belt
update item_template set stat_type1 = 5, stat_value1 = 13, stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 15091; -- Runic Leather Gauntlets
update item_template set stat_type2 = 0, stat_value2 = 0, spellid_1 = 9342, spelltrigger_1 = 1 where entry = 15094; -- Runic Leather Headband
update item_template set stat_type1 = 5, stat_value1 = 20, stat_type2 = 0, stat_value2 = 0, spellid_1 = 23727, spelltrigger_1 = 1, spellid_2 = 9342, spelltrigger_2 = 1 where entry = 15095; -- Runic Leather Pants
update item_template set stat_value1 = 12, stat_type2 = 0, stat_value2 = 0, spellid_1 = 9416, spelltrigger_1 = 1, spellid_2 = 25975, spelltrigger_2 = 1 where entry = 15096; -- Runic Leather Shoulders
-- Tough Scorpid Set
update item_template set stat_type2 = 7 where entry = 8209; -- Tough Scorpid Boots
update item_template set stat_type2 = 7 where entry = 8205; -- Tough Scorpid Bracers
update item_template set stat_type2 = 7 where entry = 8203; -- Tough Scorpid Breastplate
update item_template set stat_type2 = 7 where entry = 8204; -- Tough Scorpid Gloves
update item_template set stat_type2 = 7 where entry = 8208; -- Tough Scorpid Helm
update item_template set stat_type2 = 7 where entry = 8206; -- Tough Scorpid Leggings
update item_template set stat_type2 = 7 where entry = 8207; -- Tough Scorpid Shoulders
-- Heavy Scorpid Set
update item_template set stat_type2 = 4, stat_value1 = 14, stat_value2 = 9 where entry = 15082; -- Heavy Scorpid Belt
update item_template set item_level = 55, required_level = 50, armor = 130, stat_type2 = 4, stat_value1 = 10, stat_value2 = 6 where entry = 15077; -- Heavy Scorpid Bracers
update item_template set item_level = 58, required_level = 53, armor = 313, stat_type2 = 4, stat_value1 = 14, stat_value2 = 13, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15076; -- Heavy Scorpid Vest
update item_template set item_level = 60, required_level = 55, armor = 201, stat_type2 = 4, stat_value1 = 14, stat_value2 = 11 where entry = 15078; -- Heavy Scorpid Gauntlets
update item_template set stat_type2 = 4, stat_value1 = 16, stat_value2 = 11, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15080; -- Heavy Scorpid Helm
update item_template set stat_type2 = 4, stat_value1 = 19, stat_value2 = 12 where entry = 15079; -- Heavy Scorpid Leggings
update item_template set stat_type2 = 4, stat_value1 = 10, stat_value2 = 9, spellid_1 = 13669, spelltrigger_1 = 1 where entry = 15081; -- Heavy Scorpid Shoulders
-- Heavy Scorpid Recipe Bumps
update item_template set item_level = 55, required_skill_rank = 275, sell_price = 4000, buy_price = 16000  where entry = 15724; -- Pattern: Heavy Scorpid Bracers
update item_template set item_level = 58, required_skill_rank = 290, sell_price = 6000, buy_price = 24000 where entry = 15727; -- Pattern: Heavy Scorpid Vest
update item_template set item_level = 60, required_skill_rank = 300, sell_price = 10000, buy_price = 40000 where entry = 15738; -- Pattern: Heavy Scorpid Gauntlets
-- Blue Dragon Mail Set
update item_template set stat_value1 = 21, stat_value2 = 0, stat_type2 = 0, spellid_1 = 14248, spelltrigger_1 = 1 where entry = 15048; -- Blue Dragonscale Breastplate
update item_template set stat_value2 = 0, stat_type2 = 0, spellid_1 = 15714, spelltrigger_1 = 1 where entry = 20295; -- Blue Dragonscale Leggings
update item_template set stat_value1 = 17, stat_value2 = 0, stat_type2 = 0, spellid_1 = 9345, spelltrigger_1 = 1 where entry = 15049; -- Blue Dragonscale Shoulders
-- Runecloth Set
update item_template set stat_value1 = 8, stat_value2 = 9, spellid_1 = 9415, spelltrigger_1 = 1 where entry = 13856; -- Runecloth Belt
update item_template set stat_value1 = 9, stat_value2 = 9, spellid_1 = 9416, spelltrigger_1 = 1 where entry = 13864; -- Runecloth Boots
update item_template set stat_value1 = 6, stat_value2 = 6, spellid_1 = 9398, spelltrigger_1 = 1 where entry = 13860; -- Runecloth Cloak
update item_template set stat_value1 = 14, spellid_1 = 9343, spelltrigger_1 = 1 where entry = 13866; -- Runecloth Headband
update item_template set stat_value1 = 16, stat_value2 = 11, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 13865; -- Runecloth Pants
update item_template set stat_value1 = 11, stat_value2 = 12, spellid_1 = 9342, spelltrigger_1 = 1 where entry = 13858; -- Runecloth Robe
update item_template set stat_value1 = 11, stat_value2 = 12, spellid_1 = 9417, spelltrigger_1 = 1 where entry = 13867; -- Runecloth Shoulders
update item_template set stat_value1 = 8, stat_value2 = 10, spellid_1 = 9318, spelltrigger_1 = 1 where entry = 13857; -- Runecloth Tunic
-- Extra Fixes
update item_template set stat_type2 = 0, stat_value2 = 0, stat_value1 = 0, stat_type1 = 0, spellid_1 = 0, spelltrigger_1 = 0 where entry = 3965; -- Thick Leather Gloves

UPDATE `spell_template` SET `effectBasePoints1`='29', `description`='Increases your attack speed by $s1% for $d but become stunned for $46267d afterward.' WHERE (`entry`='46266');

 UPDATE `spell_template` SET `effectBasePoints1`='29', `description`='Increases chance to dodge by $s1% for $d.' WHERE (`entry`='46296');
 
UPDATE `creature` SET `spawntimesecsmin` = 350, `spawntimesecsmax` = 350 WHERE `guid` = 92852;
UPDATE `creature` SET `spawntimesecsmin` = 350, `spawntimesecsmax` = 350 WHERE `guid` = 92850;

UPDATE `quest_template` SET `Type` = 1 WHERE `entry` = 40785;

UPDATE `item_template` SET `display_id` = 34954 WHERE `entry` = 61094;

UPDATE `item_template` SET `display_id` = 25481 WHERE `entry` = 61160;
UPDATE `item_template` SET `display_id` = 1116 WHERE `entry` = 61159;
UPDATE `item_template` SET `display_id` = 24221 WHERE `entry` = 61157;

UPDATE `quest_template` SET `ReqItemId2` = '16168 ' WHERE `entry` = 40798;

UPDATE `quest_template` SET `RewRepFaction1` = 0, `RewRepValue1` = 0 WHERE `entry` = 969;

update quest_template set QuestFlags = 40648  where entry = 40519;

update item_template set stackable = 10 where entry = 59997; -- Dwarven Writings
UPDATE `quest_template` SET `ReqItemCount1` = 10 WHERE `entry` = 80400;

UPDATE `quest_template` SET `Objectives` = 'Search for Najhaz the Raider, kill him, and reclaim the Eldarath Harmonization Gem for Keeper Iselus at the Tower of Eldara in Azshara.', `Details` = 'I have communed with those closest to me once again, and I am thankful they are safe. More work needs to be done, and hopefully you can be of assistance to me. The Eldarath Harmonization Gem was stolen a long time ago, a band of Naga Raiders led by one named Najhaz. He was able to break my seal upon the tower door and take the Harmonization Gem before I could return to stop him.$B$BIf we Keepers of Azshara are ever meant to travel long distances within the area, this Gem will need to be returned. No doubt that Najhaz the Raider will be among his kin along the shore to the west, kill him, and reclaim the Harmonization Gem for me.' WHERE `entry` = 40245;

UPDATE `creature_template` SET `health_min` = 2554, `health_max` = 2554, `armor` = 1350 WHERE `entry` = 70023;
UPDATE `creature_template` SET `health_min` = 2624, `health_max` = 2624, `armor` = 961 WHERE `entry` = 70027;

UPDATE `quest_template` SET `Details` = 'We sent out a crew weeks ago to begin doing some studies over the ruins down west and they haven\'t showed up yet, not even a peep.$B$BThe desert is a dangerous place so now rumor is going around they may have met some terrible fate. It is possible I suppose!$B$BWhat is really important is what we sent out with them, you see, when we trust someone, we usually give them some valueable gear, something worth a lot of coin, you dig?$B$BI need you to go out there and find that crew, or more importantly, get the Turbo-Scan Filtronomitor from whatever is left!$B$BThey should have been down near Eastmoon Ruins, check around there.' WHERE `entry` = 40589;

UPDATE `item_template` SET `max_count` = 1 WHERE `entry` = 60559;

UPDATE `creature_template` SET `faction` = 79 WHERE `entry` = 80242;

UPDATE `spell_template` SET `description` = 'Right Click to summon and dismiss your Little Cow.' WHERE `entry` = 46482;
UPDATE `spell_template` SET `description` = 'Summons and dismisses a rideable Panther. This mount changes depending on your Riding skill.' WHERE `entry` = 10787;

update item_template set disenchant_id = 7 where entry = 81342; -- Archivist Mantle

UPDATE quest_template SET NextQuestInChain = 40713 WHERE entry = 40712;
UPDATE quest_template SET NextQuestInChain = 40714 WHERE entry = 40713;
UPDATE quest_template SET NextQuestInChain = 40715 WHERE entry = 40714;
UPDATE quest_template SET NextQuestInChain = 40716 WHERE entry = 40715;
UPDATE quest_template SET NextQuestInChain = 40717 WHERE entry = 40716;

REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (4310, 'Tel\'Abim - Tel Co. Basecamp');
REPLACE INTO `areatrigger_template` (`id`, `map_id`, `x`, `y`, `z`, `radius`) VALUES (4310, 1, -8849.208, 
-6506.475, 12.809, 15); 

DELETE FROM creature_questrelation WHERE quest = 80720 AND id = 5653;

REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (14402, 80720);
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (14403, 80720);
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (14404, 80720);
