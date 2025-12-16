-- Trainer's ability description text for the ability Detection should now show the proper information.
-- Trainer's ability description text for the ability Agitating Poison should now show the proper information.
-- Agitating Poison I is now named Agitating Poison like other rogue spells where only one ability exists. 
-- Trainer's ability description text for the ability Deadly Throw should now show the proper information.
-- Deadly Throw no longer shows a rank like other rogue spells where only one ability exists.

UPDATE spell_template SET description = '' WHERE entry = 47297;
UPDATE spell_template SET name = 'Agitating Poison', description = '' WHERE entry = 47312;
UPDATE spell_template SET name = 'Agitating Poison' WHERE entry = 45611;
UPDATE spell_template SET nameSubtext = '', description = '' WHERE entry = 47274;
UPDATE spell_template SET nameSubtext = '' WHERE entry = 45605;
UPDATE spell_template SET description = '' WHERE entry = 47298;

-- Karazhan 10 loot:

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 
-- Brood Queen Araxxna (NPC ENTRY 61221):
-- Group 1:
(61221, 61243, 20, 1, 1, 1, 0), -- Vial of Potent Venoms
(61221, 61268, 20, 1, 1, 1, 0), -- Sigil of the Brood
(61221, 61260, 20, 1, 1, 1, 0), -- Flamescorched Hood
(61221, 61270, 20, 1, 1, 1, 0), -- Pendant of Shadra's Chosen
(61221, 61297, 20, 1, 1, 1, 0), -- Marshtreader Slippers
-- Group 2:
(61221, 61244, 14.28, 2, 1, 1, 0), -- Leggings of Shrouding Winds
(61221, 61245, 14.28, 2, 1, 1, 0), -- Bracers of Brambled Vines
(61221, 61269, 14.28, 2, 1, 1, 0), -- Clutchweave Robe
(61221, 61272, 14.28, 2, 1, 1, 0), -- Deepstone Boots
(61221, 61278, 14.28, 2, 1, 1, 0), -- Vampiric Kris
(61221, 61283, 14.28, 2, 1, 1, 0), -- Darkgrasp Gloves
(61221, 61285, 14.28, 2, 1, 1, 0), -- Duskwrapped Leggings
-- Lord Blackwald II (NPC ENTRY 61222):
-- Group 1:
(61222, 61262, 20, 1, 1, 1, 0), -- Royal Signet of Blackwald II
(61222, 61266, 20, 1, 1, 1, 0), -- Rune Infused Gauntlets
(61222, 61246, 20, 1, 1, 1, 0), -- Sabatons of the Endless March 
(61222, 61247, 20, 1, 1, 1, 0), -- Shadowbringer
(61222, 61443, 20, 1, 1, 1, 0), -- Libram of the Faithful
-- Group 2:
(61222, 61279, 14.28, 2, 1, 1, 0), -- Slateplate Leggings 
(61222, 61282, 14.28, 2, 1, 1, 0), -- Deepshadow Bracers
(61222, 61287, 14.28, 2, 1, 1, 0), -- Gusthewn Chestplate
(61222, 61286, 14.28, 2, 1, 1, 0), -- Bloodfang Effigy
(61222, 61294, 14.28, 2, 1, 1, 0), -- Dark Rider's Signet
(61222, 61449, 14.28, 2, 1, 1, 0), -- Searhide Bracers
(61222, 61255, 14.28, 2, 1, 1, 0), -- Tuning Fork of Charged Lightning
-- Clawlord Howlfang (NPC ENTRY 61223):
-- Group 1:
(61223, 61248, 20, 1, 1, 1, 0), -- Beasthunter's Blunderbuss
(61223, 61249, 20, 1, 1, 1, 0), -- Pelt of the Great Howler 
(61223, 61293, 20, 1, 1, 1, 0), -- Idol of the Moonfang
(61223, 61281, 20, 1, 1, 1, 0), -- Shadeweave Boots
(61223, 61273, 20, 1, 1, 1, 0), -- Earthbreaker Belt
-- Group 2:
(61223, 61250, 14.28, 2, 1, 1, 0), -- Reedwoven Tunic 
(61223, 61263, 14.28, 2, 1, 1, 0), -- Tooth of the Packlord
(61223, 61290, 14.28, 2, 1, 1, 0), -- Zephyrian Girdle
(61223, 61274, 14.28, 2, 1, 1, 0), -- Pulverizer Gauntlets 
(61223, 61271, 14.28, 2, 1, 1, 0), -- Boots of Blazing Steps 
(61223, 61451, 14.28, 2, 1, 1, 0), -- Sliver of Hope
(61223, 61285, 14.28, 2, 1, 1, 0), -- Duskwrapped Leggings
-- Grizikil: (NPC ENTRY 61224):
-- Group 1:
(61224, 61251, 20, 1, 1, 1, 0), -- Azora's Mind 
(61224, 61276, 20, 1, 1, 1, 0), -- Hyperchromatic Deflector
(61224, 61291, 20, 1, 1, 1, 0), -- Darkflame Helm 
(61224, 61292, 20, 1, 1, 1, 0), -- Totem of Crackling Thunder
(61224, 61253, 20, 1, 1, 1, 0), -- Aetherforged Gauntlets
-- Group 2:
(61224, 61252, 14.28, 2, 1, 1, 0), -- Red Hat of Destruction
(61224, 61267, 14.28, 2, 1, 1, 0), -- Sparkgrasp Gloves
(61224, 61288, 14.28, 2, 1, 1, 0), -- Nightwoven Belt
(61224, 61450, 14.28, 2, 1, 1, 0), -- The Mind's Key
(61224, 61289, 14.28, 2, 1, 1, 0), -- Aurious Boots
(61224, 61298, 14.28, 2, 1, 1, 0), -- Overgrown Gloves
(61224, 61261, 14.28, 2, 1, 1, 0), -- Battlescarred Cloak
-- Moroes (Entry 61226):
-- Group 1:
(61226, 61277, 10, 1, 1, 1, 0), -- Fist of the Forgotten Order
(61226, 61453, 10, 1, 1, 1, 0), -- Anastarian's Legacy
(61226, 61454, 10, 1, 1, 1, 0), -- Rod of Resuscitation
(61226, 61264, 10, 1, 1, 1, 0), -- Ansirem's Runeweaver
(61226, 61256, 10, 1, 1, 1, 0), -- Leggings of the Misty Marsh
(61226, 61257, 10, 1, 1, 1, 0), -- Cloudplate Wristguards
(61226, 61265, 10, 1, 1, 1, 0), -- Leggings of the Inferno
(61226, 61275, 10, 1, 1, 1, 0), -- Breastplate of Earthen Might
(61226, 61284, 10, 1, 1, 1, 0), -- Vest of Encroaching Darkness
(61226, 61299, 10, 1, 1, 1, 0), -- Shawl of the Castellan 
-- Group 2:
(61226, 61277, 10, 2, 1, 1, 0), -- Fist of the Forgotten Order
(61226, 61453, 10, 2, 1, 1, 0), -- Anastarian's Legacy
(61226, 61454, 10, 2, 1, 1, 0), -- Rod of Resuscitation
(61226, 61264, 10, 2, 1, 1, 0), -- Ansirem's Runeweaver
(61226, 61256, 10, 2, 1, 1, 0), -- Leggings of the Misty Marsh
(61226, 61257, 10, 2, 1, 1, 0), -- Cloudplate Wristguards
(61226, 61265, 10, 2, 1, 1, 0), -- Leggings of the Inferno
(61226, 61275, 10, 2, 1, 1, 0), -- Breastplate of Earthen Might
(61226, 61284, 10, 2, 1, 1, 0), -- Vest of Encroaching Darkness
(61226, 61299, 10, 2, 1, 1, 0), -- Shawl of the Castellan 

