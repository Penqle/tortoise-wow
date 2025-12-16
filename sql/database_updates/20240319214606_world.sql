-- Quest: "The Tel'Abim Banana Transmutation!" rewards of "Gargantuan Tel'Abim Banana" to 3
UPDATE `quest_template` SET `RewItemCount1` = '3' WHERE (`entry` = '40739');

-- Quest: "Tel'Abim Banana Transmutations!" rewards of "Gargantuan Tel'Abim Banana" to 15
UPDATE `quest_template` SET `RewItemCount1` = '15' WHERE (`entry` = '40740');

-- Razzashi Serpent: adding immunity to Dazed, Snare and Root 
UPDATE `creature_template` SET `mechanic_immune_mask` = '67109952' WHERE (`entry` = '11371');