-- The following items below should have a 0.15% drop chance from the following creatures: 61191, 61192, 61193, 61194, 61211, 61195, 61196, 61197, 61198, 61199, 61200, 61201, 61202, 61203, 61204, 61205, 61206, 61207, 61208, 61209, 61210

-- Granitized Bracers (Entry 61280)
-- Reedmesh Belt (Entry 61254)
-- Nightwoven Belt (Entry 61288)
-- Zephyrian Girdle (Entry 61290)
-- Skycleaver (Entry 61452)
-- Dawnstone Bludgeon (Entry 61295)

(61191, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61191, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61191, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61191, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61191, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61191, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61192, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61192, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61192, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61192, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61192, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61192, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61193, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61193, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61193, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61193, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61193, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61193, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61194, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61194, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61194, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61194, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61194, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61194, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61195, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61195, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61195, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61195, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61195, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61195, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61196, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61196, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61196, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61196, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61196, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61196, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61197, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61197, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61197, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61197, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61197, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61197, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61198, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61198, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61198, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61198, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61198, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61198, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61199, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61199, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61199, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61199, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61199, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61199, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61200, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61200, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61200, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61200, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61200, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61200, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61201, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61201, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61201, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61201, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61201, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61201, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61202, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61202, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61202, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61202, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61202, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61202, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61203, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61203, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61203, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61203, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61203, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61203, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61204, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61204, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61204, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61204, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61204, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61204, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61205, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61205, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61205, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61205, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61205, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61205, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61206, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61206, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61206, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61206, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61206, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61206, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61207, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61207, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61207, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61207, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61207, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61207, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61208, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61208, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61208, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61208, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61208, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61208, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61209, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61209, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61209, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61209, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61209, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61209, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61210, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61210, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61210, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61210, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61210, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61210, 61295, 0.15, 3, 1, 1, 0), -- Dawnstone Bludgeon 

(61211, 61280, 0.15, 3, 1, 1, 0), -- Granitized Bracers
(61211, 61254, 0.15, 3, 1, 1, 0), -- Reedmesh Belt
(61211, 61288, 0.15, 3, 1, 1, 0), -- Nightwoven Belt
(61211, 61290, 0.15, 3, 1, 1, 0), -- Zephyrian Girdle
(61211, 61452, 0.15, 3, 1, 1, 0), -- Skycleaver
(61211, 61295, 0.15, 3, 1, 1, 0); -- Dawnstone Bludgeon 
