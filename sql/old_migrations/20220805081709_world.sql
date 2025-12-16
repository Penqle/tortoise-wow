-- STV
-- https://classic.wowhead.com/npc=588/bloodscalp-scout
-- https://classic.wowhead.com/npc=595/bloodscalp-hunter
-- https://classic.wowhead.com/npc=701/bloodscalp-mystic
UPDATE `creature` SET `id2` = 595, `id3` = 701 WHERE `id` = 588;
UPDATE `creature` SET `id2` = 588, `id3` = 701 WHERE `id` = 595;
UPDATE `creature` SET `id2` = 588, `id3` = 595 WHERE `id` = 701;

-- https://classic.wowhead.com/npc=597/bloodscalp-berserker
-- https://classic.wowhead.com/npc=660/bloodscalp-witch-doctor
-- https://classic.wowhead.com/npc=671/bloodscalp-headhunter
UPDATE `creature` SET `id2` = 660, `id3` = 671 WHERE `id` = 597;
UPDATE `creature` SET `id2` = 597, `id3` = 671 WHERE `id` = 660;
UPDATE `creature` SET `id2` = 597, `id3` = 660 WHERE `id` = 671;

-- https://classic.wowhead.com/npc=587/bloodscalp-warrior
-- https://classic.wowhead.com/npc=694/bloodscalp-axe-thrower
-- https://classic.wowhead.com/npc=697/bloodscalp-shaman
UPDATE `creature` SET `id2` = 694, `id3` = 697 WHERE `id` = 587;
UPDATE `creature` SET `id2` = 587, `id3` = 697 WHERE `id` = 694;
UPDATE `creature` SET `id2` = 587, `id3` = 694 WHERE `id` = 697;

-- https://classic.wowhead.com/npc=4457/murkgill-forager
-- https://classic.wowhead.com/npc=4458/murkgill-hunter
-- https://classic.wowhead.com/npc=4461/murkgill-warrior
UPDATE `creature` SET `id2` = 4458, `id3` = 4461 WHERE `id` = 4457;
UPDATE `creature` SET `id2` = 4457, `id3` = 4461 WHERE `id` = 4458;
UPDATE `creature` SET `id2` = 4457, `id3` = 4458 WHERE `id` = 4461;

-- https://classic.wowhead.com/npc=4458/murkgill-hunter
-- https://classic.wowhead.com/npc=4459/murkgill-oracle
-- https://classic.wowhead.com/npc=4460/murkgill-lord
-- https://classic.wowhead.com/npc=4461/murkgill-warrior
UPDATE `creature` SET `id2` = 4458, `id3` = 4460, `id4` = 4461 WHERE `id` = 4459;
UPDATE `creature` SET `id2` = 4458, `id3` = 4459, `id4` = 4461 WHERE `id` = 4460;

-- https://classic.wowhead.com/npc=1142/moshogg-brute
-- https://classic.wowhead.com/npc=1144/moshogg-witch-doctor
UPDATE `creature` SET `id2` = 1144 WHERE `id` = 1142;
UPDATE `creature` SET `id2` = 1142 WHERE `id` = 1144;

-- https://classic.wowhead.com/npc=937/kurzen-jungle-fighter
-- https://classic.wowhead.com/npc=940/kurzen-medicine-man
UPDATE `creature` SET `id2` = 940 WHERE `id` = 937;
UPDATE `creature` SET `id2` = 937 WHERE `id` = 940;

-- https://classic.wowhead.com/npc=667/skullsplitter-warrior
-- https://classic.wowhead.com/npc=696/skullsplitter-axe-thrower
-- https://classic.wowhead.com/npc=780/skullsplitter-mystic
UPDATE `creature` SET `id2` = 696, `id3` = 780 WHERE `id` = 667;
UPDATE `creature` SET `id2` = 667, `id3` = 780 WHERE `id` = 696;
UPDATE `creature` SET `id2` = 667, `id3` = 696 WHERE `id` = 780;

-- https://classic.wowhead.com/npc=669/skullsplitter-hunter
-- https://classic.wowhead.com/npc=670/skullsplitter-witch-doctor
-- https://classic.wowhead.com/npc=782/skullsplitter-scout
-- https://classic.wowhead.com/npc=784/skullsplitter-beastmaster
UPDATE `creature` SET `id2` = 670, `id3` = 782, `id4` = 784 WHERE `id` = 669;
UPDATE `creature` SET `id2` = 669, `id3` = 782, `id4` = 784 WHERE `id` = 670;
UPDATE `creature` SET `id2` = 669, `id3` = 670, `id4` = 784 WHERE `id` = 782;
UPDATE `creature` SET `id2` = 669, `id3` = 670, `id4` = 782 WHERE `id` = 784;

-- https://classic.wowhead.com/npc=1488/zanzil-zombie
-- https://classic.wowhead.com/npc=1489/zanzil-hunter
-- https://classic.wowhead.com/npc=1490/zanzil-witch-doctor
-- https://classic.wowhead.com/npc=1491/zanzil-naga
UPDATE `creature` SET `id2` = 1489, `id3` = 1490, `id4` = 1491 WHERE `id` = 1488;
UPDATE `creature` SET `id2` = 1488, `id3` = 1490, `id4` = 1491 WHERE `id` = 1489;
UPDATE `creature` SET `id2` = 1488, `id3` = 1489, `id4` = 1491 WHERE `id` = 1490;
UPDATE `creature` SET `id2` = 1488, `id3` = 1489, `id4` = 1490 WHERE `id` = 1491;

-- https://classic.wowhead.com/npc=1565/bloodsail-sea-dog
-- https://classic.wowhead.com/npc=1653/bloodsail-elder-magus
UPDATE `creature` SET `id2` = 1653 WHERE `id` = 1565;
UPDATE `creature` SET `id2` = 1565 WHERE `id` = 1653;

-- https://classic.wowhead.com/npc=1563/bloodsail-swashbuckler
-- https://classic.wowhead.com/npc=1564/bloodsail-warlock
UPDATE `creature` SET `id2` = 1564 WHERE `id` = 1563;
UPDATE `creature` SET `id2` = 1563 WHERE `id` = 1564;

-- https://classic.wowhead.com/npc=1561/bloodsail-raider
-- https://classic.wowhead.com/npc=1562/bloodsail-mage
UPDATE `creature` SET `id2` = 1562 WHERE `id` = 1561;
UPDATE `creature` SET `id2` = 1561 WHERE `id` = 1562;

-- https://classic.wowhead.com/npc=675/venture-co-foreman
-- https://classic.wowhead.com/npc=676/venture-co-surveyor
-- https://classic.wowhead.com/npc=677/venture-co-tinkerer
UPDATE `creature` SET `id2` = 676, `id3` = 677 WHERE `id` = 675;
UPDATE `creature` SET `id2` = 675, `id3` = 677 WHERE `id` = 676;
UPDATE `creature` SET `id2` = 675, `id3` = 676 WHERE `id` = 677;

-- ----------------------------------------------------------------------

-- DARKSHORE
-- https://classic.wowhead.com/npc=2207/greymist-oracle
-- https://classic.wowhead.com/npc=2208/greymist-tidehunter
UPDATE `creature` SET `id2` = 2208 WHERE `id` = 2207;
UPDATE `creature` SET `id2` = 2207 WHERE `id` = 2208;

-- Greymist Hunter Can Be Greymist Warrior
-- https://classic.wowhead.com/npc=2206/greymist-hunter
UPDATE `creature` SET `id` = 2206 WHERE `guid` IN (
37981,
37985,
37984,
37986,
37982
);
UPDATE `creature` SET `id2` = 2205 WHERE `id` = 2206;

-- Greymist Netter Can Be Greymist Seer
-- https://classic.wowhead.com/npc=2204/greymist-netter
UPDATE `creature` SET `id` = 2204 WHERE `guid` IN (
37966,
37951,
37967,
37968
);
UPDATE `creature` SET `id2` = 2203 WHERE `guid` IN (
37972,
37973,
37974
);

-- Greymist Coastrunner Can Be Greymist Seer
-- https://classic.wowhead.com/npc=2202/greymist-coastrunner
UPDATE `creature` SET `id2` = 2202 WHERE `guid` IN (
37964,
37965,
37959,
37957,
37958,
37955,
37963,
37953,
37948,
37945,
37949,
37960,
37947,
37946,
37950,
37952,
37961,
37962
);
UPDATE `creature` SET `id2` = 2203 WHERE `guid` IN (
37855,
37856,
37857,
37858,
37859,
37860,
37861,
37863,
37864,
37866,
37867,
37930,
37931,
37932,
37933,
37934,
37935,
37936,
37941,
37942,
37943,
37944
);

-- Greymist Raider Can Be Greymist Coastrunner
-- https://classic.wowhead.com/npc=2201/greymist-raider
UPDATE `creature` SET `id` = 2201 WHERE `guid` IN (
37862,
37937,
37938,
37940,
37939
);
UPDATE `creature` SET `id2` = 2202 WHERE `id` = 2201;

-- Mixed Greymist Spawns
UPDATE `creature` SET `id` = 2205, `id2` = 2204 WHERE `guid` IN (
37977,
37978,
37969,
37976,
37983,
37970,
37979
);

-- https://classic.wowhead.com/npc=2338/twilight-disciple
-- https://classic.wowhead.com/npc=2339/twilight-thug
UPDATE `creature` SET `id2` = 2339 WHERE `id` = 2338;
UPDATE `creature` SET `id2` = 2338 WHERE `guid` IN (
37016,
37017,
37020,
37021,
37024,
37025,
37026,
37027,
37028,
37040,
37044,
37045
);

-- ----------------------------------------------------------------------

-- TELDRASIL
-- https://classic.wowhead.com/npc=2015/bloodfeather-harpy
-- https://classic.wowhead.com/npc=2017/bloodfeather-rogue
-- https://classic.wowhead.com/npc=2018/bloodfeather-sorceress
UPDATE `creature` SET `id2` = 2017, `id3` = 2018 WHERE `id` = 2015;
UPDATE `creature` SET `id2` = 2015, `id3` = 2018 WHERE `id` = 2017;
UPDATE `creature` SET `id2` = 2015, `id3` = 2017 WHERE `id` = 2018;

-- https://classic.wowhead.com/npc=2019/bloodfeather-fury
-- https://classic.wowhead.com/npc=2020/bloodfeather-wind-witch
-- https://classic.wowhead.com/npc=2021/bloodfeather-matriarch
UPDATE `creature` SET `id2` = 2020, `id3` = 2021 WHERE `id` = 2019;
UPDATE `creature` SET `id2` = 2019, `id3` = 2021 WHERE `id` = 2020;
UPDATE `creature` SET `id2` = 2019, `id3` = 2020 WHERE `id` = 2021;

-- https://classic.wowhead.com/npc=2009/gnarlpine-shaman
-- https://classic.wowhead.com/npc=2010/gnarlpine-defender
UPDATE `creature` SET `id2` = 2010 WHERE `id` = 2009;
UPDATE `creature` SET `id2` = 2009 WHERE `id` = 2010;

-- https://classic.wowhead.com/npc=2012/gnarlpine-pathfinder
-- https://classic.wowhead.com/npc=2013/gnarlpine-avenger
UPDATE `creature` SET `id2` = 2013 WHERE `id` = 2012;
UPDATE `creature` SET `id2` = 2012 WHERE `id` = 2013;

-- ----------------------------------------------------------------------

-- AZSHARA
-- https://classic.wowhead.com/npc=6116/highborne-apparition
-- https://classic.wowhead.com/npc=6117/highborne-lichling
UPDATE `creature` SET `id2` = 6117 WHERE `id` = 6116;
UPDATE `creature` SET `id2` = 6116 WHERE `id` = 6117;

-- https://classic.wowhead.com/npc=6125/haldarr-satyr
-- https://classic.wowhead.com/npc=6126/haldarr-trickster
-- https://classic.wowhead.com/npc=6127/haldarr-felsworn
UPDATE `creature` SET `id2` = 6126, `id3` = 6127 WHERE `id` = 6125;
UPDATE `creature` SET `id2` = 6125, `id3` = 6127 WHERE `id` = 6126;
UPDATE `creature` SET `id2` = 6125, `id3` = 6126 WHERE `id` = 6127;

-- https://classic.wowhead.com/npc=6190/spitelash-warrior
-- https://classic.wowhead.com/npc=6193/spitelash-screamer
UPDATE `creature` SET `id2` = 6193 WHERE `id` = 6190;
UPDATE `creature` SET `id2` = 6190 WHERE `id` = 6193;

-- Spitelash Serpent Guard Can Be Spitelash Siren
-- https://classic.wowhead.com/npc=6194/spitelash-serpent-guard
UPDATE `creature` SET `id` = 6194 WHERE `guid` IN (
35439,
35453,
35447,
35443,
35463,
35481,
35464,
35431,
35482,
35449,
35421,
35420,
35473,
35469,
35423,
35430,
35461,
35468,
35465,
35424,
35428,
35487,
35462,
35455,
35467,
35484,
35440,
35486,
35457,
35459,
35432,
35479,
35419,
35416
);
UPDATE `creature` SET `id2` = 6195 WHERE `id` = 6194;

-- Spitelash Myrmidon Guard Can Be Spitelash Siren
-- https://classic.wowhead.com/npc=6196/spitelash-myrmidon
UPDATE `creature` SET `id` = 6196 WHERE `guid` IN (
35494,
35475,
35438,
35446,
35496,
35472,
35437,
35501,
35499,
35497,
35500,
35433,
35489,
35488,
35490,
35456,
35491,
35425,
35503,
35422,
35477,
35471,
35483,
35454,
35478,
35480,
35451,
35441,
35474,
35448,
35452,
35470,
35429,
35507,
35485,
35458,
35450,
35442,
35498,
35495,
35434,
35460,
35492,
35493,
35506,
35445,
35504,
35502,
35476
);
UPDATE `creature` SET `id2` = 6195 WHERE `id` = 6196;

-- https://classic.wowhead.com/npc=7885/spitelash-battlemaster
-- https://classic.wowhead.com/npc=7886/spitelash-enchantress
UPDATE `creature` SET `id2` = 7886 WHERE `id` = 7885;
UPDATE `creature` SET `id2` = 7885 WHERE `id` = 7886;

-- Timbermaw Totemic Can Be Timbermaw Warrior
-- https://classic.wowhead.com/npc=6186/timbermaw-totemic
UPDATE `creature` SET `id` = 6186, `movement_type` = 1, `wander_distance` = 1  WHERE `guid` IN (
35226,
35214,
35232
);
UPDATE `creature` SET `id2` = 6185 WHERE `id` = 6186;

-- Add Missing Timbermaw Spawns
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(35224, 6186, 6185, 0, 0, 1, 3978.12, -5035.42, 136.33, 2.74885, 333, 333, 1, 100, 100, 1, 0, 0),
(35229, 6186, 6185, 0, 0, 1, 3948.55, -5018.79, 138.09, 0.722561, 333, 333, 1, 100, 100, 1, 0, 0),
(35239, 6186, 6185, 0, 0, 1, 3962.61, -5023.06, 137.442, 5.67093, 333, 333, 1, 100, 100, 1, 0, 0),
(35240, 6186, 6185, 0, 0, 1, 3967.71, -5029.17, 136.693, 3.59627, 333, 333, 1, 100, 100, 1, 0, 0),
(35243, 6186, 6185, 0, 0, 1, 3964.08, -5039.61, 137.109, 3.15164, 333, 333, 1, 100, 100, 1, 0, 0);
DELETE FROM `creature` WHERE `guid` = 35198;

-- Timbermaw Pathfinder Can Be Timbermaw Warrior
-- https://classic.wowhead.com/npc=6184/timbermaw-pathfinder
UPDATE `creature` SET `id` = 6184 WHERE `guid` IN (
35213,
35212,
35209,
35208,
35207,
35227,
35218,
35217
);
UPDATE `creature` SET `id2` = 6185 WHERE `id` = 6184;

-- Add Missing Timbermaw Spawns
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(35245, 6184, 6185, 0, 0, 1, 3947.23, -5049.63, 133.611, 3.15227, 333, 333, 3, 100, 0, 1, 0, 0),
(35246, 6184, 6185, 0, 0, 1, 4020.5, -5046.54, 132.482, 3.9683, 333, 333, 3, 100, 0, 1, 0, 0),
(35418, 6184, 6185, 0, 0, 1, 3983.16, -5049.67, 135.471, 0.0991868, 333, 333, 3, 100, 0, 1, 0, 0),
(35868, 6184, 6185, 0, 0, 1, 3917.41, -5016.51, 141.021, 0.559616, 333, 333, 3, 100, 0, 1, 0, 0),
(35869, 6184, 6185, 0, 0, 1, 3914.86, -4980.88, 142.913, 4.33968, 333, 333, 3, 100, 0, 1, 0, 0);

-- https://classic.wowhead.com/npc=6198/blood-elf-surveyor
-- https://classic.wowhead.com/npc=6199/blood-elf-reclaimer
UPDATE `creature` SET `id2` = 6199 WHERE `id` = 6198;
UPDATE `creature` SET `id2` = 6198 WHERE `id` = 6199;

-- https://classic.wowhead.com/npc=6200/legashi-satyr
-- https://classic.wowhead.com/npc=6201/legashi-rogue
-- https://classic.wowhead.com/npc=6202/legashi-hellcaller
UPDATE `creature` SET `id2` = 6201, `id3` = 6202 WHERE `id` = 6200;
UPDATE `creature` SET `id2` = 6200, `id3` = 6202 WHERE `id` = 6201;
UPDATE `creature` SET `id2` = 6200, `id3` = 6201 WHERE `id` = 6202;

-- Timbermaw Ursa Can Be Timbermaw Shaman
-- https://classic.wowhead.com/npc=6189/timbermaw-ursa
UPDATE `creature` SET `id` = 6189 WHERE `guid` IN (
35280,
35293,
35286,
35284,
35291,
35285,
35292,
35279,
35268,
35273,
35278,
35282,
35289,
35267,
35264,
35270,
35269
);
UPDATE `creature` SET `id2` = 6188 WHERE `id` = 6189;

-- Timbermaw Den Watcher Can Be Timbermaw Shaman
-- https://classic.wowhead.com/npc=6187/timbermaw-den-watcher
UPDATE `creature` SET `id` = 6187 WHERE `guid` IN (
35283,
35271,
35275,
35294,
35274,
35265,
35288
);
UPDATE `creature` SET `id2` = 6188 WHERE `id` = 6187;

-- https://classic.wowhead.com/npc=193/blue-dragonspawn
-- https://classic.wowhead.com/npc=6131/draconic-mageweaver
UPDATE `creature` SET `id2` = 6131 WHERE `id` = 193;
UPDATE `creature` SET `id2` = 193 WHERE `guid` IN (
36413,
36419,
36420,
36422,
36423,
36429,
36430,
36431,
36432
);

-- ----------------------------------------------------------------------

-- WINTERSPRING
-- Winterfall Totemic Can Be Winterfall Den Watcher
-- https://classic.wowhead.com/npc=7441/winterfall-totemic
UPDATE `creature` SET `id2` = 7441 WHERE `guid` IN (
41038,
41040,
41039
);
UPDATE `creature` SET `id2` = 7440 WHERE `id` = 7441;

-- Winterfall Den Watcher Can Be Winterfall Shaman
-- https://classic.wowhead.com/npc=7440/winterfall-den-watcher
UPDATE `creature` SET `id2` = 7440 WHERE `guid` IN (
41030,
41034
);
UPDATE `creature` SET `id2` = 7439 WHERE `guid` IN (
41035,
41037,
41041,
41042,
41043,
41044,
41045,
41046,
41047,
41048,
41049
);

-- Winterfall Ursa Can Be Winterfall Shaman
-- https://classic.wowhead.com/npc=7438/winterfall-ursa
UPDATE `creature` SET `id` = 7438 WHERE `guid` IN (
41033,
41032,
41031
);
UPDATE `creature` SET `id2` = 7439 WHERE `guid` IN (
41017,
41019,
41020,
41022,
41023,
41024,
41025,
41026,
41027,
41028
);

-- Winterfall Den Watcher Just Outside Can Only Be Den Watcher
UPDATE `creature` SET `id2` = 0 WHERE `guid` IN (
41035,
41044,
41043,
41042,
41037,
41041
);

-- https://classic.wowhead.com/npc=7523/suffering-highborne
-- https://classic.wowhead.com/npc=7524/anguished-highborne
UPDATE `creature` SET `id2` = 7524 WHERE `id` = 7523;
UPDATE `creature` SET `id2` = 7523 WHERE `id` = 7524;

-- https://classic.wowhead.com/npc=7459/ice-thistle-matriarch
-- https://classic.wowhead.com/npc=7460/ice-thistle-patriarch
UPDATE `creature` SET `id2` = 7460 WHERE `id` = 7459;
UPDATE `creature` SET `id2` = 7459 WHERE `id` = 7460;

-- https://classic.wowhead.com/npc=7452/crazed-owlbeast
-- https://classic.wowhead.com/npc=7453/moontouched-owlbeast
-- https://classic.wowhead.com/npc=7454/berserk-owlbeast
UPDATE `creature` SET `id2` = 7453, `id3` = 7454 WHERE `id` = 7452;
UPDATE `creature` SET `id2` = 7452, `id3` = 7454 WHERE `id` = 7453;
UPDATE `creature` SET `id2` = 7452, `id3` = 7453 WHERE `id` = 7454;

-- https://classic.wowhead.com/npc=7428/frostmaul-giant
-- https://classic.wowhead.com/npc=7429/frostmaul-preserver
UPDATE `creature` SET `id2` = 7429 WHERE `id` = 7428;
UPDATE `creature` SET `id2` = 7428 WHERE `id` = 7429;

-- https://classic.wowhead.com/npc=7435/cobalt-wyrmkin
-- https://classic.wowhead.com/npc=7436/cobalt-scalebane
-- https://classic.wowhead.com/npc=7437/cobalt-mageweaver
UPDATE `creature` SET `id2` = 7436, `id3` = 7437 WHERE `id` = 7435;
UPDATE `creature` SET `id2` = 7435, `id3` = 7437 WHERE `id` = 7436;
UPDATE `creature` SET `id2` = 7435, `id3` = 7436 WHERE `id` = 7437;

-- ----------------------------------------------------------------------

-- ASHENVALE
-- https://classic.wowhead.com/npc=12474/emeraldon-boughguard
-- https://classic.wowhead.com/npc=12475/emeraldon-tree-warder
-- https://classic.wowhead.com/npc=12476/emeraldon-oracle
UPDATE `creature` SET `id2` = 12475, `id3` = 12476 WHERE `id` = 12474;
UPDATE `creature` SET `id2` = 12474, `id3` = 12476 WHERE `id` = 12475;
UPDATE `creature` SET `id2` = 12474, `id3` = 12475 WHERE `id` = 12476;

-- https://classic.wowhead.com/npc=6073/searing-infernal
-- https://classic.wowhead.com/npc=6115/felguard
-- https://classic.wowhead.com/npc=11697/mannoroc-lasher
UPDATE `creature` SET `id2` = 6115, `id3` = 11697 WHERE `id` = 6073;
UPDATE `creature` SET `id2` = 6073, `id3` = 11697 WHERE `id` = 6115;
UPDATE `creature` SET `id2` = 6073, `id3` = 6115 WHERE `id` = 11697;

-- https://classic.wowhead.com/npc=3804/forsaken-intruder
-- https://classic.wowhead.com/npc=3807/forsaken-assassin
-- https://classic.wowhead.com/npc=3808/forsaken-dark-stalker
UPDATE `creature` SET `id2` = 3807, `id3` = 3808 WHERE `id` = 3804;
UPDATE `creature` SET `id2` = 3804, `id3` = 3808 WHERE `id` = 3807;
UPDATE `creature` SET `id2` = 3804, `id3` = 3807 WHERE `id` = 3808;

-- https://classic.wowhead.com/npc=3758/felmusk-satyr
-- https://classic.wowhead.com/npc=3762/felmusk-felsworn
UPDATE `creature` SET `id2` = 3762 WHERE `id` = 3758;
UPDATE `creature` SET `id2` = 3758 WHERE `id` = 3762;

-- https://classic.wowhead.com/npc=3759/felmusk-rogue
-- https://classic.wowhead.com/npc=3763/felmusk-shadowstalker
UPDATE `creature` SET `id2` = 3763 WHERE `id` = 3759;
UPDATE `creature` SET `id2` = 3759 WHERE `id` = 3763;

-- https://classic.wowhead.com/npc=3765/bleakheart-satyr
-- https://classic.wowhead.com/npc=3771/bleakheart-hellcaller
UPDATE `creature` SET `id2` = 3771 WHERE `id` = 3765;
UPDATE `creature` SET `id2` = 3765 WHERE `id` = 3771;

-- https://classic.wowhead.com/npc=3767/bleakheart-trickster
-- https://classic.wowhead.com/npc=3770/bleakheart-shadowstalker
UPDATE `creature` SET `id2` = 3770 WHERE `id` = 3767;
UPDATE `creature` SET `id2` = 3767 WHERE `id` = 3770;

-- https://classic.wowhead.com/npc=3752/xavian-rogue
-- https://classic.wowhead.com/npc=3757/xavian-hellcaller
UPDATE `creature` SET `id2` = 3757 WHERE `id` = 3752;
UPDATE `creature` SET `id2` = 3752 WHERE `id` = 3757;

-- https://classic.wowhead.com/npc=3754/xavian-betrayer
-- https://classic.wowhead.com/npc=3755/xavian-felsworn
UPDATE `creature` SET `id2` = 3755 WHERE `id` = 3754;
UPDATE `creature` SET `id2` = 3754 WHERE `id` = 3755;

-- https://classic.wowhead.com/npc=3782/shadethicket-stone-mover
-- https://classic.wowhead.com/npc=3784/shadethicket-bark-ripper
UPDATE `creature` SET `id2` = 3784 WHERE `id` = 3782;
UPDATE `creature` SET `id2` = 3782 WHERE `id` = 3784;

-- https://classic.wowhead.com/npc=3746/foulweald-den-watcher
-- https://classic.wowhead.com/npc=3748/foulweald-shaman
-- https://classic.wowhead.com/npc=3749/foulweald-ursa
UPDATE `creature` SET `id2` = 3748, `id3` = 3749 WHERE `id` = 3746;
UPDATE `creature` SET `id2` = 3746, `id3` = 3749 WHERE `id` = 3748;
UPDATE `creature` SET `id2` = 3746, `id3` = 3748 WHERE `id` = 3749;

-- https://classic.wowhead.com/npc=3743/foulweald-warrior
-- https://classic.wowhead.com/npc=3750/foulweald-totemic
UPDATE `creature` SET `id2` = 3750 WHERE `id` = 3743;
UPDATE `creature` SET `id2` = 3743 WHERE `id` = 3750;

-- https://classic.wowhead.com/npc=3737/saltspittle-puddlejumper
-- https://classic.wowhead.com/npc=3739/saltspittle-warrior
UPDATE `creature` SET `id2` = 3739 WHERE `id` = 3737;
UPDATE `creature` SET `id2` = 3737 WHERE `id` = 3739;

-- https://classic.wowhead.com/npc=3740/saltspittle-muckdweller
-- https://classic.wowhead.com/npc=3742/saltspittle-oracle
UPDATE `creature` SET `id2` = 3742 WHERE `id` = 3740;
UPDATE `creature` SET `id2` = 3740 WHERE `id` = 3742;

-- https://classic.wowhead.com/npc=3713/wrathtail-wave-rider
-- https://classic.wowhead.com/npc=3717/wrathtail-sorceress
UPDATE `creature` SET `id2` = 3717 WHERE `id` = 3713;
UPDATE `creature` SET `id2` = 3713 WHERE `id` = 3717;

-- https://classic.wowhead.com/npc=3711/wrathtail-myrmidon
-- https://classic.wowhead.com/npc=3944/wrathtail-priestess
UPDATE `creature` SET `id2` = 3944 WHERE `id` = 3711;
UPDATE `creature` SET `id2` = 3711 WHERE `id` = 3944;

-- https://classic.wowhead.com/npc=3781/shadethicket-wood-shaper
-- https://classic.wowhead.com/npc=3783/shadethicket-raincaller
UPDATE `creature` SET `id2` = 3783 WHERE `id` = 3781;
UPDATE `creature` SET `id2` = 3781 WHERE `id` = 3783;

-- https://classic.wowhead.com/npc=3725/dark-strand-cultist
-- https://classic.wowhead.com/npc=3728/dark-strand-adept
UPDATE `creature` SET `id2` = 3728 WHERE `id` = 3725;
UPDATE `creature` SET `id2` = 3725 WHERE `id` = 3728;

-- https://classic.wowhead.com/npc=3727/dark-strand-enforcer
-- https://classic.wowhead.com/npc=3730/dark-strand-excavator
UPDATE `creature` SET `id2` = 3730 WHERE `id` = 3727;
UPDATE `creature` SET `id2` = 3727 WHERE `id` = 3730;

-- https://classic.wowhead.com/npc=3732/forsaken-seeker
-- https://classic.wowhead.com/npc=3733/forsaken-herbalist
UPDATE `creature` SET `id2` = 3733 WHERE `id` = 3732;
UPDATE `creature` SET `id2` = 3732 WHERE `id` = 3733;

-- ----------------------------------------------------------------------

-- STONETALON
-- https://classic.wowhead.com/npc=11910/grimtotem-ruffian
-- https://classic.wowhead.com/npc=11911/grimtotem-mercenary
UPDATE `creature` SET `id2` = 11911 WHERE `id` = 11910;
UPDATE `creature` SET `id2` = 11910 WHERE `id` = 11911;

-- https://classic.wowhead.com/npc=11912/grimtotem-brute
-- https://classic.wowhead.com/npc=11913/grimtotem-sorcerer
UPDATE `creature` SET `id2` = 11913 WHERE `id` = 11912;
UPDATE `creature` SET `id2` = 11912 WHERE `id` = 11913;

-- https://classic.wowhead.com/npc=3989/venture-co-logger
-- https://classic.wowhead.com/npc=3991/venture-co-deforester
UPDATE `creature` SET `id2` = 3991 WHERE `id` = 3989;
UPDATE `creature` SET `id2` = 3989 WHERE `id` = 3991;

-- https://classic.wowhead.com/npc=3992/venture-co-engineer
-- https://classic.wowhead.com/npc=4070/venture-co-builder
UPDATE `creature` SET `id2` = 4070 WHERE `id` = 3992;
UPDATE `creature` SET `id2` = 3992 WHERE `id` = 4070;

-- https://classic.wowhead.com/npc=4022/bloodfury-harpy
-- https://classic.wowhead.com/npc=4025/bloodfury-ambusher
-- https://classic.wowhead.com/npc=4026/bloodfury-windcaller
UPDATE `creature` SET `id2` = 4025, `id3` = 4026 WHERE `guid` IN (
30419,
30420,
30421,
30422,
30423,
30426,
30427,
30428,
30429,
30430,
30431
);
UPDATE `creature` SET `id2` = 4022, `id3` = 4026 WHERE `id` = 4025;
UPDATE `creature` SET `id2` = 4022, `id3` = 4025 WHERE `id` = 4026;

-- https://classic.wowhead.com/npc=4023/bloodfury-roguefeather
-- https://classic.wowhead.com/npc=4024/bloodfury-slayer
-- https://classic.wowhead.com/npc=4027/bloodfury-storm-witch
UPDATE `creature` SET `id2` = 4024, `id3` = 4027 WHERE `id` = 4023;
UPDATE `creature` SET `id2` = 4023, `id3` = 4027 WHERE `id` = 4024;
UPDATE `creature` SET `id2` = 4023, `id3` = 4024 WHERE `id` = 4027;

-- ----------------------------------------------------------------------

-- DUROTAR
-- https://classic.wowhead.com/npc=3115/dustwind-harpy
-- https://classic.wowhead.com/npc=3116/dustwind-pillager
UPDATE `creature` SET `id2` = 3116 WHERE `id` = 3115;
UPDATE `creature` SET `id2` = 3115 WHERE `id` = 3116;

-- ----------------------------------------------------------------------

-- WPL
-- https://classic.wowhead.com/npc=1831/scarlet-hunter
-- https://classic.wowhead.com/npc=1835/scarlet-invoker
-- https://classic.wowhead.com/npc=10605/scarlet-medic
UPDATE `creature` SET `id2` = 1835, `id3` = 10605 WHERE `id` = 1831;
UPDATE `creature` SET `id2` = 1831, `id3` = 10605 WHERE `id` = 1835;
UPDATE `creature` SET `id2` = 1831, `id3` = 1835 WHERE `id` = 10605;

-- Scarlet Mage (1826) Can Be Scarlet Knight (1833)
-- https://classic.wowhead.com/npc=1826/scarlet-mage
UPDATE `creature` SET `id` = 1826 WHERE `guid` IN (
47151,
46772,
45367,
46770,
46767,
47146,
45375,
47144,
47148
);
UPDATE `creature` SET `id2` = 1833 WHERE `id` = 1826;

-- https://classic.wowhead.com/npc=1802/hungering-wraith
-- https://classic.wowhead.com/npc=1804/wailing-death
-- https://classic.wowhead.com/npc=4472/haunting-vision
UPDATE `creature` SET `id2` = 1804, `id3` = 4472 WHERE `id` = 1802;
UPDATE `creature` SET `id2` = 1802, `id3` = 4472 WHERE `id` = 1804;
UPDATE `creature` SET `id2` = 1802, `id3` = 1804 WHERE `id` = 4472;

-- https://classic.wowhead.com/npc=1793/rotting-ghoul
-- https://classic.wowhead.com/npc=1796/freezing-ghoul
UPDATE `creature` SET `id2` = 1796 WHERE `id` = 1793;
UPDATE `creature` SET `id2` = 1793 WHERE `id` = 1796;

-- https://classic.wowhead.com/npc=1787/skeletal-executioner
-- https://classic.wowhead.com/npc=1789/skeletal-acolyte
UPDATE `creature` SET `id2` = 1789 WHERE `id` = 1787;
UPDATE `creature` SET `id2` = 1787 WHERE `id` = 1789;

-- https://classic.wowhead.com/npc=1794/soulless-ghoul
-- https://classic.wowhead.com/npc=1795/searing-ghoul
UPDATE `creature` SET `id2` = 1795 WHERE `id` = 1794;
UPDATE `creature` SET `id2` = 1794 WHERE `id` = 1795;

-- ----------------------------------------------------------------------

-- UNGORO
-- https://classic.wowhead.com/npc=6520/scorching-elemental
-- https://classic.wowhead.com/npc=6521/living-blaze
UPDATE `creature` SET `id2` = 6521 WHERE `id` = 6520;
UPDATE `creature` SET `id2` = 6520 WHERE `id` = 6521;

-- Gorishi Wasp And Gorishi Worker Can Be 6551, 6552 or 6553
-- https://classic.wowhead.com/npc=6551/gorishi-wasp
-- https://classic.wowhead.com/npc=6552/gorishi-worker
UPDATE `creature` SET `id` = 6552 WHERE `guid` IN (
24293,
24297,
24305,
24303,
24292,
24299,
24306,
24295,
24302,
24309,
24301,
24322,
24307,
24310,
24316,
24298,
24300,
24296,
24308,
24315,
24291,
24304,
24294
);
UPDATE `creature` SET `id2` = 6552 WHERE `id` = 6551;
UPDATE `creature` SET `id2` = 6551 WHERE `id` = 6552;

-- Gorishi Stinger And Gorishi Tunneler Can Be 6553, 6554 or 6555
-- https://classic.wowhead.com/npc=6554/gorishi-stinger
-- https://classic.wowhead.com/npc=6555/gorishi-tunneler
UPDATE `creature` SET `id` = 6554 WHERE `guid` IN (
24320,
24321,
24311,
24314,
24321,
24317,
24319,
24318,
24313,
24312
);
UPDATE `creature` SET `id2` = 6553, `id3` = 6555 WHERE `id` = 6554;
UPDATE `creature` SET `id2` = 6553, `id3` = 6554 WHERE `id` = 6555;

-- https://classic.wowhead.com/npc=6518/tar-lurker
-- https://classic.wowhead.com/npc=6519/tar-lord
UPDATE `creature` SET `id2` = 6519 WHERE `id` = 6518;
UPDATE `creature` SET `id2` = 6518 WHERE `id` = 6519;

-- https://classic.wowhead.com/npc=6517/tar-beast
-- https://classic.wowhead.com/npc=6527/tar-creeper
UPDATE `creature` SET `id2` = 6527 WHERE `id` = 6517;
UPDATE `creature` SET `id2` = 6517 WHERE `id` = 6527;

-- https://classic.wowhead.com/npc=6509/bloodpetal-lasher
-- https://classic.wowhead.com/npc=6511/bloodpetal-thresher
UPDATE `creature` SET `id2` = 6511 WHERE `id` = 6509;
UPDATE `creature` SET `id2` = 6509 WHERE `id` = 6511;

-- https://classic.wowhead.com/npc=6507/ravasaur-hunter
-- https://classic.wowhead.com/npc=6508/venomhide-ravasaur
UPDATE `creature` SET `id2` = 6508 WHERE `id` = 6507;
UPDATE `creature` SET `id2` = 6507 WHERE `id` = 6508;

-- https://classic.wowhead.com/npc=6505/ravasaur
-- https://classic.wowhead.com/npc=6506/ravasaur-runner
UPDATE `creature` SET `id2` = 6506 WHERE `id` = 6505;
UPDATE `creature` SET `id2` = 6505 WHERE `id` = 6506;

-- Ungoro Stomper Can Be 6514
-- https://classic.wowhead.com/npc=6513/ungoro-stomper
UPDATE `creature` SET `id` = 6513 WHERE `guid` IN (
24073,
24074
);
UPDATE `creature` SET `id2` = 6514 WHERE `id` = 6513;

-- Ungoro Thunderer Can Be 6513 Or 6514
-- https://classic.wowhead.com/npc=6516/ungoro-thunderer
UPDATE `creature` SET `id` = 6516 WHERE `guid` IN (
24068,
24070,
24066,
24069,
24060,
24072,
24076,
24075,
24061,
24067,
24071
);
UPDATE `creature` SET `id2` = 6513, `id3` = 6514 WHERE `id` = 6516;

-- ----------------------------------------------------------------------

-- TANARIS
-- Wastewander Bandit And Wastewander Thief Can Be 5616, 5618 or 5617
-- https://classic.wowhead.com/npc=5616/wastewander-thief
-- https://classic.wowhead.com/npc=5618/wastewander-bandit
UPDATE `creature` SET `id2` = 5618 WHERE `id` = 5616;
UPDATE `creature` SET `id2` = 5616 WHERE `id` = 5618;

-- Wastewander Rogue And Wastewander Assassin Can Be 5615, 5623 or 5617
-- https://classic.wowhead.com/npc=5615/wastewander-rogue
-- https://classic.wowhead.com/npc=5623/wastewander-assassin
UPDATE `creature` SET `id` = 5623 WHERE `guid` IN (
23544,
23542,
23539,
23530,
23533,
23538,
23540,
23527,
23522,
23525,
23545,
23535,
23526,
23528,
23523,
23536,
23541,
23531,
23524,
23529,
23534,
23537,
23532,
23546
);
UPDATE `creature` SET `id2` = 5617, `id3` = 5623 WHERE `id` = 5615;
UPDATE `creature` SET `id2` = 5615, `id3` = 5617 WHERE `id` = 5623;

-- https://classic.wowhead.com/npc=7855/southsea-pirate
-- https://classic.wowhead.com/npc=7856/southsea-freebooter
UPDATE `creature` SET `id2` = 7856 WHERE `id` = 7855;
UPDATE `creature` SET `id2` = 7855 WHERE `id` = 7856;

-- https://classic.wowhead.com/npc=5471/dunemaul-ogre
-- https://classic.wowhead.com/npc=5472/dunemaul-enforcer
-- https://classic.wowhead.com/npc=5473/dunemaul-ogre-mage
-- https://classic.wowhead.com/npc=5475/dunemaul-warlock
UPDATE `creature` SET `id2` = 5472, `id3` = 5473, `id4` = 5475 WHERE `id` = 5471;
UPDATE `creature` SET `id2` = 5471, `id3` = 5473, `id4` = 5475 WHERE `id` = 5472;
UPDATE `creature` SET `id2` = 5471, `id3` = 5472, `id4` = 5475 WHERE `id` = 5473;
UPDATE `creature` SET `id2` = 5471, `id3` = 5472, `id4` = 5473 WHERE `id` = 5475;

-- https://classic.wowhead.com/npc=5645/sandfury-hideskinner
-- https://classic.wowhead.com/npc=5646/sandfury-axe-thrower
-- https://classic.wowhead.com/npc=5647/sandfury-firecaller
UPDATE `creature` SET `id2` = 5646, `id3` = 5647 WHERE `id` = 5645;
UPDATE `creature` SET `id2` = 5645, `id3` = 5647 WHERE `id` = 5646;
UPDATE `creature` SET `id2` = 5645, `id3` = 5646 WHERE `id` = 5647;

-- https://classic.wowhead.com/npc=5455/centipaar-wasp
-- https://classic.wowhead.com/npc=5456/centipaar-stinger
-- https://classic.wowhead.com/npc=5457/centipaar-swarmer
UPDATE `creature` SET `id2` = 5456, `id3` = 5457 WHERE `id` = 5455;
UPDATE `creature` SET `id2` = 5455, `id3` = 5457 WHERE `id` = 5456;
UPDATE `creature` SET `id2` = 5455, `id3` = 5456 WHERE `id` = 5457;

-- https://classic.wowhead.com/npc=5458/centipaar-worker
-- https://classic.wowhead.com/npc=5459/centipaar-tunneler
-- https://classic.wowhead.com/npc=5460/centipaar-sandreaver
UPDATE `creature` SET `id2` = 5460 WHERE `id` = 5458;
UPDATE `creature` SET `id2` = 5458 WHERE `id` = 5460;

-- https://classic.wowhead.com/npc=5441/hazzali-wasp
-- https://classic.wowhead.com/npc=5450/hazzali-stinger
-- https://classic.wowhead.com/npc=5451/hazzali-swarmer
UPDATE `creature` SET `id2` = 5450, `id3` = 5451 WHERE `id` = 5441;
UPDATE `creature` SET `id2` = 5441, `id3` = 5451 WHERE `id` = 5450;
UPDATE `creature` SET `id2` = 5441, `id3` = 5450 WHERE `id` = 5451;

-- https://classic.wowhead.com/npc=5452/hazzali-worker
-- https://classic.wowhead.com/npc=5453/hazzali-tunneler
-- https://classic.wowhead.com/npc=5454/hazzali-sandreaver
UPDATE `creature` SET `id2` = 5453, `id3` = 5454 WHERE `id` = 5452;
UPDATE `creature` SET `id2` = 5452, `id3` = 5454 WHERE `id` = 5453;
UPDATE `creature` SET `id2` = 5452, `id3` = 5453 WHERE `id` = 5454;

-- ----------------------------------------------------------------------

-- THOUSAND NEEDLES
-- https://classic.wowhead.com/npc=4093/galak-wrangler
-- https://classic.wowhead.com/npc=4094/galak-scout
-- https://classic.wowhead.com/npc=4096/galak-windchaser
UPDATE `creature` SET `id2` = 4094, `id3` = 4096 WHERE `id` = 4093;
UPDATE `creature` SET `id2` = 4093, `id3` = 4096 WHERE `id` = 4094;
UPDATE `creature` SET `id2` = 4093, `id3` = 4094 WHERE `id` = 4096;

-- https://classic.wowhead.com/npc=4095/galak-mauler
-- https://classic.wowhead.com/npc=4097/galak-stormer
-- https://classic.wowhead.com/npc=4099/galak-marauder
UPDATE `creature` SET `id2` = 4097, `id3` = 4099 WHERE `id` = 4095;
UPDATE `creature` SET `id2` = 4095, `id3` = 4099 WHERE `id` = 4097;
UPDATE `creature` SET `id2` = 4095, `id3` = 4097 WHERE `id` = 4099;

-- https://classic.wowhead.com/npc=10758/grimtotem-bandit
-- https://classic.wowhead.com/npc=10759/grimtotem-stomper
-- https://classic.wowhead.com/npc=10760/grimtotem-geomancer
UPDATE `creature` SET `id2` = 10759, `id3` = 10760 WHERE `id` = 10758;
UPDATE `creature` SET `id2` = 10758, `id3` = 10760 WHERE `id` = 10759;
UPDATE `creature` SET `id2` = 10758, `id3` = 10759 WHERE `id` = 10760;

-- Screeching Roguefeather Can Be 4100
-- https://classic.wowhead.com/npc=4101/screeching-roguefeather
UPDATE `creature` SET `id` = 4101 WHERE `guid` IN (
21043,
21042,
21044
);
UPDATE `creature` SET `id2` = 4100 WHERE `id` = 4101;

-- Screeching Windcaller Can Be 4100 Or 4101
-- https://classic.wowhead.com/npc=4104/screeching-windcaller
UPDATE `creature` SET `id` = 4104 WHERE `guid` IN (
21039,
21054,
21050,
21056,
21041,
21051,
21040,
21052
);
UPDATE `creature` SET `id2` = 4100, `id3` = 4101 WHERE `id` = 4104;

-- ----------------------------------------------------------------------

-- FERALAS
-- https://classic.wowhead.com/npc=5254/woodpaw-mystic
-- https://classic.wowhead.com/npc=5255/woodpaw-reaver
-- https://classic.wowhead.com/npc=5258/woodpaw-alpha
UPDATE `creature` SET `id2` = 5255, `id3` = 5258 WHERE `id` = 5254;
UPDATE `creature` SET `id2` = 5254, `id3` = 5258 WHERE `id` = 5255;
UPDATE `creature` SET `id2` = 5254, `id3` = 5255 WHERE `id` = 5258;

-- https://classic.wowhead.com/npc=5249/woodpaw-mongrel
-- https://classic.wowhead.com/npc=5251/woodpaw-trapper
-- https://classic.wowhead.com/npc=5253/woodpaw-brute
UPDATE `creature` SET `id2` = 5251 WHERE `id` = 5249;
UPDATE `creature` SET `id2` = 5249 WHERE `id` = 5251;
UPDATE `creature` SET `id2` = 5249, `id3` = 5251 WHERE `id` = 5253;

-- https://classic.wowhead.com/npc=7725/grimtotem-raider
-- https://classic.wowhead.com/npc=7726/grimtotem-naturalist
-- https://classic.wowhead.com/npc=7727/grimtotem-shaman
UPDATE `creature` SET `id2` = 7726, `id3` = 7727 WHERE `id` = 7725;
UPDATE `creature` SET `id2` = 7725, `id3` = 7727 WHERE `id` = 7726;
UPDATE `creature` SET `id2` = 7725, `id3` = 7726 WHERE `id` = 7727;

-- Gordok Enforcer Can Be Gordok Ogre Mage
-- https://classic.wowhead.com/npc=11440/gordok-enforcer
UPDATE `creature` SET `id` = 11440 WHERE `guid` IN (
51131,
51134,
51086,
51081,
51083,
51088,
51066,
51091,
51097,
51079,
51084,
51092,
51080,
51129,
51077,
51108,
51072,
51071,
51067,
51082,
51070,
51076,
51132,
51130,
51113,
51099,
51110,
51109,
51103,
51135,
51087,
51098,
51073,
51112,
51078,
51115,
51111,
51128,
51133
);
UPDATE `creature` SET `id2` = 11443 WHERE `id` = 11440;

-- Gordok Mauler Can Be Ogre Mage
-- https://classic.wowhead.com/npc=11442/gordok-mauler
UPDATE `creature` SET `id` = 11442 WHERE `guid` IN (
51074,
51121,
51122,
51123,
51124,
51125,
51127,
51126,
51096,
51100,
51095,
51094,
51101,
51102,
51119,
51118,
51120,
51090,
51093
);
UPDATE `creature` SET `id2` = 11443 WHERE `id` = 11442;

-- Gordunni Mauler Can Be Gordunni Warlock
-- https://classic.wowhead.com/npc=5234/gordunni-mauler
UPDATE `creature` SET `id` = 5234 WHERE `guid` IN (
50298,
50302,
50300,
50301,
50295,
50299,
50297
);
UPDATE `creature` SET `id2` = 5240 WHERE `id` = 5234;

-- https://classic.wowhead.com/npc=5236/gordunni-shaman
-- https://classic.wowhead.com/npc=5238/gordunni-battlemaster
-- https://classic.wowhead.com/npc=5239/gordunni-mage-lord
UPDATE `creature` SET `id2` = 5238, `id3` = 5239 WHERE `id` = 5236;
UPDATE `creature` SET `id2` = 5236, `id3` = 5239 WHERE `id` = 5238;
UPDATE `creature` SET `id2` = 5236, `id3` = 5238 WHERE `id` = 5239;

-- https://classic.wowhead.com/npc=5359/shore-strider
-- https://classic.wowhead.com/npc=5360/deep-strider
-- https://classic.wowhead.com/npc=5361/wave-strider
UPDATE `creature` SET `id2` = 5360, `id3` = 5361 WHERE `id` = 5359;
UPDATE `creature` SET `id2` = 5359, `id3` = 5361 WHERE `id` = 5360;
UPDATE `creature` SET `id2` = 5359, `id3` = 5360 WHERE `id` = 5361;

-- https://classic.wowhead.com/npc=5317/jademir-oracle
-- https://classic.wowhead.com/npc=5319/jademir-tree-warder
-- https://classic.wowhead.com/npc=5320/jademir-boughguard
UPDATE `creature` SET `id2` = 5319, `id3` = 5320 WHERE `id` = 5317;
UPDATE `creature` SET `id2` = 5317, `id3` = 5320 WHERE `id` = 5319;
UPDATE `creature` SET `id2` = 5317, `id3` = 5319 WHERE `id` = 5320;

-- https://classic.wowhead.com/npc=5357/land-walker
-- https://classic.wowhead.com/npc=5358/cliff-giant
UPDATE `creature` SET `id2` = 5358 WHERE `id` = 5357;
UPDATE `creature` SET `id2` = 5357 WHERE `id` = 5358;

-- Gordunni Ogre Can Be Gordunni Mage Or Gordunni Brute
-- https://classic.wowhead.com/npc=5229/gordunni-ogre
UPDATE `creature` SET `id2` = 5229, `id3` = 5237 WHERE `guid` IN (
50186,
50188,
50187,
50205,
50195,
50204,
50218,
50194,
50217,
50215,
50203,
50216,
50198,
50200,
50202,
50201
);
UPDATE `creature` SET `id2` = 5229, `id3` = 5232 WHERE `id` = 5237;
UPDATE `creature` SET `id2` = 5232, `id3` = 5237 WHERE `id` = 5229;

-- https://classic.wowhead.com/npc=5331/hatecrest-warrior
-- https://classic.wowhead.com/npc=5332/hatecrest-wave-rider
-- https://classic.wowhead.com/npc=5335/hatecrest-screamer
-- https://classic.wowhead.com/npc=5337/hatecrest-siren
UPDATE `creature` SET `id2` = 5332, `id3` = 5335, `id4` = 5337 WHERE `id` = 5331;
UPDATE `creature` SET `id2` = 5331, `id3` = 5335, `id4` = 5337 WHERE `id` = 5332;
UPDATE `creature` SET `id2` = 5331, `id3` = 5332, `id4` = 5337 WHERE `id` = 5335;
UPDATE `creature` SET `id2` = 5331, `id3` = 5332, `id4` = 5335 WHERE `id` = 5337;

-- Hatecrest Myrmidon Can Be Hatecrest Sorcress
-- https://classic.wowhead.com/npc=5334/hatecrest-myrmidon
UPDATE `creature` SET `id` = 5334 WHERE `guid` IN (
51655,
51607,
51626,
51557,
51625,
51638,
51628,
51634
);
UPDATE `creature` SET `id2` = 5336 WHERE `id` = 5334;

-- Hatecrest Serpent Guard Can Be Hatecrest Sorcress
-- https://classic.wowhead.com/npc=5333/hatecrest-serpent-guard
UPDATE `creature` SET `id` = 5333 WHERE `guid` IN (
51656,
51664,
51663,
51653,
51650,
51652,
51645,
51643,
51642,
51662,
51660,
51661,
51659,
51654
);
UPDATE `creature` SET `id2` = 5336 WHERE `id` = 5333;

-- https://classic.wowhead.com/npc=5362/northspring-harpy
-- https://classic.wowhead.com/npc=5363/northspring-roguefeather
-- https://classic.wowhead.com/npc=5364/northspring-slayer
-- https://classic.wowhead.com/npc=5366/northspring-windcaller
UPDATE `creature` SET `id2` = 5363, `id3` = 5364, `id4` = 5366 WHERE `id` = 5362;
UPDATE `creature` SET `id2` = 5362, `id3` = 5364, `id4` = 5366 WHERE `id` = 5363;
UPDATE `creature` SET `id2` = 5362, `id3` = 5363, `id4` = 5366 WHERE `id` = 5364;
UPDATE `creature` SET `id2` = 5362, `id3` = 5363, `id4` = 5364 WHERE `id` = 5366;

-- ----------------------------------------------------------------------

-- HINTERLANDS
-- https://classic.wowhead.com/npc=12477/verdantine-boughguard
-- https://classic.wowhead.com/npc=12478/verdantine-oracle
-- https://classic.wowhead.com/npc=12479/verdantine-tree-warder
UPDATE `creature` SET `id2` = 12478, `id3` = 12479 WHERE `id` = 12477;
UPDATE `creature` SET `id2` = 12477, `id3` = 12479 WHERE `id` = 12478;
UPDATE `creature` SET `id2` = 12477, `id3` = 12478 WHERE `id` = 12479;

-- ----------------------------------------------------------------------

-- FELWOOD
-- https://classic.wowhead.com/npc=7106/jadefire-rogue
-- https://classic.wowhead.com/npc=7109/jadefire-felsworn
-- https://classic.wowhead.com/npc=7110/jadefire-shadowstalker
UPDATE `creature` SET `id2` = 7109, `id3` = 7110 WHERE `id` = 7106;
UPDATE `creature` SET `id2` = 7106, `id3` = 7110 WHERE `guid` IN (
40695,
40730,
40735,
40738,
40747,
40757,
40764,
40769,
40829,
40835
);
UPDATE `creature` SET `id2` = 7106, `id3` = 7109 WHERE `id` = 7110;

-- https://classic.wowhead.com/npc=7112/jaedenar-cultist
-- https://classic.wowhead.com/npc=7115/jaedenar-adept
UPDATE `creature` SET `id2` = 7115 WHERE `id` = 7112;
UPDATE `creature` SET `id2` = 7112 WHERE `id` = 7115;

-- https://classic.wowhead.com/npc=7118/jaedenar-darkweaver
-- https://classic.wowhead.com/npc=7120/jaedenar-warlock
UPDATE `creature` SET `id2` = 7120 WHERE `id` = 7118;
UPDATE `creature` SET `id2` = 7118 WHERE `id` = 7120;

-- https://classic.wowhead.com/npc=7107/jadefire-trickster
-- https://classic.wowhead.com/npc=7108/jadefire-betrayer
UPDATE `creature` SET `id2` = 7108 WHERE `guid` IN (
40193,
40194,
40195,
40240,
40241,
40242,
40284,
40288,
40289,
40291,
40296,
40677,
40678,
40713,
40714
);
UPDATE `creature` SET `id2` = 7107 WHERE `id` = 7108;

-- https://classic.wowhead.com/npc=7100/warpwood-moss-flayer
-- https://classic.wowhead.com/npc=7101/warpwood-shredder
UPDATE `creature` SET `id2` = 7101 WHERE `id` = 7100;
UPDATE `creature` SET `id2` = 7100 WHERE `id` = 7101;

-- https://classic.wowhead.com/npc=7156/deadwood-den-watcher
-- https://classic.wowhead.com/npc=7157/deadwood-avenger
-- https://classic.wowhead.com/npc=7158/deadwood-shaman
UPDATE `creature` SET `id2` = 7157, `id3` = 7158 WHERE `id` = 7156;
UPDATE `creature` SET `id2` = 7156, `id3` = 7158 WHERE `id` = 7157;
UPDATE `creature` SET `id2` = 7156, `id3` = 7157 WHERE `id` = 7158;

-- ----------------------------------------------------------------------

-- BURNING STEPPES
-- https://classic.wowhead.com/npc=7042/flamescale-dragonspawn
-- https://classic.wowhead.com/npc=7043/flamescale-wyrmkin
UPDATE `creature` SET `id2` = 7043 WHERE `id` = 7042;
UPDATE `creature` SET `id2` = 7042 WHERE `id` = 7043;

-- https://classic.wowhead.com/npc=7036/thaurissan-spy
-- https://classic.wowhead.com/npc=7037/thaurissan-firewalker
-- https://classic.wowhead.com/npc=7038/thaurissan-agent
UPDATE `creature` SET `id2` = 7037, `id3` = 7038 WHERE `id` = 7036;
UPDATE `creature` SET `id2` = 7036, `id3` = 7038 WHERE `id` = 7037;
UPDATE `creature` SET `id2` = 7036, `id3` = 7037 WHERE `id` = 7038;

-- Firegut Ogres (7033) Can Spawn As Firegut Ogre Mage (7034)
-- https://classic.wowhead.com/npc=7033/firegut-ogre
UPDATE `creature` SET `id` = 7033 WHERE `id` = 7034;
UPDATE `creature` SET `id2` = 7034 WHERE `id` = 7033;

-- Firegut Brutes (7035) Can Spawn As Firegut Ogre Mage (7034)
-- https://classic.wowhead.com/npc=7035/firegut-brute
UPDATE `creature` SET `id` = 7035 WHERE `guid` = 5353;
UPDATE `creature` SET `id2` = 7034 WHERE `id` = 7035;

-- https://classic.wowhead.com/npc=9778/flamekin-torcher
-- https://classic.wowhead.com/npc=9779/flamekin-rager
UPDATE `creature` SET `id2` = 9779 WHERE `id` = 9778;
UPDATE `creature` SET `id2` = 9778 WHERE `id` = 9779;

-- ----------------------------------------------------------------------

-- SWAMP OF SORROWS
-- https://classic.wowhead.com/npc=765/swampwalker-elder
-- https://classic.wowhead.com/npc=766/tangled-horror
UPDATE `creature` SET `id2` = 766 WHERE `id` = 765;
UPDATE `creature` SET `id2` = 765 WHERE `guid` IN (
42823,
42825,
42828,
42832,
42834
);

-- https://classic.wowhead.com/npc=761/lost-one-seer
-- https://classic.wowhead.com/npc=762/lost-one-riftseeker
UPDATE `creature` SET `id2` = 762 WHERE `id` = 761;
UPDATE `creature` SET `id2` = 761 WHERE `id` = 762;

-- https://classic.wowhead.com/npc=751/marsh-flesheater
-- https://classic.wowhead.com/npc=752/marsh-oracle
UPDATE `creature` SET `id2` = 752 WHERE `id` = 751;
UPDATE `creature` SET `id2` = 751 WHERE `id` = 752;

-- ----------------------------------------------------------------------

-- ALTERAC
-- https://classic.wowhead.com/npc=2240/syndicate-footpad
-- https://classic.wowhead.com/npc=2241/syndicate-thief
UPDATE `creature` SET `id2` = 2241 WHERE `id` = 2240;
UPDATE `creature` SET `id2` = 2240 WHERE `id` = 2241;

-- TIRISFAL
-- https://classic.wowhead.com/npc=1525/rotting-dead
-- https://classic.wowhead.com/npc=1526/ravaged-corpse
UPDATE `creature` SET `id2` = 1526 WHERE `id` = 1525;
UPDATE `creature` SET `id2` = 1525 WHERE `id` = 1526;

--  Scarlet Missionary (1536) Can Be Scarlet Zealot(1537)
-- https://classic.wowhead.com/npc=1536/scarlet-missionary
UPDATE `creature` SET `id` = 1536 WHERE `guid` IN (
44276,
44573,
44874,
44865,
44574,
44578,
44580,
45059,
45067,
44582,
45057,
45065,
44601,
44483,
38340
);
UPDATE `creature` SET `id2` = 1537 WHERE `id` = 1536;

-- https://classic.wowhead.com/npc=1527/hungering-dead
-- https://classic.wowhead.com/npc=1528/shambling-horror
UPDATE `creature` SET `id2` = 1528 WHERE `id` = 1527;
UPDATE `creature` SET `id2` = 1527 WHERE `id` = 1528;

-- https://classic.wowhead.com/npc=4280/scarlet-preserver
-- https://classic.wowhead.com/npc=4281/scarlet-scout
-- https://classic.wowhead.com/npc=4282/scarlet-magician
UPDATE `creature` SET `id2` = 4281, `id3` = 4282 WHERE `id` = 4280;
UPDATE `creature` SET `id2` = 4280, `id3` = 4282 WHERE `id` = 4281;
UPDATE `creature` SET `id2` = 4280, `id3` = 4281 WHERE `id` = 4282;

-- ----------------------------------------------------------------------

-- LOCH MODAN
-- https://classic.wowhead.com/npc=1172/tunnel-rat-vermin
-- https://classic.wowhead.com/npc=1173/tunnel-rat-scout
UPDATE `creature` SET `id2` = 1173 WHERE `id` = 1172;
UPDATE `creature` SET `id2` = 1172 WHERE `id` = 1173;

-- https://classic.wowhead.com/npc=1176/tunnel-rat-forager
-- https://classic.wowhead.com/npc=1202/tunnel-rat-kobold
UPDATE `creature` SET `id2` = 1202 WHERE `id` = 1176;
UPDATE `creature` SET `id2` = 1176 WHERE `id` = 1202;

-- https://classic.wowhead.com/npc=1161/stonesplinter-trogg
-- https://classic.wowhead.com/npc=1162/stonesplinter-scout
UPDATE `creature` SET `id2` = 1162 WHERE `id` = 1161;
UPDATE `creature` SET `id2` = 1161 WHERE `id` = 1162;

-- https://classic.wowhead.com/npc=1164/stonesplinter-bonesnapper
-- https://classic.wowhead.com/npc=1197/stonesplinter-shaman
UPDATE `creature` SET `id2` = 1197 WHERE `id` = 1164;
UPDATE `creature` SET `id2` = 1164 WHERE `id` = 1197;

-- https://classic.wowhead.com/npc=1163/stonesplinter-skullthumper
-- https://classic.wowhead.com/npc=1166/stonesplinter-seer
UPDATE `creature` SET `id2` = 1166 WHERE `id` = 1163;
UPDATE `creature` SET `id2` = 1163 WHERE `id` = 1166;

-- https://classic.wowhead.com/npc=1165/stonesplinter-geomancer
-- https://classic.wowhead.com/npc=1167/stonesplinter-digger
-- https://classic.wowhead.com/npc=1393/berserk-trogg
UPDATE `creature` SET `id2` = 1167, `id3` = 1393 WHERE `id` = 1165;
UPDATE `creature` SET `id2` = 1165, `id3` = 1393 WHERE `id` = 1167;
UPDATE `creature` SET `id2` = 1165, `id3` = 1167 WHERE `id` = 1393;

-- https://classic.wowhead.com/npc=1178/mogrosh-ogre
-- https://classic.wowhead.com/npc=1179/mogrosh-enforcer
-- https://classic.wowhead.com/npc=1181/mogrosh-shaman
UPDATE `creature` SET `id2` = 1179, `id3` = 1181 WHERE `id` = 1178;
UPDATE `creature` SET `id2` = 1178, `id3` = 1181 WHERE `id` = 1179;
UPDATE `creature` SET `id2` = 1178, `id3` = 1179 WHERE `id` = 1181;

-- https://classic.wowhead.com/npc=1180/mogrosh-brute
-- https://classic.wowhead.com/npc=1183/mogrosh-mystic
UPDATE `creature` SET `id2` = 1183 WHERE `id` = 1180;
UPDATE `creature` SET `id2` = 1180 WHERE `id` = 1183;

-- ----------------------------------------------------------------------

-- SEARING GEORGE
-- https://classic.wowhead.com/npc=5844/dark-iron-slaver
-- https://classic.wowhead.com/npc=5846/dark-iron-taskmaster
UPDATE `creature` SET `id2` = 5846 WHERE `id` = 5844;
UPDATE `creature` SET `id2` = 5844 WHERE `id` = 5846;

-- https://classic.wowhead.com/npc=5839/dark-iron-geologist
-- https://classic.wowhead.com/npc=8637/dark-iron-watchman
UPDATE `creature` SET `id2` = 8637 WHERE `id` = 5839;
UPDATE `creature` SET `id2` = 5839 WHERE `id` = 8637;

-- ----------------------------------------------------------------------

-- BLASTED LANDS
-- https://classic.wowhead.com/npc=5974/dreadmaul-ogre
-- https://classic.wowhead.com/npc=5975/dreadmaul-ogre-mage
-- https://classic.wowhead.com/npc=5976/dreadmaul-brute
UPDATE `creature` SET `id2` = 5975, `id3` = 5976 WHERE `id` = 5974;
UPDATE `creature` SET `id2` = 5974, `id3` = 5976 WHERE `id` = 5975;
UPDATE `creature` SET `id2` = 5974, `id3` = 5975 WHERE `id` = 5976;

-- https://classic.wowhead.com/npc=6007/shadowsworn-enforcer
-- https://classic.wowhead.com/npc=6008/shadowsworn-warlock
-- https://classic.wowhead.com/npc=6009/shadowsworn-dreadweaver
UPDATE `creature` SET `id2` = 6008, `id3` = 6009 WHERE `id` = 6007;
UPDATE `creature` SET `id2` = 6007, `id3` = 6009 WHERE `id` = 6008;
UPDATE `creature` SET `id2` = 6007, `id3` = 6008 WHERE `id` = 6009;

-- https://classic.wowhead.com/npc=5978/dreadmaul-warlock
-- https://classic.wowhead.com/npc=5977/dreadmaul-mauler
UPDATE `creature` SET `id2` = 5977 WHERE `id` = 5978;
UPDATE `creature` SET `id2` = 5978 WHERE `id` = 5977;

-- https://classic.wowhead.com/npc=6004/shadowsworn-cultist
-- https://classic.wowhead.com/npc=6005/shadowsworn-thug
-- https://classic.wowhead.com/npc=6006/shadowsworn-adept
UPDATE `creature` SET `id2` = 6005, `id3` = 6006 WHERE `id` = 6004;
UPDATE `creature` SET `id2` = 6004, `id3` = 6006 WHERE `id` = 6005;
UPDATE `creature` SET `id2` = 6004, `id3` = 6005 WHERE `id` = 6006;

-- ----------------------------------------------------------------------

-- WESTFALL
-- Murloc Raider Can Be Murloc Coastrunner
-- https://classic.wowhead.com/npc=515/murloc-raider
UPDATE `creature` SET `id` = 515 WHERE `guid` IN (
89938,
90088,
90077,
89459,
89934,
90076,
89940,
90405,
89464,
89461,
89466,
90090,
89936,
90385,
90081,
90078,
90075,
89458
);
UPDATE `creature` SET `id2` = 126 WHERE `id` = 515;

-- Murloc Minor Oracle Can Be Murloc Coastrunner
-- https://classic.wowhead.com/npc=456/murloc-minor-oracle
UPDATE `creature` SET `id` = 456 WHERE `guid` IN (
90080,
90079,
89939,
90089,
90083,
90086,
90084
);
UPDATE `creature` SET `id2` = 126 WHERE `id` = 456;

-- Murloc Netter Can Be Murloc Minor Oracle
-- https://classic.wowhead.com/npc=513/murloc-netter
UPDATE `creature` SET `id` = 513 WHERE `guid` IN (
89922,
68756,
89921,
90064,
69492,
89923,
81709,
89919,
90067,
89917,
89918,
68754,
90060,
89470,
89473
);
UPDATE `creature` SET `id2` = 456 WHERE `id` = 513;

-- Murloc Warrior Can Be Murloc Netter
-- https://classic.wowhead.com/npc=171/murloc-warrior
UPDATE `creature` SET `id` = 171 WHERE `guid` IN (
89943,
89944,
90099,
89488,
89479,
90093,
90094,
89947
);
UPDATE `creature` SET `id2` = 513 WHERE `id` = 171;

-- Murloc Hunter Can Be Murloc Warrior
-- https://classic.wowhead.com/npc=458/murloc-hunter
UPDATE `creature` SET `id` = 458 WHERE `guid` IN (
89948,
89949,
89485,
89487,
89486,
89476,
89954,
89494,
89952,
89497,
90024,
90027,
90022,
89832,
89833,
90026,
89836,
89478,
89480,
89946,
89483,
89484,
90098,
89834,
89835
);
UPDATE `creature` SET `id2` = 171 WHERE `id` = 458;

-- Murloc Oracle Can Be Murloc Hunter
-- https://classic.wowhead.com/npc=517/murloc-oracle
UPDATE `creature` SET `id` = 517 WHERE `guid` IN (
89506,
89956,
89957,
89962,
89970,
90111,
90110,
90109
);
UPDATE `creature` SET `id2` = 458 WHERE `id` = 517;

-- Murloc Tidehunter Can Be Murloc Oracle
-- https://classic.wowhead.com/npc=127/murloc-tidehunter
UPDATE `creature` SET `id` = 127 WHERE `guid` IN (
89975,
89513,
89519,
89508,
89507,
89960,
89501,
89972,
89512,
89974,
90148,
90112,
90106,
90105
);
UPDATE `creature` SET `id2` = 517 WHERE `id` = 127;

-- Riverpaw Gnoll Can Be Riverpaw Scout
-- https://classic.wowhead.com/npc=117/riverpaw-gnoll
UPDATE `creature` SET `id` = 117 WHERE `guid` IN (
86616,
86620,
90332,
86783,
90335,
86662,
86785,
86661,
86786,
87025,
86793
);
UPDATE `creature` SET `id2` = 500 WHERE `id` = 117;

-- Riverpaw Gnoll Or Riverpaw Shaman
UPDATE `creature` SET `id` = 500, `id2` = 1065 WHERE `guid` IN (
86791,
86790,
87024,
86792
);

-- Riverpaw Herbalist Can Be Riverpaw Mongrel
-- https://classic.wowhead.com/npc=501/riverpaw-herbalist
UPDATE `creature` SET `id` = 501 WHERE `guid` IN (
89609,
89610,
89611,
89602,
90309,
89601,
89600,
89597,
89598,
89604,
89605,
87027,
89632,
90304,
89623,
89620,
89624,
89619,
89658,
89659,
89621,
89626,
89627,
89630,
89629,
89628,
89633
);
UPDATE `creature` SET `id2` = 123 WHERE `id` = 501;

-- Riverpaw Mystic Can Be Riverpaw Taskmaster
-- https://classic.wowhead.com/npc=453/riverpaw-mystic
UPDATE `creature` SET `id` = 453 WHERE `guid` IN (
90258,
90262,
89724,
89723,
89721,
89725,
89753,
89755,
89754,
90260,
90240,
90247,
89741,
89764,
89762,
89763,
89761,
89759,
89738,
89734,
89739,
89737,
89727,
89733,
89747,
89744,
89746,
89745,
89732,
89731,
89730,
90266,
89758
);
UPDATE `creature` SET `id2` = 98 WHERE `id` = 453;

-- https://classic.wowhead.com/npc=589/defias-pillager
-- https://classic.wowhead.com/npc=590/defias-looter
UPDATE `creature` SET `id2` = 590 WHERE `id` = 589;
UPDATE `creature` SET `id2` = 589 WHERE `id` = 590;

-- https://classic.wowhead.com/npc=95/defias-smuggler
-- https://classic.wowhead.com/npc=504/defias-trapper
UPDATE `creature` SET `id2` = 504 WHERE `id` = 95;
UPDATE `creature` SET `id2` = 95 WHERE `id` = 504 && `guid` NOT IN (89451, 89452, 89453, 89454, 89455, 89456, 89457, 90317, 90320, 90322);

-- ----------------------------------------------------------------------

-- DESOLACE
-- https://classic.wowhead.com/npc=4670/hatefury-rogue
-- https://classic.wowhead.com/npc=4671/hatefury-trickster
-- https://classic.wowhead.com/npc=4672/hatefury-felsworn
UPDATE `creature` SET `id2` = 4671, `id3` = 4672 WHERE `id` = 4670;
UPDATE `creature` SET `id2` = 4670, `id3` = 4672 WHERE `id` = 4671;
UPDATE `creature` SET `id2` = 4670, `id3` = 4671 WHERE `id` = 4672;

-- https://classic.wowhead.com/npc=4673/hatefury-betrayer
-- https://classic.wowhead.com/npc=4674/hatefury-shadowstalker
-- https://classic.wowhead.com/npc=4675/hatefury-hellcaller
UPDATE `creature` SET `id2` = 4674, `id3` = 4675 WHERE `id` = 4673;
UPDATE `creature` SET `id2` = 4673, `id3` = 4675 WHERE `id` = 4674;
UPDATE `creature` SET `id2` = 4673, `id3` = 4674 WHERE `id` = 4675;

-- https://classic.wowhead.com/npc=4632/kolkar-centaur
-- https://classic.wowhead.com/npc=4633/kolkar-scout
-- https://classic.wowhead.com/npc=4634/kolkar-mauler
UPDATE `creature` SET `id2` = 4633 WHERE `id` = 4632;
UPDATE `creature` SET `id2` = 4632 WHERE `id` = 4633;

-- https://classic.wowhead.com/npc=4635/kolkar-windchaser
-- https://classic.wowhead.com/npc=4636/kolkar-battle-lord
-- https://classic.wowhead.com/npc=4637/kolkar-destroyer
UPDATE `creature` SET `id2` = 4636, `id3` = 4637 WHERE `id` = 4635;
UPDATE `creature` SET `id2` = 4635, `id3` = 4637 WHERE `id` = 4636;
UPDATE `creature` SET `id2` = 4635, `id3` = 4636 WHERE `id` = 4637;

-- https://classic.wowhead.com/npc=4638/magram-scout
-- https://classic.wowhead.com/npc=4639/magram-outrunner
UPDATE `creature` SET `id2` = 4639 WHERE `id` = 4638;
UPDATE `creature` SET `id2` = 4638 WHERE `id` = 4639;

-- https://classic.wowhead.com/npc=4640/magram-wrangler
-- https://classic.wowhead.com/npc=4641/magram-windchaser
UPDATE `creature` SET `id2` = 4641 WHERE `id` = 4640;
UPDATE `creature` SET `id2` = 4640 WHERE `id` = 4641;

-- https://classic.wowhead.com/npc=4644/magram-marauder
-- https://classic.wowhead.com/npc=4645/magram-mauler
UPDATE `creature` SET `id2` = 4645 WHERE `id` = 4644;
UPDATE `creature` SET `id2` = 4644 WHERE `id` = 4645;

-- https://classic.wowhead.com/npc=4646/gelkis-outrunner
-- https://classic.wowhead.com/npc=4647/gelkis-scout
UPDATE `creature` SET `id2` = 4647 WHERE `id` = 4646;
UPDATE `creature` SET `id2` = 4646 WHERE `id` = 4647;

-- https://classic.wowhead.com/npc=4648/gelkis-stamper
-- https://classic.wowhead.com/npc=4649/gelkis-windchaser
UPDATE `creature` SET `id2` = 4649 WHERE `id` = 4648;
UPDATE `creature` SET `id2` = 4648 WHERE `id` = 4649;

-- https://classic.wowhead.com/npc=4652/gelkis-mauler
-- https://classic.wowhead.com/npc=4653/gelkis-marauder
UPDATE `creature` SET `id2` = 4653 WHERE `id` = 4652;
UPDATE `creature` SET `id2` = 4652 WHERE `id` = 4653;

-- https://classic.wowhead.com/npc=4654/maraudine-scout
-- https://classic.wowhead.com/npc=4655/maraudine-wrangler
UPDATE `creature` SET `id2` = 4655 WHERE `id` = 4654;
UPDATE `creature` SET `id2` = 4654 WHERE `id` = 4655;

-- https://classic.wowhead.com/npc=4656/maraudine-mauler
-- https://classic.wowhead.com/npc=4657/maraudine-windchaser
UPDATE `creature` SET `id2` = 4657 WHERE `id` = 4656;
UPDATE `creature` SET `id2` = 4656 WHERE `id` = 4657;

-- https://classic.wowhead.com/npc=4658/maraudine-stormer
-- https://classic.wowhead.com/npc=4659/maraudine-marauder
UPDATE `creature` SET `id2` = 4659 WHERE `id` = 4658;
UPDATE `creature` SET `id2` = 4658 WHERE `id` = 4659;

-- Fix startup errors.
UPDATE `creature` SET `mana_percent`=100 WHERE `mana_percent`=0 && `id` IN (60, 127, 203, 314, 335, 397, 416, 417, 429, 430, 436, 441, 450, 453, 456, 474, 476, 486, 503, 507, 517, 533, 545, 548, 572, 589, 596, 599, 619, 11616, 660, 670, 672, 676, 677, 679, 697, 701, 710, 711, 740, 741, 743, 752, 761, 762, 764, 765, 766, 780, 785, 787, 808, 814, 815, 818, 819, 868, 873, 875, 881, 891, 910, 920, 940, 941, 942, 943, 946, 978, 1009, 1013, 1028, 1029, 1038, 1043, 1044, 1046, 1049, 1057, 1060, 1062, 1065, 1069, 1096, 1106, 1121, 1124, 1144, 1165, 1166, 1174, 1179, 1181, 1183, 1197, 1200, 1251, 1260, 1284, 1364, 1397, 1399, 1425, 1490, 1507, 1522, 1523, 1538, 1539, 1544, 1562, 1564, 1653, 1679, 1717, 1726, 1729, 1732, 1748, 1768, 1769, 1773, 1784, 1789, 1794, 1795, 1800, 1826, 1832, 1834, 1835, 1837, 1839, 1840, 1842, 1845, 1846, 1848, 1852, 1853, 1855, 1860, 1863, 1867, 1868, 1888, 1889, 1895, 1896, 1908, 1909, 1910, 1911, 1914, 1915, 1920, 1940, 1947, 1954, 1958, 1993, 2002, 2003, 2009, 2011, 2012, 2014, 2018, 2021, 2030, 2038, 2044, 2054, 2055, 2108, 2120, 2160, 2167, 2169, 2170, 2171, 2180, 2182, 2191, 2192, 2203, 2207, 2208, 2244, 2255, 2272, 2276, 2283, 2305, 2306, 2318, 2319, 2335, 2337, 2338, 2344, 2346, 2358, 2370, 2371, 2373, 2376, 2377, 2387, 2415, 2417, 2423, 2425, 2433, 2447, 2453, 2534, 2543, 2550, 2553, 2555, 2557, 2567, 2570, 2573, 2575, 2577, 2583, 2590, 2591, 2596, 2598, 2600, 2601, 2602, 2605, 2607, 2609, 2612, 2624, 2638, 2640, 2642, 2645, 2654, 2694, 2713, 2718, 2720, 2725, 2740, 2742, 2745, 2755, 2761, 2762, 2764, 2793, 2887, 2892, 2894, 2907, 2949, 2950, 2953, 2963, 2964, 2965, 2990, 3101, 3113, 3118, 3120, 3183, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 5291, 3260, 3261, 3263, 3268, 3269, 3270, 3271, 3273, 3280, 3380, 3386, 3392, 3397, 3434, 3436, 3458, 4119, 3510, 3516, 3569, 4117, 3662, 3664, 3669, 3670, 3671, 3672, 3673, 3678, 3712, 3715, 3717, 3725, 3728, 3732, 3735, 3742, 3748, 3750, 3755, 3757, 3762, 3771, 3772, 3773, 3781, 3783, 3797, 3799, 3801, 3802, 3803, 3833, 3840, 3850, 3851, 3853, 3855, 3899, 3900, 3917, 3922, 3924, 3940, 3941, 3942, 3944, 3974, 3976, 3977, 3983, 3986, 3991, 4003, 4016, 4017, 4024, 4025, 4026, 4027, 4028, 4032, 4036, 4038, 4050, 4051, 4052, 4053, 4063, 4066, 4090, 4091, 4092, 4096, 4097, 4116, 4138, 4146, 4151, 4165, 4198, 4205, 4217, 4218, 4219, 4273, 4275, 4278, 4280, 4282, 4284, 4285, 4287, 4289, 4291, 4292, 4293, 4294, 4296, 4297, 4299, 4300, 4302, 4303, 4324, 4331, 4334, 4363, 4370, 4371, 4404, 4418, 4421, 4424, 4427, 4428, 4440, 4459, 4460, 4463, 4467, 4469, 4472, 4485, 4489, 4494, 4515, 4516, 4517, 4518, 4519, 4520, 4522, 4523, 4525, 4542, 4543, 4635, 4637, 4641, 4642, 4649, 4651, 4657, 4658, 4663, 4665, 4667, 4668, 4675, 4678, 4679, 4681, 4682, 4684, 4685, 4705, 4712, 4716, 4718, 4719, 4723, 4798, 4799, 4802, 4803, 4805, 4809, 4811, 4812, 4813, 4814, 4820, 4831, 4832, 4842, 4844, 4847, 4848, 4852, 4853, 4949, 4968, 4971, 4978, 3424, 5236, 5237, 5239, 5240, 5254, 5259, 5269, 5271, 5273, 5276, 5278, 5280, 3249, 5305, 5317, 5328, 5333, 5335, 5336, 5337, 5343, 5360, 5362, 5363, 5364, 5366, 5401, 5429, 5473, 5475, 5485, 5520, 5617, 5643, 5647, 5648, 5650, 5677, 5679, 5682, 5683, 5694, 5710, 5711, 5712, 5715, 5717, 5726, 5744, 5747, 5749, 5750, 5753, 3247, 5761, 5769, 5771, 5785, 5815, 5822, 5826, 5830, 5834, 5839, 5860, 5862, 5863, 5893, 5894, 5899, 5902, 5915, 5916, 5930, 5975, 5978, 5979, 5981, 6000, 6002, 6006, 6008, 6009, 6027, 6047, 6070, 6072, 6117, 6119, 6120, 6121, 6122, 6127, 6129, 6131, 6138, 6168, 6170, 6171, 6172, 6177, 6178, 6179, 6186, 6188, 6194, 6195, 6198, 6199, 6200, 6202, 6213, 6220, 6221, 6227, 6228, 6244, 6246, 6247, 6251, 6252, 6253, 6254, 6267, 6293, 6294, 6328, 6329, 6351, 6366, 6370, 6373, 6374, 6376, 6378, 6380, 6382, 6392, 6487, 6490, 6519, 6520, 6527, 6546, 6550, 6575, 6649, 6826, 6868, 6887, 6912, 7007, 7010, 7012, 7016, 7026, 7028, 7030, 7034, 7041, 7043, 7047, 7048, 7049, 7075, 7071, 7070, 7068, 7077, 7104, 7107, 7109, 7111, 7112, 7115, 7118, 7120, 7154, 7158, 16452, 16451, 7235, 7246, 7271, 7275, 7313, 7316, 7317, 7318, 7319, 7321, 7335, 7337, 7340, 7341, 7342, 7352, 7353, 7354, 7357, 7358, 7372, 7379, 7397, 7411, 7429, 7437, 7439, 7441, 7453, 7461, 7505, 7523, 7524, 7583, 7584, 7666, 7667, 7726, 7727, 7734, 7735, 7740, 7767, 7772, 7773, 7774, 7779, 7780, 7789, 7795, 7843, 7872, 7874, 7878, 7879, 7886, 7895, 7957, 7995, 7996, 7997, 7999, 8075, 8115, 8127, 8136, 8138, 8200, 8202, 8217, 8282, 8296, 8298, 8336, 8378, 8379, 8381, 8382, 8390, 8394, 8405, 8409, 8419, 8438, 8439, 8440, 8442, 8443, 8444, 8497, 8503, 8504, 8507, 8516, 8524, 8525, 8526, 8528, 8547, 8548, 8550, 8551, 8553, 8562, 8578, 8579, 8588, 8636, 8656, 8657, 8658, 8716, 8763, 8764, 8776, 8876, 8879, 8894, 8895, 8896, 8898, 8900, 8902, 8904, 8908, 8909, 8910, 8912, 8913, 8914, 8915, 8916, 8917, 8929, 8977, 8980, 8983, 9018, 9024, 9026, 9029, 9030, 9031, 9034, 9036, 9038, 9039, 9041, 9045, 9056, 9078, 9079, 9081, 9084, 9085, 9098, 9197, 9198, 9201, 9217, 9236, 9238, 9239, 9240, 9257, 9261, 9262, 9263, 9264, 9265, 9266, 9269, 9397, 9437, 9438, 9439, 9441, 9442, 9443, 9447, 9448, 9449, 9450, 9451, 9452, 9476, 9499, 9516, 9517, 9518, 9523, 9528, 9529, 9547, 9561, 9562, 9565, 16368, 9604, 9616, 9619, 9678, 9681, 9693, 9717, 9778, 9817, 9818, 9861, 9877, 9997, 10000, 10076, 10078, 10083, 10119, 10136, 10157, 10162, 10181, 10199, 10201, 10307, 10358, 10373, 10389, 10390, 10393, 10394, 10398, 10400, 10419, 10420, 10421, 10422, 10423, 10424, 10425, 10426, 10432, 10433, 10436, 10438, 10440, 10442, 10469, 10470, 10471, 10472, 10476, 10477, 10487, 10491, 10498, 10499, 10500, 10502, 10503, 10505, 10506, 10508, 10540, 10559, 10584, 10602, 10605, 10608, 10618, 10640, 10642, 10647, 10648, 10660, 10680, 10684, 10698, 10699, 10717, 10738, 10739, 10759, 10760, 10802, 10811, 10812, 10813, 10823, 10827, 10828, 10838, 10876, 10917, 10920, 10921, 10922, 10923, 10928, 10929, 10939, 10944, 10945, 10949, 11019, 11020, 11032, 11040, 11053, 11055, 11056, 11057, 11076, 11077, 11141, 11143, 11256, 11257, 11319, 11322, 11324, 11338, 11339, 11340, 11346, 11347, 11380, 11383, 11388, 11397, 11401, 11406, 11407, 11443, 11444, 11445, 11448, 11453, 11455, 11457, 11461, 11464, 11466, 11470, 11471, 11473, 11480, 11483, 11484, 11487, 11488, 11492, 11497, 11518, 11548, 11559, 11562, 11577, 11582, 11598, 11600, 11604, 11608, 11609, 11611, 11615, 11622, 11657, 11661, 11662, 11663, 11664, 11675, 11677, 11679, 11680, 11683, 11685, 11697, 11713, 11714, 11754, 11756, 11793, 11795, 11796, 11797, 11798, 11799, 11800, 11801, 11802, 11804, 11805, 11807, 11808, 11811, 11822, 11830, 11831, 11832, 11837, 11838, 11859, 11863, 11873, 11878, 11882, 11883, 11898, 11913, 11915, 11917, 11949, 12118, 12119, 12126, 12128, 12140, 12157, 12178, 12204, 12205, 12224, 12225, 12238, 12259, 12264, 12319, 12321, 12322, 12337, 12339, 12352, 12378, 12387, 12396, 12420, 12433, 12457, 12458, 12459, 12465, 12468, 12476, 12478, 12557, 12722, 12736, 12759, 12779, 12856, 12862, 12863, 12864, 12865, 12866, 12876, 12902, 12922, 12976, 13019, 13096, 13097, 13098, 13099, 13116, 13117, 13157, 13158, 13197, 13220, 13236, 13256, 13280, 13284, 13419, 13442, 13443, 13537, 13538, 13539, 13540, 13541, 13542, 13546, 13547, 13548, 13555, 13556, 13557, 13698, 13716, 13718, 13737, 13956, 13958, 14021, 14026, 14027, 14028, 14029, 14030, 14031, 14182, 14183, 14230, 14272, 14275, 14277, 14324, 14327, 14349, 14354, 14364, 14368, 14369, 14371, 14381, 14382, 14383, 14385, 14387, 14393, 14394, 14397, 14398, 14399, 14400, 14432, 14436, 14452, 14470, 14478, 14479, 14487, 14497, 14506, 14507, 14509, 14510, 14511, 14515, 14516, 14517, 14518, 14521, 14522, 14523, 14527, 14530, 14533, 14536, 14621, 14639, 14822, 14823, 14825, 14834, 14861, 14876, 14883, 14911, 15061, 15083, 15111, 15169, 15183, 15187, 15188, 15191, 15192, 15193, 15200, 15202, 15206, 15213, 15215, 15260, 15293, 15308, 15362, 14862, 15250, 15262, 15263, 15276, 15312, 15338, 15340, 15370, 15378, 15379, 15380, 15381, 15443, 15444, 15471, 15502, 15503, 15504, 15527, 15613, 15615, 15620, 15859, 15868, 15869, 16163, 16165, 16168, 16381, 16446, 16505, 16506, 16127, 16060, 15990, 15980, 15981, 16113, 16115, 16116, 16132, 16133, 16134, 16135, 16013, 16033, 16048, 16073, 16114, 16080, 16097, 16101, 16102, 16103, 16104, 16118, 15614, 15498, 16543, 16478, 16494, 15592, 15593, 15594, 15595, 15596, 15597, 15598, 15599, 15600, 15601, 15602, 15603, 15604, 15605, 15606, 15607, 15871, 15588, 15587, 15586, 15585, 15584, 15583, 15582, 15581, 15580, 15579, 15578, 15577, 15576, 15575, 15574, 15573, 15572, 15570, 15569, 15568, 15567, 15566, 15565, 15564, 15563, 15562, 15561, 15560, 15559, 15558, 15557, 15556, 15549, 7291, 4854, 6910, 16143, 16042, 15895, 15898, 15085, 15552, 15693, 15909, 16126, 16284, 16981, 16254, 16484, 16490, 16493, 16495, 17635, 17647, 17995, 17996, 14684, 15382, 15449, 15495, 15623, 15633, 15634, 15744, 15842, 15843, 15844, 15847, 15849, 15855, 15856, 15860, 15867, 16051, 16052, 16053, 16054, 16055, 16058, 16093, 16120, 16861, 16083, 15720, 14877, 14941, 14968, 14686, 14690, 14693, 15328, 15373, 15410, 15411, 15412, 15413, 15507, 15660, 15772, 15863, 16123, 16438, 16439, 160000, 160001, 160002, 160003, 160004, 160005, 14599, 10819, 7073, 7074, 15105, 13697, 4328, 15900, 15899, 62, 209, 283, 882, 1055, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1758, 1759, 1761, 1798, 1862, 2040, 2935, 3262, 3860, 4069, 4098, 4683, 4717, 5006, 5507, 5746, 5825, 5980, 6046, 6067, 6183, 6197, 6214, 8316, 8321, 8322, 8323, 8377, 8406, 8549, 8935, 9417, 9617, 10493, 10736, 10810, 10818, 10820, 11392, 11393, 11394, 11395, 11396, 11398, 11399, 11400, 11402, 11403, 11404, 11405, 11408, 11409, 11410, 11411, 11412, 11413, 11414, 11415, 11416, 11549, 11550, 11579, 11599, 11606, 11617, 11618, 11779, 11958, 12317, 12386, 12916, 12917, 14016, 14162, 14341, 14683, 14687, 14689, 14694, 14702, 14703, 14704, 14705, 14710, 14886, 15121, 15352, 15506, 15992, 15993, 15996, 15997, 15998, 15999, 16089, 16128, 17313, 17685, 18078);
UPDATE `creature` SET `mana_percent`=100 WHERE `mana_percent`=0 && `id2` IN (60, 127, 203, 314, 335, 397, 416, 417, 429, 430, 436, 441, 450, 453, 456, 474, 476, 486, 503, 507, 517, 533, 545, 548, 572, 589, 596, 599, 619, 11616, 660, 670, 672, 676, 677, 679, 697, 701, 710, 711, 740, 741, 743, 752, 761, 762, 764, 765, 766, 780, 785, 787, 808, 814, 815, 818, 819, 868, 873, 875, 881, 891, 910, 920, 940, 941, 942, 943, 946, 978, 1009, 1013, 1028, 1029, 1038, 1043, 1044, 1046, 1049, 1057, 1060, 1062, 1065, 1069, 1096, 1106, 1121, 1124, 1144, 1165, 1166, 1174, 1179, 1181, 1183, 1197, 1200, 1251, 1260, 1284, 1364, 1397, 1399, 1425, 1490, 1507, 1522, 1523, 1538, 1539, 1544, 1562, 1564, 1653, 1679, 1717, 1726, 1729, 1732, 1748, 1768, 1769, 1773, 1784, 1789, 1794, 1795, 1800, 1826, 1832, 1834, 1835, 1837, 1839, 1840, 1842, 1845, 1846, 1848, 1852, 1853, 1855, 1860, 1863, 1867, 1868, 1888, 1889, 1895, 1896, 1908, 1909, 1910, 1911, 1914, 1915, 1920, 1940, 1947, 1954, 1958, 1993, 2002, 2003, 2009, 2011, 2012, 2014, 2018, 2021, 2030, 2038, 2044, 2054, 2055, 2108, 2120, 2160, 2167, 2169, 2170, 2171, 2180, 2182, 2191, 2192, 2203, 2207, 2208, 2244, 2255, 2272, 2276, 2283, 2305, 2306, 2318, 2319, 2335, 2337, 2338, 2344, 2346, 2358, 2370, 2371, 2373, 2376, 2377, 2387, 2415, 2417, 2423, 2425, 2433, 2447, 2453, 2534, 2543, 2550, 2553, 2555, 2557, 2567, 2570, 2573, 2575, 2577, 2583, 2590, 2591, 2596, 2598, 2600, 2601, 2602, 2605, 2607, 2609, 2612, 2624, 2638, 2640, 2642, 2645, 2654, 2694, 2713, 2718, 2720, 2725, 2740, 2742, 2745, 2755, 2761, 2762, 2764, 2793, 2887, 2892, 2894, 2907, 2949, 2950, 2953, 2963, 2964, 2965, 2990, 3101, 3113, 3118, 3120, 3183, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 5291, 3260, 3261, 3263, 3268, 3269, 3270, 3271, 3273, 3280, 3380, 3386, 3392, 3397, 3434, 3436, 3458, 4119, 3510, 3516, 3569, 4117, 3662, 3664, 3669, 3670, 3671, 3672, 3673, 3678, 3712, 3715, 3717, 3725, 3728, 3732, 3735, 3742, 3748, 3750, 3755, 3757, 3762, 3771, 3772, 3773, 3781, 3783, 3797, 3799, 3801, 3802, 3803, 3833, 3840, 3850, 3851, 3853, 3855, 3899, 3900, 3917, 3922, 3924, 3940, 3941, 3942, 3944, 3974, 3976, 3977, 3983, 3986, 3991, 4003, 4016, 4017, 4024, 4025, 4026, 4027, 4028, 4032, 4036, 4038, 4050, 4051, 4052, 4053, 4063, 4066, 4090, 4091, 4092, 4096, 4097, 4116, 4138, 4146, 4151, 4165, 4198, 4205, 4217, 4218, 4219, 4273, 4275, 4278, 4280, 4282, 4284, 4285, 4287, 4289, 4291, 4292, 4293, 4294, 4296, 4297, 4299, 4300, 4302, 4303, 4324, 4331, 4334, 4363, 4370, 4371, 4404, 4418, 4421, 4424, 4427, 4428, 4440, 4459, 4460, 4463, 4467, 4469, 4472, 4485, 4489, 4494, 4515, 4516, 4517, 4518, 4519, 4520, 4522, 4523, 4525, 4542, 4543, 4635, 4637, 4641, 4642, 4649, 4651, 4657, 4658, 4663, 4665, 4667, 4668, 4675, 4678, 4679, 4681, 4682, 4684, 4685, 4705, 4712, 4716, 4718, 4719, 4723, 4798, 4799, 4802, 4803, 4805, 4809, 4811, 4812, 4813, 4814, 4820, 4831, 4832, 4842, 4844, 4847, 4848, 4852, 4853, 4949, 4968, 4971, 4978, 3424, 5236, 5237, 5239, 5240, 5254, 5259, 5269, 5271, 5273, 5276, 5278, 5280, 3249, 5305, 5317, 5328, 5333, 5335, 5336, 5337, 5343, 5360, 5362, 5363, 5364, 5366, 5401, 5429, 5473, 5475, 5485, 5520, 5617, 5643, 5647, 5648, 5650, 5677, 5679, 5682, 5683, 5694, 5710, 5711, 5712, 5715, 5717, 5726, 5744, 5747, 5749, 5750, 5753, 3247, 5761, 5769, 5771, 5785, 5815, 5822, 5826, 5830, 5834, 5839, 5860, 5862, 5863, 5893, 5894, 5899, 5902, 5915, 5916, 5930, 5975, 5978, 5979, 5981, 6000, 6002, 6006, 6008, 6009, 6027, 6047, 6070, 6072, 6117, 6119, 6120, 6121, 6122, 6127, 6129, 6131, 6138, 6168, 6170, 6171, 6172, 6177, 6178, 6179, 6186, 6188, 6194, 6195, 6198, 6199, 6200, 6202, 6213, 6220, 6221, 6227, 6228, 6244, 6246, 6247, 6251, 6252, 6253, 6254, 6267, 6293, 6294, 6328, 6329, 6351, 6366, 6370, 6373, 6374, 6376, 6378, 6380, 6382, 6392, 6487, 6490, 6519, 6520, 6527, 6546, 6550, 6575, 6649, 6826, 6868, 6887, 6912, 7007, 7010, 7012, 7016, 7026, 7028, 7030, 7034, 7041, 7043, 7047, 7048, 7049, 7075, 7071, 7070, 7068, 7077, 7104, 7107, 7109, 7111, 7112, 7115, 7118, 7120, 7154, 7158, 16452, 16451, 7235, 7246, 7271, 7275, 7313, 7316, 7317, 7318, 7319, 7321, 7335, 7337, 7340, 7341, 7342, 7352, 7353, 7354, 7357, 7358, 7372, 7379, 7397, 7411, 7429, 7437, 7439, 7441, 7453, 7461, 7505, 7523, 7524, 7583, 7584, 7666, 7667, 7726, 7727, 7734, 7735, 7740, 7767, 7772, 7773, 7774, 7779, 7780, 7789, 7795, 7843, 7872, 7874, 7878, 7879, 7886, 7895, 7957, 7995, 7996, 7997, 7999, 8075, 8115, 8127, 8136, 8138, 8200, 8202, 8217, 8282, 8296, 8298, 8336, 8378, 8379, 8381, 8382, 8390, 8394, 8405, 8409, 8419, 8438, 8439, 8440, 8442, 8443, 8444, 8497, 8503, 8504, 8507, 8516, 8524, 8525, 8526, 8528, 8547, 8548, 8550, 8551, 8553, 8562, 8578, 8579, 8588, 8636, 8656, 8657, 8658, 8716, 8763, 8764, 8776, 8876, 8879, 8894, 8895, 8896, 8898, 8900, 8902, 8904, 8908, 8909, 8910, 8912, 8913, 8914, 8915, 8916, 8917, 8929, 8977, 8980, 8983, 9018, 9024, 9026, 9029, 9030, 9031, 9034, 9036, 9038, 9039, 9041, 9045, 9056, 9078, 9079, 9081, 9084, 9085, 9098, 9197, 9198, 9201, 9217, 9236, 9238, 9239, 9240, 9257, 9261, 9262, 9263, 9264, 9265, 9266, 9269, 9397, 9437, 9438, 9439, 9441, 9442, 9443, 9447, 9448, 9449, 9450, 9451, 9452, 9476, 9499, 9516, 9517, 9518, 9523, 9528, 9529, 9547, 9561, 9562, 9565, 16368, 9604, 9616, 9619, 9678, 9681, 9693, 9717, 9778, 9817, 9818, 9861, 9877, 9997, 10000, 10076, 10078, 10083, 10119, 10136, 10157, 10162, 10181, 10199, 10201, 10307, 10358, 10373, 10389, 10390, 10393, 10394, 10398, 10400, 10419, 10420, 10421, 10422, 10423, 10424, 10425, 10426, 10432, 10433, 10436, 10438, 10440, 10442, 10469, 10470, 10471, 10472, 10476, 10477, 10487, 10491, 10498, 10499, 10500, 10502, 10503, 10505, 10506, 10508, 10540, 10559, 10584, 10602, 10605, 10608, 10618, 10640, 10642, 10647, 10648, 10660, 10680, 10684, 10698, 10699, 10717, 10738, 10739, 10759, 10760, 10802, 10811, 10812, 10813, 10823, 10827, 10828, 10838, 10876, 10917, 10920, 10921, 10922, 10923, 10928, 10929, 10939, 10944, 10945, 10949, 11019, 11020, 11032, 11040, 11053, 11055, 11056, 11057, 11076, 11077, 11141, 11143, 11256, 11257, 11319, 11322, 11324, 11338, 11339, 11340, 11346, 11347, 11380, 11383, 11388, 11397, 11401, 11406, 11407, 11443, 11444, 11445, 11448, 11453, 11455, 11457, 11461, 11464, 11466, 11470, 11471, 11473, 11480, 11483, 11484, 11487, 11488, 11492, 11497, 11518, 11548, 11559, 11562, 11577, 11582, 11598, 11600, 11604, 11608, 11609, 11611, 11615, 11622, 11657, 11661, 11662, 11663, 11664, 11675, 11677, 11679, 11680, 11683, 11685, 11697, 11713, 11714, 11754, 11756, 11793, 11795, 11796, 11797, 11798, 11799, 11800, 11801, 11802, 11804, 11805, 11807, 11808, 11811, 11822, 11830, 11831, 11832, 11837, 11838, 11859, 11863, 11873, 11878, 11882, 11883, 11898, 11913, 11915, 11917, 11949, 12118, 12119, 12126, 12128, 12140, 12157, 12178, 12204, 12205, 12224, 12225, 12238, 12259, 12264, 12319, 12321, 12322, 12337, 12339, 12352, 12378, 12387, 12396, 12420, 12433, 12457, 12458, 12459, 12465, 12468, 12476, 12478, 12557, 12722, 12736, 12759, 12779, 12856, 12862, 12863, 12864, 12865, 12866, 12876, 12902, 12922, 12976, 13019, 13096, 13097, 13098, 13099, 13116, 13117, 13157, 13158, 13197, 13220, 13236, 13256, 13280, 13284, 13419, 13442, 13443, 13537, 13538, 13539, 13540, 13541, 13542, 13546, 13547, 13548, 13555, 13556, 13557, 13698, 13716, 13718, 13737, 13956, 13958, 14021, 14026, 14027, 14028, 14029, 14030, 14031, 14182, 14183, 14230, 14272, 14275, 14277, 14324, 14327, 14349, 14354, 14364, 14368, 14369, 14371, 14381, 14382, 14383, 14385, 14387, 14393, 14394, 14397, 14398, 14399, 14400, 14432, 14436, 14452, 14470, 14478, 14479, 14487, 14497, 14506, 14507, 14509, 14510, 14511, 14515, 14516, 14517, 14518, 14521, 14522, 14523, 14527, 14530, 14533, 14536, 14621, 14639, 14822, 14823, 14825, 14834, 14861, 14876, 14883, 14911, 15061, 15083, 15111, 15169, 15183, 15187, 15188, 15191, 15192, 15193, 15200, 15202, 15206, 15213, 15215, 15260, 15293, 15308, 15362, 14862, 15250, 15262, 15263, 15276, 15312, 15338, 15340, 15370, 15378, 15379, 15380, 15381, 15443, 15444, 15471, 15502, 15503, 15504, 15527, 15613, 15615, 15620, 15859, 15868, 15869, 16163, 16165, 16168, 16381, 16446, 16505, 16506, 16127, 16060, 15990, 15980, 15981, 16113, 16115, 16116, 16132, 16133, 16134, 16135, 16013, 16033, 16048, 16073, 16114, 16080, 16097, 16101, 16102, 16103, 16104, 16118, 15614, 15498, 16543, 16478, 16494, 15592, 15593, 15594, 15595, 15596, 15597, 15598, 15599, 15600, 15601, 15602, 15603, 15604, 15605, 15606, 15607, 15871, 15588, 15587, 15586, 15585, 15584, 15583, 15582, 15581, 15580, 15579, 15578, 15577, 15576, 15575, 15574, 15573, 15572, 15570, 15569, 15568, 15567, 15566, 15565, 15564, 15563, 15562, 15561, 15560, 15559, 15558, 15557, 15556, 15549, 7291, 4854, 6910, 16143, 16042, 15895, 15898, 15085, 15552, 15693, 15909, 16126, 16284, 16981, 16254, 16484, 16490, 16493, 16495, 17635, 17647, 17995, 17996, 14684, 15382, 15449, 15495, 15623, 15633, 15634, 15744, 15842, 15843, 15844, 15847, 15849, 15855, 15856, 15860, 15867, 16051, 16052, 16053, 16054, 16055, 16058, 16093, 16120, 16861, 16083, 15720, 14877, 14941, 14968, 14686, 14690, 14693, 15328, 15373, 15410, 15411, 15412, 15413, 15507, 15660, 15772, 15863, 16123, 16438, 16439, 160000, 160001, 160002, 160003, 160004, 160005, 14599, 10819, 7073, 7074, 15105, 13697, 4328, 15900, 15899, 62, 209, 283, 882, 1055, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1758, 1759, 1761, 1798, 1862, 2040, 2935, 3262, 3860, 4069, 4098, 4683, 4717, 5006, 5507, 5746, 5825, 5980, 6046, 6067, 6183, 6197, 6214, 8316, 8321, 8322, 8323, 8377, 8406, 8549, 8935, 9417, 9617, 10493, 10736, 10810, 10818, 10820, 11392, 11393, 11394, 11395, 11396, 11398, 11399, 11400, 11402, 11403, 11404, 11405, 11408, 11409, 11410, 11411, 11412, 11413, 11414, 11415, 11416, 11549, 11550, 11579, 11599, 11606, 11617, 11618, 11779, 11958, 12317, 12386, 12916, 12917, 14016, 14162, 14341, 14683, 14687, 14689, 14694, 14702, 14703, 14704, 14705, 14710, 14886, 15121, 15352, 15506, 15992, 15993, 15996, 15997, 15998, 15999, 16089, 16128, 17313, 17685, 18078);
UPDATE `creature` SET `mana_percent`=100 WHERE `mana_percent`=0 && `id3` IN (60, 127, 203, 314, 335, 397, 416, 417, 429, 430, 436, 441, 450, 453, 456, 474, 476, 486, 503, 507, 517, 533, 545, 548, 572, 589, 596, 599, 619, 11616, 660, 670, 672, 676, 677, 679, 697, 701, 710, 711, 740, 741, 743, 752, 761, 762, 764, 765, 766, 780, 785, 787, 808, 814, 815, 818, 819, 868, 873, 875, 881, 891, 910, 920, 940, 941, 942, 943, 946, 978, 1009, 1013, 1028, 1029, 1038, 1043, 1044, 1046, 1049, 1057, 1060, 1062, 1065, 1069, 1096, 1106, 1121, 1124, 1144, 1165, 1166, 1174, 1179, 1181, 1183, 1197, 1200, 1251, 1260, 1284, 1364, 1397, 1399, 1425, 1490, 1507, 1522, 1523, 1538, 1539, 1544, 1562, 1564, 1653, 1679, 1717, 1726, 1729, 1732, 1748, 1768, 1769, 1773, 1784, 1789, 1794, 1795, 1800, 1826, 1832, 1834, 1835, 1837, 1839, 1840, 1842, 1845, 1846, 1848, 1852, 1853, 1855, 1860, 1863, 1867, 1868, 1888, 1889, 1895, 1896, 1908, 1909, 1910, 1911, 1914, 1915, 1920, 1940, 1947, 1954, 1958, 1993, 2002, 2003, 2009, 2011, 2012, 2014, 2018, 2021, 2030, 2038, 2044, 2054, 2055, 2108, 2120, 2160, 2167, 2169, 2170, 2171, 2180, 2182, 2191, 2192, 2203, 2207, 2208, 2244, 2255, 2272, 2276, 2283, 2305, 2306, 2318, 2319, 2335, 2337, 2338, 2344, 2346, 2358, 2370, 2371, 2373, 2376, 2377, 2387, 2415, 2417, 2423, 2425, 2433, 2447, 2453, 2534, 2543, 2550, 2553, 2555, 2557, 2567, 2570, 2573, 2575, 2577, 2583, 2590, 2591, 2596, 2598, 2600, 2601, 2602, 2605, 2607, 2609, 2612, 2624, 2638, 2640, 2642, 2645, 2654, 2694, 2713, 2718, 2720, 2725, 2740, 2742, 2745, 2755, 2761, 2762, 2764, 2793, 2887, 2892, 2894, 2907, 2949, 2950, 2953, 2963, 2964, 2965, 2990, 3101, 3113, 3118, 3120, 3183, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 5291, 3260, 3261, 3263, 3268, 3269, 3270, 3271, 3273, 3280, 3380, 3386, 3392, 3397, 3434, 3436, 3458, 4119, 3510, 3516, 3569, 4117, 3662, 3664, 3669, 3670, 3671, 3672, 3673, 3678, 3712, 3715, 3717, 3725, 3728, 3732, 3735, 3742, 3748, 3750, 3755, 3757, 3762, 3771, 3772, 3773, 3781, 3783, 3797, 3799, 3801, 3802, 3803, 3833, 3840, 3850, 3851, 3853, 3855, 3899, 3900, 3917, 3922, 3924, 3940, 3941, 3942, 3944, 3974, 3976, 3977, 3983, 3986, 3991, 4003, 4016, 4017, 4024, 4025, 4026, 4027, 4028, 4032, 4036, 4038, 4050, 4051, 4052, 4053, 4063, 4066, 4090, 4091, 4092, 4096, 4097, 4116, 4138, 4146, 4151, 4165, 4198, 4205, 4217, 4218, 4219, 4273, 4275, 4278, 4280, 4282, 4284, 4285, 4287, 4289, 4291, 4292, 4293, 4294, 4296, 4297, 4299, 4300, 4302, 4303, 4324, 4331, 4334, 4363, 4370, 4371, 4404, 4418, 4421, 4424, 4427, 4428, 4440, 4459, 4460, 4463, 4467, 4469, 4472, 4485, 4489, 4494, 4515, 4516, 4517, 4518, 4519, 4520, 4522, 4523, 4525, 4542, 4543, 4635, 4637, 4641, 4642, 4649, 4651, 4657, 4658, 4663, 4665, 4667, 4668, 4675, 4678, 4679, 4681, 4682, 4684, 4685, 4705, 4712, 4716, 4718, 4719, 4723, 4798, 4799, 4802, 4803, 4805, 4809, 4811, 4812, 4813, 4814, 4820, 4831, 4832, 4842, 4844, 4847, 4848, 4852, 4853, 4949, 4968, 4971, 4978, 3424, 5236, 5237, 5239, 5240, 5254, 5259, 5269, 5271, 5273, 5276, 5278, 5280, 3249, 5305, 5317, 5328, 5333, 5335, 5336, 5337, 5343, 5360, 5362, 5363, 5364, 5366, 5401, 5429, 5473, 5475, 5485, 5520, 5617, 5643, 5647, 5648, 5650, 5677, 5679, 5682, 5683, 5694, 5710, 5711, 5712, 5715, 5717, 5726, 5744, 5747, 5749, 5750, 5753, 3247, 5761, 5769, 5771, 5785, 5815, 5822, 5826, 5830, 5834, 5839, 5860, 5862, 5863, 5893, 5894, 5899, 5902, 5915, 5916, 5930, 5975, 5978, 5979, 5981, 6000, 6002, 6006, 6008, 6009, 6027, 6047, 6070, 6072, 6117, 6119, 6120, 6121, 6122, 6127, 6129, 6131, 6138, 6168, 6170, 6171, 6172, 6177, 6178, 6179, 6186, 6188, 6194, 6195, 6198, 6199, 6200, 6202, 6213, 6220, 6221, 6227, 6228, 6244, 6246, 6247, 6251, 6252, 6253, 6254, 6267, 6293, 6294, 6328, 6329, 6351, 6366, 6370, 6373, 6374, 6376, 6378, 6380, 6382, 6392, 6487, 6490, 6519, 6520, 6527, 6546, 6550, 6575, 6649, 6826, 6868, 6887, 6912, 7007, 7010, 7012, 7016, 7026, 7028, 7030, 7034, 7041, 7043, 7047, 7048, 7049, 7075, 7071, 7070, 7068, 7077, 7104, 7107, 7109, 7111, 7112, 7115, 7118, 7120, 7154, 7158, 16452, 16451, 7235, 7246, 7271, 7275, 7313, 7316, 7317, 7318, 7319, 7321, 7335, 7337, 7340, 7341, 7342, 7352, 7353, 7354, 7357, 7358, 7372, 7379, 7397, 7411, 7429, 7437, 7439, 7441, 7453, 7461, 7505, 7523, 7524, 7583, 7584, 7666, 7667, 7726, 7727, 7734, 7735, 7740, 7767, 7772, 7773, 7774, 7779, 7780, 7789, 7795, 7843, 7872, 7874, 7878, 7879, 7886, 7895, 7957, 7995, 7996, 7997, 7999, 8075, 8115, 8127, 8136, 8138, 8200, 8202, 8217, 8282, 8296, 8298, 8336, 8378, 8379, 8381, 8382, 8390, 8394, 8405, 8409, 8419, 8438, 8439, 8440, 8442, 8443, 8444, 8497, 8503, 8504, 8507, 8516, 8524, 8525, 8526, 8528, 8547, 8548, 8550, 8551, 8553, 8562, 8578, 8579, 8588, 8636, 8656, 8657, 8658, 8716, 8763, 8764, 8776, 8876, 8879, 8894, 8895, 8896, 8898, 8900, 8902, 8904, 8908, 8909, 8910, 8912, 8913, 8914, 8915, 8916, 8917, 8929, 8977, 8980, 8983, 9018, 9024, 9026, 9029, 9030, 9031, 9034, 9036, 9038, 9039, 9041, 9045, 9056, 9078, 9079, 9081, 9084, 9085, 9098, 9197, 9198, 9201, 9217, 9236, 9238, 9239, 9240, 9257, 9261, 9262, 9263, 9264, 9265, 9266, 9269, 9397, 9437, 9438, 9439, 9441, 9442, 9443, 9447, 9448, 9449, 9450, 9451, 9452, 9476, 9499, 9516, 9517, 9518, 9523, 9528, 9529, 9547, 9561, 9562, 9565, 16368, 9604, 9616, 9619, 9678, 9681, 9693, 9717, 9778, 9817, 9818, 9861, 9877, 9997, 10000, 10076, 10078, 10083, 10119, 10136, 10157, 10162, 10181, 10199, 10201, 10307, 10358, 10373, 10389, 10390, 10393, 10394, 10398, 10400, 10419, 10420, 10421, 10422, 10423, 10424, 10425, 10426, 10432, 10433, 10436, 10438, 10440, 10442, 10469, 10470, 10471, 10472, 10476, 10477, 10487, 10491, 10498, 10499, 10500, 10502, 10503, 10505, 10506, 10508, 10540, 10559, 10584, 10602, 10605, 10608, 10618, 10640, 10642, 10647, 10648, 10660, 10680, 10684, 10698, 10699, 10717, 10738, 10739, 10759, 10760, 10802, 10811, 10812, 10813, 10823, 10827, 10828, 10838, 10876, 10917, 10920, 10921, 10922, 10923, 10928, 10929, 10939, 10944, 10945, 10949, 11019, 11020, 11032, 11040, 11053, 11055, 11056, 11057, 11076, 11077, 11141, 11143, 11256, 11257, 11319, 11322, 11324, 11338, 11339, 11340, 11346, 11347, 11380, 11383, 11388, 11397, 11401, 11406, 11407, 11443, 11444, 11445, 11448, 11453, 11455, 11457, 11461, 11464, 11466, 11470, 11471, 11473, 11480, 11483, 11484, 11487, 11488, 11492, 11497, 11518, 11548, 11559, 11562, 11577, 11582, 11598, 11600, 11604, 11608, 11609, 11611, 11615, 11622, 11657, 11661, 11662, 11663, 11664, 11675, 11677, 11679, 11680, 11683, 11685, 11697, 11713, 11714, 11754, 11756, 11793, 11795, 11796, 11797, 11798, 11799, 11800, 11801, 11802, 11804, 11805, 11807, 11808, 11811, 11822, 11830, 11831, 11832, 11837, 11838, 11859, 11863, 11873, 11878, 11882, 11883, 11898, 11913, 11915, 11917, 11949, 12118, 12119, 12126, 12128, 12140, 12157, 12178, 12204, 12205, 12224, 12225, 12238, 12259, 12264, 12319, 12321, 12322, 12337, 12339, 12352, 12378, 12387, 12396, 12420, 12433, 12457, 12458, 12459, 12465, 12468, 12476, 12478, 12557, 12722, 12736, 12759, 12779, 12856, 12862, 12863, 12864, 12865, 12866, 12876, 12902, 12922, 12976, 13019, 13096, 13097, 13098, 13099, 13116, 13117, 13157, 13158, 13197, 13220, 13236, 13256, 13280, 13284, 13419, 13442, 13443, 13537, 13538, 13539, 13540, 13541, 13542, 13546, 13547, 13548, 13555, 13556, 13557, 13698, 13716, 13718, 13737, 13956, 13958, 14021, 14026, 14027, 14028, 14029, 14030, 14031, 14182, 14183, 14230, 14272, 14275, 14277, 14324, 14327, 14349, 14354, 14364, 14368, 14369, 14371, 14381, 14382, 14383, 14385, 14387, 14393, 14394, 14397, 14398, 14399, 14400, 14432, 14436, 14452, 14470, 14478, 14479, 14487, 14497, 14506, 14507, 14509, 14510, 14511, 14515, 14516, 14517, 14518, 14521, 14522, 14523, 14527, 14530, 14533, 14536, 14621, 14639, 14822, 14823, 14825, 14834, 14861, 14876, 14883, 14911, 15061, 15083, 15111, 15169, 15183, 15187, 15188, 15191, 15192, 15193, 15200, 15202, 15206, 15213, 15215, 15260, 15293, 15308, 15362, 14862, 15250, 15262, 15263, 15276, 15312, 15338, 15340, 15370, 15378, 15379, 15380, 15381, 15443, 15444, 15471, 15502, 15503, 15504, 15527, 15613, 15615, 15620, 15859, 15868, 15869, 16163, 16165, 16168, 16381, 16446, 16505, 16506, 16127, 16060, 15990, 15980, 15981, 16113, 16115, 16116, 16132, 16133, 16134, 16135, 16013, 16033, 16048, 16073, 16114, 16080, 16097, 16101, 16102, 16103, 16104, 16118, 15614, 15498, 16543, 16478, 16494, 15592, 15593, 15594, 15595, 15596, 15597, 15598, 15599, 15600, 15601, 15602, 15603, 15604, 15605, 15606, 15607, 15871, 15588, 15587, 15586, 15585, 15584, 15583, 15582, 15581, 15580, 15579, 15578, 15577, 15576, 15575, 15574, 15573, 15572, 15570, 15569, 15568, 15567, 15566, 15565, 15564, 15563, 15562, 15561, 15560, 15559, 15558, 15557, 15556, 15549, 7291, 4854, 6910, 16143, 16042, 15895, 15898, 15085, 15552, 15693, 15909, 16126, 16284, 16981, 16254, 16484, 16490, 16493, 16495, 17635, 17647, 17995, 17996, 14684, 15382, 15449, 15495, 15623, 15633, 15634, 15744, 15842, 15843, 15844, 15847, 15849, 15855, 15856, 15860, 15867, 16051, 16052, 16053, 16054, 16055, 16058, 16093, 16120, 16861, 16083, 15720, 14877, 14941, 14968, 14686, 14690, 14693, 15328, 15373, 15410, 15411, 15412, 15413, 15507, 15660, 15772, 15863, 16123, 16438, 16439, 160000, 160001, 160002, 160003, 160004, 160005, 14599, 10819, 7073, 7074, 15105, 13697, 4328, 15900, 15899, 62, 209, 283, 882, 1055, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1758, 1759, 1761, 1798, 1862, 2040, 2935, 3262, 3860, 4069, 4098, 4683, 4717, 5006, 5507, 5746, 5825, 5980, 6046, 6067, 6183, 6197, 6214, 8316, 8321, 8322, 8323, 8377, 8406, 8549, 8935, 9417, 9617, 10493, 10736, 10810, 10818, 10820, 11392, 11393, 11394, 11395, 11396, 11398, 11399, 11400, 11402, 11403, 11404, 11405, 11408, 11409, 11410, 11411, 11412, 11413, 11414, 11415, 11416, 11549, 11550, 11579, 11599, 11606, 11617, 11618, 11779, 11958, 12317, 12386, 12916, 12917, 14016, 14162, 14341, 14683, 14687, 14689, 14694, 14702, 14703, 14704, 14705, 14710, 14886, 15121, 15352, 15506, 15992, 15993, 15996, 15997, 15998, 15999, 16089, 16128, 17313, 17685, 18078);
UPDATE `creature` SET `mana_percent`=100 WHERE `mana_percent`=0 && `id4` IN (60, 127, 203, 314, 335, 397, 416, 417, 429, 430, 436, 441, 450, 453, 456, 474, 476, 486, 503, 507, 517, 533, 545, 548, 572, 589, 596, 599, 619, 11616, 660, 670, 672, 676, 677, 679, 697, 701, 710, 711, 740, 741, 743, 752, 761, 762, 764, 765, 766, 780, 785, 787, 808, 814, 815, 818, 819, 868, 873, 875, 881, 891, 910, 920, 940, 941, 942, 943, 946, 978, 1009, 1013, 1028, 1029, 1038, 1043, 1044, 1046, 1049, 1057, 1060, 1062, 1065, 1069, 1096, 1106, 1121, 1124, 1144, 1165, 1166, 1174, 1179, 1181, 1183, 1197, 1200, 1251, 1260, 1284, 1364, 1397, 1399, 1425, 1490, 1507, 1522, 1523, 1538, 1539, 1544, 1562, 1564, 1653, 1679, 1717, 1726, 1729, 1732, 1748, 1768, 1769, 1773, 1784, 1789, 1794, 1795, 1800, 1826, 1832, 1834, 1835, 1837, 1839, 1840, 1842, 1845, 1846, 1848, 1852, 1853, 1855, 1860, 1863, 1867, 1868, 1888, 1889, 1895, 1896, 1908, 1909, 1910, 1911, 1914, 1915, 1920, 1940, 1947, 1954, 1958, 1993, 2002, 2003, 2009, 2011, 2012, 2014, 2018, 2021, 2030, 2038, 2044, 2054, 2055, 2108, 2120, 2160, 2167, 2169, 2170, 2171, 2180, 2182, 2191, 2192, 2203, 2207, 2208, 2244, 2255, 2272, 2276, 2283, 2305, 2306, 2318, 2319, 2335, 2337, 2338, 2344, 2346, 2358, 2370, 2371, 2373, 2376, 2377, 2387, 2415, 2417, 2423, 2425, 2433, 2447, 2453, 2534, 2543, 2550, 2553, 2555, 2557, 2567, 2570, 2573, 2575, 2577, 2583, 2590, 2591, 2596, 2598, 2600, 2601, 2602, 2605, 2607, 2609, 2612, 2624, 2638, 2640, 2642, 2645, 2654, 2694, 2713, 2718, 2720, 2725, 2740, 2742, 2745, 2755, 2761, 2762, 2764, 2793, 2887, 2892, 2894, 2907, 2949, 2950, 2953, 2963, 2964, 2965, 2990, 3101, 3113, 3118, 3120, 3183, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 5291, 3260, 3261, 3263, 3268, 3269, 3270, 3271, 3273, 3280, 3380, 3386, 3392, 3397, 3434, 3436, 3458, 4119, 3510, 3516, 3569, 4117, 3662, 3664, 3669, 3670, 3671, 3672, 3673, 3678, 3712, 3715, 3717, 3725, 3728, 3732, 3735, 3742, 3748, 3750, 3755, 3757, 3762, 3771, 3772, 3773, 3781, 3783, 3797, 3799, 3801, 3802, 3803, 3833, 3840, 3850, 3851, 3853, 3855, 3899, 3900, 3917, 3922, 3924, 3940, 3941, 3942, 3944, 3974, 3976, 3977, 3983, 3986, 3991, 4003, 4016, 4017, 4024, 4025, 4026, 4027, 4028, 4032, 4036, 4038, 4050, 4051, 4052, 4053, 4063, 4066, 4090, 4091, 4092, 4096, 4097, 4116, 4138, 4146, 4151, 4165, 4198, 4205, 4217, 4218, 4219, 4273, 4275, 4278, 4280, 4282, 4284, 4285, 4287, 4289, 4291, 4292, 4293, 4294, 4296, 4297, 4299, 4300, 4302, 4303, 4324, 4331, 4334, 4363, 4370, 4371, 4404, 4418, 4421, 4424, 4427, 4428, 4440, 4459, 4460, 4463, 4467, 4469, 4472, 4485, 4489, 4494, 4515, 4516, 4517, 4518, 4519, 4520, 4522, 4523, 4525, 4542, 4543, 4635, 4637, 4641, 4642, 4649, 4651, 4657, 4658, 4663, 4665, 4667, 4668, 4675, 4678, 4679, 4681, 4682, 4684, 4685, 4705, 4712, 4716, 4718, 4719, 4723, 4798, 4799, 4802, 4803, 4805, 4809, 4811, 4812, 4813, 4814, 4820, 4831, 4832, 4842, 4844, 4847, 4848, 4852, 4853, 4949, 4968, 4971, 4978, 3424, 5236, 5237, 5239, 5240, 5254, 5259, 5269, 5271, 5273, 5276, 5278, 5280, 3249, 5305, 5317, 5328, 5333, 5335, 5336, 5337, 5343, 5360, 5362, 5363, 5364, 5366, 5401, 5429, 5473, 5475, 5485, 5520, 5617, 5643, 5647, 5648, 5650, 5677, 5679, 5682, 5683, 5694, 5710, 5711, 5712, 5715, 5717, 5726, 5744, 5747, 5749, 5750, 5753, 3247, 5761, 5769, 5771, 5785, 5815, 5822, 5826, 5830, 5834, 5839, 5860, 5862, 5863, 5893, 5894, 5899, 5902, 5915, 5916, 5930, 5975, 5978, 5979, 5981, 6000, 6002, 6006, 6008, 6009, 6027, 6047, 6070, 6072, 6117, 6119, 6120, 6121, 6122, 6127, 6129, 6131, 6138, 6168, 6170, 6171, 6172, 6177, 6178, 6179, 6186, 6188, 6194, 6195, 6198, 6199, 6200, 6202, 6213, 6220, 6221, 6227, 6228, 6244, 6246, 6247, 6251, 6252, 6253, 6254, 6267, 6293, 6294, 6328, 6329, 6351, 6366, 6370, 6373, 6374, 6376, 6378, 6380, 6382, 6392, 6487, 6490, 6519, 6520, 6527, 6546, 6550, 6575, 6649, 6826, 6868, 6887, 6912, 7007, 7010, 7012, 7016, 7026, 7028, 7030, 7034, 7041, 7043, 7047, 7048, 7049, 7075, 7071, 7070, 7068, 7077, 7104, 7107, 7109, 7111, 7112, 7115, 7118, 7120, 7154, 7158, 16452, 16451, 7235, 7246, 7271, 7275, 7313, 7316, 7317, 7318, 7319, 7321, 7335, 7337, 7340, 7341, 7342, 7352, 7353, 7354, 7357, 7358, 7372, 7379, 7397, 7411, 7429, 7437, 7439, 7441, 7453, 7461, 7505, 7523, 7524, 7583, 7584, 7666, 7667, 7726, 7727, 7734, 7735, 7740, 7767, 7772, 7773, 7774, 7779, 7780, 7789, 7795, 7843, 7872, 7874, 7878, 7879, 7886, 7895, 7957, 7995, 7996, 7997, 7999, 8075, 8115, 8127, 8136, 8138, 8200, 8202, 8217, 8282, 8296, 8298, 8336, 8378, 8379, 8381, 8382, 8390, 8394, 8405, 8409, 8419, 8438, 8439, 8440, 8442, 8443, 8444, 8497, 8503, 8504, 8507, 8516, 8524, 8525, 8526, 8528, 8547, 8548, 8550, 8551, 8553, 8562, 8578, 8579, 8588, 8636, 8656, 8657, 8658, 8716, 8763, 8764, 8776, 8876, 8879, 8894, 8895, 8896, 8898, 8900, 8902, 8904, 8908, 8909, 8910, 8912, 8913, 8914, 8915, 8916, 8917, 8929, 8977, 8980, 8983, 9018, 9024, 9026, 9029, 9030, 9031, 9034, 9036, 9038, 9039, 9041, 9045, 9056, 9078, 9079, 9081, 9084, 9085, 9098, 9197, 9198, 9201, 9217, 9236, 9238, 9239, 9240, 9257, 9261, 9262, 9263, 9264, 9265, 9266, 9269, 9397, 9437, 9438, 9439, 9441, 9442, 9443, 9447, 9448, 9449, 9450, 9451, 9452, 9476, 9499, 9516, 9517, 9518, 9523, 9528, 9529, 9547, 9561, 9562, 9565, 16368, 9604, 9616, 9619, 9678, 9681, 9693, 9717, 9778, 9817, 9818, 9861, 9877, 9997, 10000, 10076, 10078, 10083, 10119, 10136, 10157, 10162, 10181, 10199, 10201, 10307, 10358, 10373, 10389, 10390, 10393, 10394, 10398, 10400, 10419, 10420, 10421, 10422, 10423, 10424, 10425, 10426, 10432, 10433, 10436, 10438, 10440, 10442, 10469, 10470, 10471, 10472, 10476, 10477, 10487, 10491, 10498, 10499, 10500, 10502, 10503, 10505, 10506, 10508, 10540, 10559, 10584, 10602, 10605, 10608, 10618, 10640, 10642, 10647, 10648, 10660, 10680, 10684, 10698, 10699, 10717, 10738, 10739, 10759, 10760, 10802, 10811, 10812, 10813, 10823, 10827, 10828, 10838, 10876, 10917, 10920, 10921, 10922, 10923, 10928, 10929, 10939, 10944, 10945, 10949, 11019, 11020, 11032, 11040, 11053, 11055, 11056, 11057, 11076, 11077, 11141, 11143, 11256, 11257, 11319, 11322, 11324, 11338, 11339, 11340, 11346, 11347, 11380, 11383, 11388, 11397, 11401, 11406, 11407, 11443, 11444, 11445, 11448, 11453, 11455, 11457, 11461, 11464, 11466, 11470, 11471, 11473, 11480, 11483, 11484, 11487, 11488, 11492, 11497, 11518, 11548, 11559, 11562, 11577, 11582, 11598, 11600, 11604, 11608, 11609, 11611, 11615, 11622, 11657, 11661, 11662, 11663, 11664, 11675, 11677, 11679, 11680, 11683, 11685, 11697, 11713, 11714, 11754, 11756, 11793, 11795, 11796, 11797, 11798, 11799, 11800, 11801, 11802, 11804, 11805, 11807, 11808, 11811, 11822, 11830, 11831, 11832, 11837, 11838, 11859, 11863, 11873, 11878, 11882, 11883, 11898, 11913, 11915, 11917, 11949, 12118, 12119, 12126, 12128, 12140, 12157, 12178, 12204, 12205, 12224, 12225, 12238, 12259, 12264, 12319, 12321, 12322, 12337, 12339, 12352, 12378, 12387, 12396, 12420, 12433, 12457, 12458, 12459, 12465, 12468, 12476, 12478, 12557, 12722, 12736, 12759, 12779, 12856, 12862, 12863, 12864, 12865, 12866, 12876, 12902, 12922, 12976, 13019, 13096, 13097, 13098, 13099, 13116, 13117, 13157, 13158, 13197, 13220, 13236, 13256, 13280, 13284, 13419, 13442, 13443, 13537, 13538, 13539, 13540, 13541, 13542, 13546, 13547, 13548, 13555, 13556, 13557, 13698, 13716, 13718, 13737, 13956, 13958, 14021, 14026, 14027, 14028, 14029, 14030, 14031, 14182, 14183, 14230, 14272, 14275, 14277, 14324, 14327, 14349, 14354, 14364, 14368, 14369, 14371, 14381, 14382, 14383, 14385, 14387, 14393, 14394, 14397, 14398, 14399, 14400, 14432, 14436, 14452, 14470, 14478, 14479, 14487, 14497, 14506, 14507, 14509, 14510, 14511, 14515, 14516, 14517, 14518, 14521, 14522, 14523, 14527, 14530, 14533, 14536, 14621, 14639, 14822, 14823, 14825, 14834, 14861, 14876, 14883, 14911, 15061, 15083, 15111, 15169, 15183, 15187, 15188, 15191, 15192, 15193, 15200, 15202, 15206, 15213, 15215, 15260, 15293, 15308, 15362, 14862, 15250, 15262, 15263, 15276, 15312, 15338, 15340, 15370, 15378, 15379, 15380, 15381, 15443, 15444, 15471, 15502, 15503, 15504, 15527, 15613, 15615, 15620, 15859, 15868, 15869, 16163, 16165, 16168, 16381, 16446, 16505, 16506, 16127, 16060, 15990, 15980, 15981, 16113, 16115, 16116, 16132, 16133, 16134, 16135, 16013, 16033, 16048, 16073, 16114, 16080, 16097, 16101, 16102, 16103, 16104, 16118, 15614, 15498, 16543, 16478, 16494, 15592, 15593, 15594, 15595, 15596, 15597, 15598, 15599, 15600, 15601, 15602, 15603, 15604, 15605, 15606, 15607, 15871, 15588, 15587, 15586, 15585, 15584, 15583, 15582, 15581, 15580, 15579, 15578, 15577, 15576, 15575, 15574, 15573, 15572, 15570, 15569, 15568, 15567, 15566, 15565, 15564, 15563, 15562, 15561, 15560, 15559, 15558, 15557, 15556, 15549, 7291, 4854, 6910, 16143, 16042, 15895, 15898, 15085, 15552, 15693, 15909, 16126, 16284, 16981, 16254, 16484, 16490, 16493, 16495, 17635, 17647, 17995, 17996, 14684, 15382, 15449, 15495, 15623, 15633, 15634, 15744, 15842, 15843, 15844, 15847, 15849, 15855, 15856, 15860, 15867, 16051, 16052, 16053, 16054, 16055, 16058, 16093, 16120, 16861, 16083, 15720, 14877, 14941, 14968, 14686, 14690, 14693, 15328, 15373, 15410, 15411, 15412, 15413, 15507, 15660, 15772, 15863, 16123, 16438, 16439, 160000, 160001, 160002, 160003, 160004, 160005, 14599, 10819, 7073, 7074, 15105, 13697, 4328, 15900, 15899, 62, 209, 283, 882, 1055, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1758, 1759, 1761, 1798, 1862, 2040, 2935, 3262, 3860, 4069, 4098, 4683, 4717, 5006, 5507, 5746, 5825, 5980, 6046, 6067, 6183, 6197, 6214, 8316, 8321, 8322, 8323, 8377, 8406, 8549, 8935, 9417, 9617, 10493, 10736, 10810, 10818, 10820, 11392, 11393, 11394, 11395, 11396, 11398, 11399, 11400, 11402, 11403, 11404, 11405, 11408, 11409, 11410, 11411, 11412, 11413, 11414, 11415, 11416, 11549, 11550, 11579, 11599, 11606, 11617, 11618, 11779, 11958, 12317, 12386, 12916, 12917, 14016, 14162, 14341, 14683, 14687, 14689, 14694, 14702, 14703, 14704, 14705, 14710, 14886, 15121, 15352, 15506, 15992, 15993, 15996, 15997, 15998, 15999, 16089, 16128, 17313, 17685, 18078);

-- Order ids in ascending order.
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35286;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35285;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35284;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35282;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=3890;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3879;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=3872;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3856;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3852;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=3851;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3821;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3820;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3819;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=3818;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3812;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3809;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3808;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3099;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3048;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3044;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3041;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3039;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3035;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3034;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=3033;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35280;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35279;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35278;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35273;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35270;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35269;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35268;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35267;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35264;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35233;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35232;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35226;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35214;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2896;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2893;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2889;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2849;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2848;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2846;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2845;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2810;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2809;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2808;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2807;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2806;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2805;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2804;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2802;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2801;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2783;
UPDATE `creature` SET `id`=5977, `id2`=5978, `id3`=0,`id4`=0 WHERE `guid`=2781;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2778;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2776;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2775;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2754;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2753;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2752;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2751;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2750;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2748;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2734;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2733;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2732;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2731;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2730;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2729;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2727;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2726;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2712;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2711;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2710;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2709;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2708;
UPDATE `creature` SET `id`=5974, `id2`=5975, `id3`=5976,`id4`=0 WHERE `guid`=2706;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2666;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2665;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2664;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2663;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2662;
UPDATE `creature` SET `id`=6004, `id2`=6005, `id3`=6006,`id4`=0 WHERE `guid`=2660;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2642;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2641;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2639;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2638;
UPDATE `creature` SET `id`=6007, `id2`=6008, `id3`=6009,`id4`=0 WHERE `guid`=2636;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2625;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=2618;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2605;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2599;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2596;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2594;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=2592;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=2589;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2587;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2584;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2576;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2575;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2573;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2571;
UPDATE `creature` SET `id`=1561, `id2`=1562, `id3`=0,`id4`=0 WHERE `guid`=2567;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2557;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2553;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2552;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2546;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2543;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2542;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=2540;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2537;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2536;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2535;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2534;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2533;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2531;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2516;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2511;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2508;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2501;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2491;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2488;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2433;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=2431;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2403;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2399;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2396;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2395;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2394;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2390;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2388;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2385;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2384;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2380;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2375;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2372;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563898;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563897;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563899;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2347;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2345;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2333;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2327;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2319;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=2316;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2271;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2266;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2265;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2257;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2256;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2254;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2250;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2249;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=2241;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2239;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2237;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2233;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2232;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2229;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2227;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=2224;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2223;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2222;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2219;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2218;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2217;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2216;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=2215;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2210;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2198;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2195;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2188;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2186;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2182;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2176;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2175;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2173;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2171;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=2170;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2166;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2165;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2162;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2161;
UPDATE `creature` SET `id`=587, `id2`=694, `id3`=697,`id4`=0 WHERE `guid`=2160;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2156;
UPDATE `creature` SET `id`=1142, `id2`=1144, `id3`=0,`id4`=0 WHERE `guid`=2154;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2125;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2122;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2117;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2113;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2111;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2109;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2074;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2071;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2068;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2067;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=2064;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2060;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2059;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2057;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2056;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2054;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2051;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2050;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=2049;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2044;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2042;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2038;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2037;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2036;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2035;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=2004;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1997;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1974;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1963;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1957;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1956;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1952;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1945;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1941;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1940;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1937;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1936;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1929;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1927;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1926;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1925;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1880;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1878;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1861;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1851;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1681;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=1670;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1669;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1668;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1661;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1657;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1656;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1654;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1652;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1651;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1650;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1647;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1638;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=1635;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1628;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1616;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1599;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1598;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1597;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1593;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1592;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1591;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1589;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1588;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1586;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1585;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=1582;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1464;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17583;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17581;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17568;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17386;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17382;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=17381;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=16971;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=16965;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=16958;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=16761;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=16756;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1408;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1407;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1405;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1389;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1388;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1386;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1385;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1384;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1381;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1378;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1376;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1375;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1372;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1371;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1368;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1364;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1363;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1362;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=1341;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1340;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=1337;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34413;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34410;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34409;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34408;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34407;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34406;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34405;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34404;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=34403;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34268;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34267;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34266;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34265;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34261;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34260;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34259;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34258;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34257;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34256;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34254;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34253;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34252;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34251;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34250;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34249;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34248;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34247;
UPDATE `creature` SET `id`=3804, `id2`=3807, `id3`=3808,`id4`=0 WHERE `guid`=34246;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33787;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33785;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33756;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33755;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33754;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33753;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33592;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33591;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33590;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33576;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33574;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33573;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33572;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33571;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33570;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33569;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33568;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33567;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33566;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33565;
UPDATE `creature` SET `id`=3782, `id2`=3784, `id3`=0,`id4`=0 WHERE `guid`=33564;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33469;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33468;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33467;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33466;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33465;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33464;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33463;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33462;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33461;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33425;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33424;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33420;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33419;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33418;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33417;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33416;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33415;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33391;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33377;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33376;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33375;
UPDATE `creature` SET `id`=3781, `id2`=3783, `id3`=0,`id4`=0 WHERE `guid`=33374;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33246;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33245;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33244;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33243;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33242;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33241;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33240;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33239;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33238;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33237;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33236;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33235;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33234;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33233;
UPDATE `creature` SET `id`=3765, `id2`=3771, `id3`=0,`id4`=0 WHERE `guid`=33232;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33231;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33230;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33229;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33228;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33227;
UPDATE `creature` SET `id`=12474, `id2`=12475, `id3`=12476,`id4`=0 WHERE `guid`=33226;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33225;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33224;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33223;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33222;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33221;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33220;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33219;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33218;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33217;
UPDATE `creature` SET `id`=3767, `id2`=3770, `id3`=0,`id4`=0 WHERE `guid`=33216;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33164;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33163;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33162;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33161;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33160;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33159;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33158;
UPDATE `creature` SET `id`=3759, `id2`=3763, `id3`=0,`id4`=0 WHERE `guid`=33157;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33155;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33154;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33153;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33152;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33151;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33150;
UPDATE `creature` SET `id`=3758, `id2`=3762, `id3`=0,`id4`=0 WHERE `guid`=33149;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33147;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33146;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33145;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33144;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33143;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33142;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33141;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33140;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33139;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=33137;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33120;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33119;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33118;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33117;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33116;
UPDATE `creature` SET `id`=3752, `id2`=3757, `id3`=0,`id4`=0 WHERE `guid`=33114;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33113;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33112;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33111;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33110;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33109;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33108;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33107;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33106;
UPDATE `creature` SET `id`=3754, `id2`=3755, `id3`=0,`id4`=0 WHERE `guid`=33105;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33095;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33094;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33093;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33092;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33091;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33090;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33089;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33088;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33087;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33086;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33085;
UPDATE `creature` SET `id`=3743, `id2`=3750, `id3`=0,`id4`=0 WHERE `guid`=33084;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33083;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33082;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33081;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33080;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33076;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33075;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33074;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=33072;
UPDATE `creature` SET `id`=3740, `id2`=3742, `id3`=0,`id4`=0 WHERE `guid`=32942;
UPDATE `creature` SET `id`=3740, `id2`=3742, `id3`=0,`id4`=0 WHERE `guid`=32941;
UPDATE `creature` SET `id`=3740, `id2`=3742, `id3`=0,`id4`=0 WHERE `guid`=32940;
UPDATE `creature` SET `id`=3740, `id2`=3742, `id3`=0,`id4`=0 WHERE `guid`=32939;
UPDATE `creature` SET `id`=3740, `id2`=3742, `id3`=0,`id4`=0 WHERE `guid`=32938;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32932;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32931;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32930;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32929;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32928;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32927;
UPDATE `creature` SET `id`=3737, `id2`=3739, `id3`=0,`id4`=0 WHERE `guid`=32926;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32904;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32903;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32902;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32901;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32900;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32899;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32898;
UPDATE `creature` SET `id`=3732, `id2`=3733, `id3`=0,`id4`=0 WHERE `guid`=32897;
UPDATE `creature` SET `id`=3727, `id2`=3730, `id3`=0,`id4`=0 WHERE `guid`=32881;
UPDATE `creature` SET `id`=3727, `id2`=3730, `id3`=0,`id4`=0 WHERE `guid`=32880;
UPDATE `creature` SET `id`=3727, `id2`=3730, `id3`=0,`id4`=0 WHERE `guid`=32878;
UPDATE `creature` SET `id`=3727, `id2`=3730, `id3`=0,`id4`=0 WHERE `guid`=32877;
UPDATE `creature` SET `id`=3727, `id2`=3730, `id3`=0,`id4`=0 WHERE `guid`=32876;
UPDATE `creature` SET `id`=3725, `id2`=3728, `id3`=0,`id4`=0 WHERE `guid`=32875;
UPDATE `creature` SET `id`=3725, `id2`=3728, `id3`=0,`id4`=0 WHERE `guid`=32874;
UPDATE `creature` SET `id`=3725, `id2`=3728, `id3`=0,`id4`=0 WHERE `guid`=32873;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32806;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32805;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32804;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32803;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32802;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32801;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32800;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32799;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32798;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32797;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32796;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32795;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32794;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32793;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32792;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32791;
UPDATE `creature` SET `id`=3713, `id2`=3717, `id3`=0,`id4`=0 WHERE `guid`=32790;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32645;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32644;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32643;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32642;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32641;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32640;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32639;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32638;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32637;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32636;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32635;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32634;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32633;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32632;
UPDATE `creature` SET `id`=3711, `id2`=3944, `id3`=0,`id4`=0 WHERE `guid`=32631;
UPDATE `creature` SET `id`=2240, `id2`=2241, `id3`=0,`id4`=0 WHERE `guid`=15607;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1322;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1321;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9377;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9376;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9372;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9371;
UPDATE `creature` SET `id`=1180, `id2`=1183, `id3`=0,`id4`=0 WHERE `guid`=9369;
UPDATE `creature` SET `id`=1180, `id2`=1183, `id3`=0,`id4`=0 WHERE `guid`=9366;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9365;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9363;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9362;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9357;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9354;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9353;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9352;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9343;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9336;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9330;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9314;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9309;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9307;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9306;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9301;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9297;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9296;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9293;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9285;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9280;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9278;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9275;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9274;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=9267;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=9265;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9263;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9262;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9260;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9257;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9253;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9251;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9249;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9247;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9246;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9245;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9243;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9241;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9239;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9227;
UPDATE `creature` SET `id`=1180, `id2`=1183, `id3`=0,`id4`=0 WHERE `guid`=9218;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9217;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9216;
UPDATE `creature` SET `id`=1180, `id2`=1183, `id3`=0,`id4`=0 WHERE `guid`=9213;
UPDATE `creature` SET `id`=1180, `id2`=1183, `id3`=0,`id4`=0 WHERE `guid`=9212;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9211;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9209;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1268;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9184;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9172;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9170;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9169;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9165;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9162;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9161;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1263;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1259;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1258;
UPDATE `creature` SET `id`=597, `id2`=660, `id3`=671,`id4`=0 WHERE `guid`=1257;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=9152;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9143;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9138;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9133;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9131;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9123;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9122;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9120;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9118;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9117;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9116;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9111;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9110;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9107;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9106;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9098;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9097;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9092;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9091;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=9082;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=9081;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=9080;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=9077;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9076;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9074;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9071;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9058;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9057;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9054;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9053;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=9050;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9044;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=9043;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9038;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9006;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=9005;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1255;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1253;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=8997;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8996;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=8995;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8993;
UPDATE `creature` SET `id`=1172, `id2`=1173, `id3`=0,`id4`=0 WHERE `guid`=8991;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8990;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8988;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=8986;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=8983;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8982;
UPDATE `creature` SET `id`=1161, `id2`=1162, `id3`=0,`id4`=0 WHERE `guid`=8981;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8980;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8979;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8977;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8973;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8972;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8970;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8966;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8965;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8963;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8958;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8956;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8955;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8944;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8942;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8941;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8940;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8932;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8931;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8889;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8888;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8887;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8886;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8885;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8884;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8882;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8880;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8860;
UPDATE `creature` SET `id`=1165, `id2`=1167, `id3`=1393,`id4`=0 WHERE `guid`=8859;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8854;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8843;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8835;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8834;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8833;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8817;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8816;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8815;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8813;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=8789;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8730;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8723;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8717;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8715;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8714;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8712;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8711;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8710;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8709;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8705;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8696;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8695;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8689;
UPDATE `creature` SET `id`=1176, `id2`=1202, `id3`=0,`id4`=0 WHERE `guid`=8670;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=8366;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1247;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8341;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8340;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8338;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1238;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=1234;
UPDATE `creature` SET `id`=1163, `id2`=1166, `id3`=0,`id4`=0 WHERE `guid`=8307;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8261;
UPDATE `creature` SET `id`=1164, `id2`=1197, `id3`=0,`id4`=0 WHERE `guid`=8260;
UPDATE `creature` SET `id`=1178, `id2`=1179, `id3`=1181,`id4`=0 WHERE `guid`=8258;
UPDATE `creature` SET `id`=3992, `id2`=4070, `id3`=0,`id4`=0 WHERE `guid`=32291;
UPDATE `creature` SET `id`=3992, `id2`=4070, `id3`=0,`id4`=0 WHERE `guid`=32290;
UPDATE `creature` SET `id`=3992, `id2`=4070, `id3`=0,`id4`=0 WHERE `guid`=32289;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32129;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32128;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32127;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32126;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32125;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32124;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32123;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32122;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32121;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32120;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32119;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32118;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32117;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32116;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=32115;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32114;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32113;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32112;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32111;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32110;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32109;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32108;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32106;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32105;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32090;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32089;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32019;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32018;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32017;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32016;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=32015;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31954;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31952;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31939;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31938;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31936;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31935;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31917;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31914;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31913;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31912;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31803;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31802;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31801;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31800;
UPDATE `creature` SET `id`=4022, `id2`=4025, `id3`=4026,`id4`=0 WHERE `guid`=31798;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31795;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31794;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31793;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31792;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31791;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31790;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31789;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31788;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31787;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31786;
UPDATE `creature` SET `id`=4023, `id2`=4024, `id3`=4027,`id4`=0 WHERE `guid`=31785;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29577;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29576;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29575;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29572;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29571;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29570;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29569;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29568;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29567;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29566;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29565;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29564;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29563;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29562;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29561;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29560;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29559;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29558;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29557;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29556;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29555;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29554;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29553;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29552;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29551;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29550;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29548;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29547;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29546;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29545;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29544;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29543;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29542;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29541;
UPDATE `creature` SET `id`=3989, `id2`=3991, `id3`=0,`id4`=0 WHERE `guid`=29540;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29388;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29387;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29386;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29385;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29383;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29382;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29381;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29380;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29379;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29378;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29377;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29376;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29375;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29374;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29373;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29372;
UPDATE `creature` SET `id`=11912, `id2`=11913, `id3`=0,`id4`=0 WHERE `guid`=29371;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29345;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29344;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29343;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29342;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29341;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29340;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29339;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29338;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29337;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29336;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29335;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29334;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29333;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29332;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29331;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29330;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29329;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29328;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29327;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29326;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29325;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29324;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29323;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29322;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29321;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29320;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29319;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29318;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29317;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29316;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29315;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29314;
UPDATE `creature` SET `id`=11910, `id2`=11911, `id3`=0,`id4`=0 WHERE `guid`=29313;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27873;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27872;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27871;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27870;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27869;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27868;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27867;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27866;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27865;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27864;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27863;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27862;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27861;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27860;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27859;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27858;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27857;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27856;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27855;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27854;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27853;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27852;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27851;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27850;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27849;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27848;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27847;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27846;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27845;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27844;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27843;
UPDATE `creature` SET `id`=4673, `id2`=4674, `id3`=4675,`id4`=0 WHERE `guid`=27842;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27824;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27823;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27822;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27821;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27820;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27819;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27818;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27817;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27816;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27815;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27814;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27813;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27812;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27811;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27810;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27809;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27808;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27807;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27806;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27805;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27804;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27803;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27795;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27788;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27787;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27786;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27785;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27784;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27783;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27782;
UPDATE `creature` SET `id`=4670, `id2`=4671, `id3`=4672,`id4`=0 WHERE `guid`=27781;
UPDATE `creature` SET `id`=4658, `id2`=4659, `id3`=0,`id4`=0 WHERE `guid`=27584;
UPDATE `creature` SET `id`=4658, `id2`=4659, `id3`=0,`id4`=0 WHERE `guid`=27583;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27395;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27394;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27393;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27392;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27389;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27345;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27344;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27343;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27342;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27341;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27340;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27339;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27338;
UPDATE `creature` SET `id`=4656, `id2`=4657, `id3`=0,`id4`=0 WHERE `guid`=27337;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27323;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27322;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27321;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27320;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27319;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27317;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27316;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27315;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27314;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27313;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27312;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27311;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27310;
UPDATE `creature` SET `id`=4654, `id2`=4655, `id3`=0,`id4`=0 WHERE `guid`=27309;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27296;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27295;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27294;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27293;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27292;
UPDATE `creature` SET `id`=4652, `id2`=4653, `id3`=0,`id4`=0 WHERE `guid`=27291;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27220;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27219;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27218;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27217;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27216;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27215;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27214;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27213;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27212;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27211;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27210;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27209;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27191;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27190;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27184;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27183;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27182;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27181;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27180;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27179;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27178;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27176;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27175;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27173;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27171;
UPDATE `creature` SET `id`=4648, `id2`=4649, `id3`=0,`id4`=0 WHERE `guid`=27170;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27147;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27146;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27145;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27144;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27143;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27142;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27137;
UPDATE `creature` SET `id`=4646, `id2`=4647, `id3`=0,`id4`=0 WHERE `guid`=27136;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27128;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27127;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27126;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27125;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27124;
UPDATE `creature` SET `id`=4644, `id2`=4645, `id3`=0,`id4`=0 WHERE `guid`=27123;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27102;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27101;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27100;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27099;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27098;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27097;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27096;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27095;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27094;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27093;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27092;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27091;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27090;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27089;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27088;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27087;
UPDATE `creature` SET `id`=4640, `id2`=4641, `id3`=0,`id4`=0 WHERE `guid`=27085;
UPDATE `creature` SET `id`=4638, `id2`=4639, `id3`=0,`id4`=0 WHERE `guid`=27065;
UPDATE `creature` SET `id`=4638, `id2`=4639, `id3`=0,`id4`=0 WHERE `guid`=27064;
UPDATE `creature` SET `id`=4638, `id2`=4639, `id3`=0,`id4`=0 WHERE `guid`=27063;
UPDATE `creature` SET `id`=4638, `id2`=4639, `id3`=0,`id4`=0 WHERE `guid`=27062;
UPDATE `creature` SET `id`=4638, `id2`=4639, `id3`=0,`id4`=0 WHERE `guid`=27061;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27054;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27053;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27052;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27051;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27050;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27049;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27048;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27047;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27046;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27045;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27044;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27043;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27042;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27041;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27040;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27039;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27038;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27037;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27036;
UPDATE `creature` SET `id`=4635, `id2`=4636, `id3`=4637,`id4`=0 WHERE `guid`=27035;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27010;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27009;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27008;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27007;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27006;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27005;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27004;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27003;
UPDATE `creature` SET `id`=4632, `id2`=4633, `id3`=0,`id4`=0 WHERE `guid`=27002;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=1212;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24338;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24337;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24336;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24335;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24334;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24333;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24332;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24331;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24330;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24329;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24328;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24327;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24326;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24325;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24324;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24322;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24321;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24320;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24319;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24318;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24317;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24316;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24315;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24314;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24313;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24312;
UPDATE `creature` SET `id`=6553, `id2`=6554, `id3`=6555,`id4`=0 WHERE `guid`=24311;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24310;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24309;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24308;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24307;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24306;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24305;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24304;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24303;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24302;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24301;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24300;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24299;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24298;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24297;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24296;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24295;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24294;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24293;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24292;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24291;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24290;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24289;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24288;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24287;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24286;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24285;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24284;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24283;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24282;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24281;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24280;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24279;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24278;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24277;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24276;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24275;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24274;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24273;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24272;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24271;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24270;
UPDATE `creature` SET `id`=6551, `id2`=6552, `id3`=0,`id4`=0 WHERE `guid`=24269;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1210;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24203;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24202;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24201;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24200;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24199;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24198;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24197;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24196;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=1208;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=1207;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1206;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1204;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1203;
UPDATE `creature` SET `id`=675, `id2`=676, `id3`=677,`id4`=0 WHERE `guid`=1202;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24195;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24194;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24193;
UPDATE `creature` SET `id`=6517, `id2`=6527, `id3`=0,`id4`=0 WHERE `guid`=24192;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1199;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1198;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1197;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24171;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24170;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24169;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24168;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24167;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24166;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24165;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24164;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24163;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24162;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24161;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24160;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24159;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24158;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24157;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24156;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24155;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24154;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24153;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24152;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24151;
UPDATE `creature` SET `id`=6520, `id2`=6521, `id3`=0,`id4`=0 WHERE `guid`=24150;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24137;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24136;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24135;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24134;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24133;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24132;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24131;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24130;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24129;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24128;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24127;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24126;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24125;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24124;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24123;
UPDATE `creature` SET `id`=6518, `id2`=6519, `id3`=0,`id4`=0 WHERE `guid`=24122;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24091;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24090;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24089;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24088;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24081;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24080;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24079;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24078;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24077;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24076;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24075;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24072;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24071;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24070;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24069;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24068;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24067;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24066;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24061;
UPDATE `creature` SET `id`=6513, `id2`=6514, `id3`=6516,`id4`=0 WHERE `guid`=24060;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23999;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23998;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23997;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23996;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23995;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23994;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23993;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23992;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23991;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23990;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23989;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23988;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23987;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23986;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23985;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23984;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23983;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23982;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23981;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23980;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23979;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23978;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23977;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23976;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23975;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23974;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23973;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23972;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23971;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23970;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23969;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23968;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23967;
UPDATE `creature` SET `id`=6509, `id2`=6511, `id3`=0,`id4`=0 WHERE `guid`=23964;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23870;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23869;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23868;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23867;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23866;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23865;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23864;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23863;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23862;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23861;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23860;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23859;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23858;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23857;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23856;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23855;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23854;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23853;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23852;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23851;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23850;
UPDATE `creature` SET `id`=6507, `id2`=6508, `id3`=0,`id4`=0 WHERE `guid`=23849;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23829;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23828;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23827;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23826;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23825;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23824;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23823;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23822;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23821;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23820;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23819;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23818;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23817;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23816;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23815;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23814;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23813;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23812;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23811;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23810;
UPDATE `creature` SET `id`=6505, `id2`=6506, `id3`=0,`id4`=0 WHERE `guid`=23809;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23610;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23609;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23608;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23607;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23606;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23605;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23604;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23603;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23602;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23601;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23600;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23599;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23598;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23559;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23558;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23557;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23556;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23555;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23554;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23553;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23552;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23551;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23550;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23549;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23548;
UPDATE `creature` SET `id`=5616, `id2`=5618, `id3`=0,`id4`=0 WHERE `guid`=23547;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23546;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23545;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23544;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23542;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23541;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23540;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23539;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23538;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23537;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23536;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23535;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23534;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23533;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23532;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23531;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23530;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23529;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1196;
UPDATE `creature` SET `id`=4458, `id2`=4459, `id3`=4460,`id4`=4461 WHERE `guid`=1193;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23528;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23527;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23526;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23525;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23524;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23523;
UPDATE `creature` SET `id`=5615, `id2`=5617, `id3`=5623,`id4`=0 WHERE `guid`=23522;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1192;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1191;
UPDATE `creature` SET `id`=4458, `id2`=4459, `id3`=4460,`id4`=4461 WHERE `guid`=1189;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1186;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1185;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=1184;
UPDATE `creature` SET `id`=4458, `id2`=4459, `id3`=4460,`id4`=4461 WHERE `guid`=1174;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1161;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23342;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23341;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23340;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23339;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23338;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23337;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23336;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23335;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23334;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23333;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23332;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23331;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23330;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23329;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23328;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23327;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23326;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23325;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23324;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23323;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23322;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23321;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23320;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23319;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23318;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23317;
UPDATE `creature` SET `id`=7855, `id2`=7856, `id3`=0,`id4`=0 WHERE `guid`=23316;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23213;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23212;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23211;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23210;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23209;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23208;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23207;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23206;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23205;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23204;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23203;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23202;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23201;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23200;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23199;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23198;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23197;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23166;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23165;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23164;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23163;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23162;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23161;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23160;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23159;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23158;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23157;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23156;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23155;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23154;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23153;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23152;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23151;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23150;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23149;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23148;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23147;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23146;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23145;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23144;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23143;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23142;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23141;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23140;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23139;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23138;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23137;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23136;
UPDATE `creature` SET `id`=5471, `id2`=5472, `id3`=5473,`id4`=5475 WHERE `guid`=23135;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23076;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23075;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23074;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23073;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23072;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23071;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23070;
UPDATE `creature` SET `id`=5458, `id2`=5460, `id3`=0,`id4`=0 WHERE `guid`=23069;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23033;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23032;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23031;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23030;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23029;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23028;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23027;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23026;
UPDATE `creature` SET `id`=669, `id2`=670, `id3`=782,`id4`=784 WHERE `guid`=1152;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23025;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23024;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23023;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23022;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23021;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23020;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23019;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23018;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23017;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23016;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23015;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23014;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23013;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23012;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23011;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23010;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23009;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23008;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23007;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23006;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23005;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23004;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23003;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23002;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23001;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=23000;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22999;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22998;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22997;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22996;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22995;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22994;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22993;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22992;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22991;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22990;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22989;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22988;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22987;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22986;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22985;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22984;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22983;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22982;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22981;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22980;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22979;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22978;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22977;
UPDATE `creature` SET `id`=5455, `id2`=5456, `id3`=5457,`id4`=0 WHERE `guid`=22976;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22949;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22948;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22947;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22946;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22945;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22944;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22943;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22942;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22941;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22940;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22939;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22938;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22937;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22936;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22935;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22934;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22933;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22932;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22931;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22930;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22929;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22928;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22927;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22926;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22925;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22924;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22923;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22922;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22921;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22920;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22919;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22918;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22917;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22916;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22915;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22914;
UPDATE `creature` SET `id`=5452, `id2`=5453, `id3`=5454,`id4`=0 WHERE `guid`=22913;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22889;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22888;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22887;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22886;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22885;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22884;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22883;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22882;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22881;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22880;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22879;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22878;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22877;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22876;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22875;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22874;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22873;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22872;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22871;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22870;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22869;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22868;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22867;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22866;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22865;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22864;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22863;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22862;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22861;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22860;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22859;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22858;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22857;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22856;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22855;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22854;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22853;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22852;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22851;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22850;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22849;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22848;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22847;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22846;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22845;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22844;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22843;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22842;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22841;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22840;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22839;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22838;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22837;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22836;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22835;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22834;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22833;
UPDATE `creature` SET `id`=5441, `id2`=5450, `id3`=5451,`id4`=0 WHERE `guid`=22832;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1148;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1147;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1145;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1143;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1140;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1139;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1137;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1134;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1132;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=1131;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1130;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1129;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1128;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1122;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1121;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1120;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=1116;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1112;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21819;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21818;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21817;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21816;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21815;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21814;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21813;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21812;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21811;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21810;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21809;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21808;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21807;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21806;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21805;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21804;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21803;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21802;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21801;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21800;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21799;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21798;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21797;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21795;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21794;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21793;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21792;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21791;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21790;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21789;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21788;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21787;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21786;
UPDATE `creature` SET `id`=5645, `id2`=5646, `id3`=5647,`id4`=0 WHERE `guid`=21785;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21752;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21751;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21750;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21749;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21748;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21747;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21746;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21745;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21744;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21743;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21742;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21741;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21740;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21739;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21738;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21737;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21736;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21735;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21734;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21733;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21732;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21116;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21115;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21114;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21113;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21112;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21111;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21110;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21109;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21108;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21107;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21106;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21105;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21104;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21103;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21102;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21101;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21100;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21099;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21098;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21097;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21096;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21095;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21094;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21093;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21092;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21091;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21090;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21089;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21088;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21087;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21086;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21085;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21084;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21083;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21082;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21081;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21080;
UPDATE `creature` SET `id`=10758, `id2`=10759, `id3`=10760,`id4`=0 WHERE `guid`=21079;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21067;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21066;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21065;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21064;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21057;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21056;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21054;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21053;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21052;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21051;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21050;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21044;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21043;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=0,`id4`=0 WHERE `guid`=21042;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21041;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21040;
UPDATE `creature` SET `id`=4100, `id2`=4101, `id3`=4104,`id4`=0 WHERE `guid`=21039;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21038;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21037;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21035;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21033;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21032;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21031;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21030;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21028;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21027;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21025;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21023;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21021;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21019;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21018;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21017;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21016;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21015;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21014;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21013;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21011;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21010;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21009;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21008;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21007;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21006;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21005;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21004;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21003;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21002;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=21001;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=21000;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20999;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20998;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20997;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20996;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20995;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20994;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20993;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20992;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20991;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20990;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20989;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20988;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20987;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20986;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20985;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20984;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20983;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20982;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20981;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20980;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20979;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20978;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20977;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20976;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20975;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20974;
UPDATE `creature` SET `id`=4093, `id2`=4094, `id3`=4096,`id4`=0 WHERE `guid`=20973;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=20876;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=20875;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=20874;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=20873;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=20872;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=1101;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1097;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1096;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1095;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1094;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1092;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1089;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1081;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1073;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1068;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1064;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1056;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1052;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=1008;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=993;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=992;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=985;
UPDATE `creature` SET `id`=1563, `id2`=1564, `id3`=0,`id4`=0 WHERE `guid`=949;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=944;
UPDATE `creature` SET `id`=667, `id2`=696, `id3`=780,`id4`=0 WHERE `guid`=857;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=839;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=834;
UPDATE `creature` SET `id`=937, `id2`=940, `id3`=0,`id4`=0 WHERE `guid`=794;
UPDATE `creature` SET `id`=4457, `id2`=4458, `id3`=4461,`id4`=0 WHERE `guid`=793;
UPDATE `creature` SET `id`=4458, `id2`=4459, `id3`=4460,`id4`=4461 WHERE `guid`=791;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=766;
UPDATE `creature` SET `id`=1488, `id2`=1489, `id3`=1490,`id4`=1491 WHERE `guid`=760;
UPDATE `creature` SET `id`=588, `id2`=595, `id3`=701,`id4`=0 WHERE `guid`=757;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=750;
UPDATE `creature` SET `id`=6073, `id2`=6115, `id3`=11697,`id4`=0 WHERE `guid`=19716;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=615;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6841;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6836;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6821;
UPDATE `creature` SET `id`=5839, `id2`=8637, `id3`=0,`id4`=0 WHERE `guid`=6806;
UPDATE `creature` SET `id`=5839, `id2`=8637, `id3`=0,`id4`=0 WHERE `guid`=6805;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6803;
UPDATE `creature` SET `id`=5839, `id2`=8637, `id3`=0,`id4`=0 WHERE `guid`=6802;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6801;
UPDATE `creature` SET `id`=5839, `id2`=8637, `id3`=0,`id4`=0 WHERE `guid`=6798;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6797;
UPDATE `creature` SET `id`=5839, `id2`=8637, `id3`=0,`id4`=0 WHERE `guid`=6795;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6794;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6790;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6787;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6782;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6779;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6777;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6774;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6773;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6771;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6767;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6251;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=6216;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5844;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5841;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5839;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5838;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5836;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5814;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5812;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5808;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5787;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5786;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5776;
UPDATE `creature` SET `id`=5844, `id2`=5846, `id3`=0,`id4`=0 WHERE `guid`=5742;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5556;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5555;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=5549;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=5548;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5538;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5484;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5475;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5473;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5471;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5470;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5465;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5463;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5461;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5456;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5454;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5434;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5431;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5430;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5429;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5411;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5408;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5395;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5389;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5387;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5359;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5356;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5353;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5338;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5337;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=5314;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=5313;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=5312;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=13098;
UPDATE `creature` SET `id`=4095, `id2`=4097, `id3`=4099,`id4`=0 WHERE `guid`=13095;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5277;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5276;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=5275;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5270;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=5264;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5250;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=5248;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=4648;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=4647;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=4641;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=4640;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12939;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12933;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12284;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12242;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12241;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12240;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12239;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=12227;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=10421;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=10411;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=7647;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=7645;
UPDATE `creature` SET `id`=3115, `id2`=3116, `id3`=0,`id4`=0 WHERE `guid`=7643;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=4616;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=4615;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=4612;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=4611;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=4610;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=4609;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=4608;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=4606;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=4604;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=4584;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=444;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=379;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=378;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=377;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=376;
UPDATE `creature` SET `id`=1565, `id2`=1653, `id3`=0,`id4`=0 WHERE `guid`=375;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=4582;
UPDATE `creature` SET `id`=7042, `id2`=7043, `id3`=0,`id4`=0 WHERE `guid`=4581;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3316;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3315;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3314;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3309;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3308;
UPDATE `creature` SET `id`=9778, `id2`=9779, `id3`=0,`id4`=0 WHERE `guid`=3307;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=2094;
UPDATE `creature` SET `id`=7034, `id2`=7035, `id3`=0,`id4`=0 WHERE `guid`=1076;
UPDATE `creature` SET `id`=7036, `id2`=7037, `id3`=7038,`id4`=0 WHERE `guid`=250;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=34157;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=38711;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=38739;
UPDATE `creature` SET `id`=761, `id2`=762, `id3`=0,`id4`=0 WHERE `guid`=38797;
UPDATE `creature` SET `id`=761, `id2`=762, `id3`=0,`id4`=0 WHERE `guid`=38799;
UPDATE `creature` SET `id`=761, `id2`=762, `id3`=0,`id4`=0 WHERE `guid`=38886;
UPDATE `creature` SET `id`=761, `id2`=762, `id3`=0,`id4`=0 WHERE `guid`=40200;
UPDATE `creature` SET `id`=765, `id2`=766, `id3`=0,`id4`=0 WHERE `guid`=42823;
UPDATE `creature` SET `id`=765, `id2`=766, `id3`=0,`id4`=0 WHERE `guid`=42825;
UPDATE `creature` SET `id`=765, `id2`=766, `id3`=0,`id4`=0 WHERE `guid`=42828;
UPDATE `creature` SET `id`=765, `id2`=766, `id3`=0,`id4`=0 WHERE `guid`=42832;
UPDATE `creature` SET `id`=765, `id2`=766, `id3`=0,`id4`=0 WHERE `guid`=42834;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=42838;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=42846;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=42852;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43584;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43585;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43587;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43591;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43595;
UPDATE `creature` SET `id`=751, `id2`=752, `id3`=0,`id4`=0 WHERE `guid`=43658;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=44233;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=44289;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=44292;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=44294;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=44295;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=45540;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=45547;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=52597;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=52811;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=52851;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53858;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53859;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53957;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53958;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53960;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=53961;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54037;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54046;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54048;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54078;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54436;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=54437;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=66997;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=67002;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=68754;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=68755;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=68756;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=68757;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=69492;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=81708;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=81709;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=87027;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89445;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89446;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89449;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89450;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89458;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89459;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89460;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89461;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89462;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=89463;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89464;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=89465;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89466;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89467;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89468;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89469;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89470;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89471;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89472;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89473;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89474;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89475;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89476;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89478;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89480;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89481;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89482;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89483;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89484;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89485;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89486;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89487;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89489;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89491;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89493;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89494;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89495;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89496;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89497;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89503;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89504;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89505;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89506;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89509;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89510;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89511;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89518;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89577;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89580;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89581;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89583;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89584;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89585;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89588;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89591;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89594;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89596;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89597;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89598;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89599;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89600;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89601;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89602;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89603;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89604;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89605;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89606;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89607;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89609;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89610;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89611;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89612;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89613;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89619;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89620;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89621;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89622;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89623;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89624;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89625;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89626;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89627;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89628;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89629;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89630;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89631;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89632;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89633;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89634;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89636;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89642;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89646;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89649;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89654;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89656;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89657;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89658;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=89659;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89660;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89661;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89663;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89664;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89666;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89668;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89669;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89670;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89671;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89672;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89673;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89675;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89676;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89721;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89722;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89723;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89724;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89725;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89726;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89727;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89729;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89730;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89731;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89732;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89733;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89734;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89735;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89736;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89737;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89738;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89739;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89740;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89741;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89743;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89744;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89745;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89746;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89747;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89753;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89754;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89755;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89756;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89757;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89758;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89759;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89760;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89761;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89762;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89763;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=89764;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89832;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89833;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89834;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89835;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89836;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89837;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89838;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89839;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89851;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=89854;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89873;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89875;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=89880;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89914;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=89915;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89916;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89917;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89918;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89919;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89920;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89921;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89922;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=89923;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89933;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89934;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89935;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89936;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89937;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89938;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=89939;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=89940;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89941;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89946;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89948;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89949;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89950;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89951;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89952;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89953;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=89954;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89955;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89956;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89957;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89961;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89962;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89963;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89968;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89969;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=89970;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90001;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90002;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90020;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90021;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90022;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90023;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90024;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90025;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90026;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90027;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90039;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90060;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90061;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90062;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90063;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90064;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90065;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90066;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90067;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90075;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90076;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90077;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90078;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90079;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90080;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90081;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90082;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90083;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90084;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90085;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90086;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90088;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90089;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90090;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90091;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90095;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90096;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90097;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90098;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90102;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90103;
UPDATE `creature` SET `id`=171, `id2`=458, `id3`=0,`id4`=0 WHERE `guid`=90104;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90107;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90108;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90109;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90110;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90111;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90113;
UPDATE `creature` SET `id`=458, `id2`=517, `id3`=0,`id4`=0 WHERE `guid`=90114;
UPDATE `creature` SET `id`=456, `id2`=513, `id3`=0,`id4`=0 WHERE `guid`=90145;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90146;
UPDATE `creature` SET `id`=126, `id2`=456, `id3`=0,`id4`=0 WHERE `guid`=90147;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=90221;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90231;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90239;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90240;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90243;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90247;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90257;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90258;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90260;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90262;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90266;
UPDATE `creature` SET `id`=98, `id2`=453, `id3`=0,`id4`=0 WHERE `guid`=90267;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=90290;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90295;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90298;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90301;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90304;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90305;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90308;
UPDATE `creature` SET `id`=123, `id2`=501, `id3`=0,`id4`=0 WHERE `guid`=90309;
UPDATE `creature` SET `id`=589, `id2`=590, `id3`=0,`id4`=0 WHERE `guid`=90333;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90348;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90353;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90382;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90385;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90398;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90400;
UPDATE `creature` SET `id`=126, `id2`=515, `id3`=0,`id4`=0 WHERE `guid`=90405;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90409;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90415;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90419;
UPDATE `creature` SET `id`=95, `id2`=504, `id3`=0,`id4`=0 WHERE `guid`=90422;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=30039;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=30040;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=30041;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=30042;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=32023;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=37924;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=38373;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=38374;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=40600;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=40607;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=41295;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=41918;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=41919;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=41920;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=43669;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=43913;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44264;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=44525;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44605;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44737;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44743;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44745;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44748;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44754;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44759;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44761;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44769;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44774;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44775;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=44778;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=44895;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=44904;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45027;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45033;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45040;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45064;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45071;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45081;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45085;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45087;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45088;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45089;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45096;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45098;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45112;
UPDATE `creature` SET `id`=1527, `id2`=1528, `id3`=0,`id4`=0 WHERE `guid`=45113;
UPDATE `creature` SET `id`=1527, `id2`=1528, `id3`=0,`id4`=0 WHERE `guid`=45115;
UPDATE `creature` SET `id`=1527, `id2`=1528, `id3`=0,`id4`=0 WHERE `guid`=45117;
UPDATE `creature` SET `id`=1527, `id2`=1528, `id3`=0,`id4`=0 WHERE `guid`=45123;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45147;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45149;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45150;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45151;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45158;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45160;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45162;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45163;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45164;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45165;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45180;
UPDATE `creature` SET `id`=1525, `id2`=1526, `id3`=0,`id4`=0 WHERE `guid`=45184;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=2569557;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45198;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45200;
UPDATE `creature` SET `id`=4280, `id2`=4281, `id3`=4282,`id4`=0 WHERE `guid`=45203;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45228;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45229;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45230;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45231;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45234;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45235;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45303;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45305;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45306;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45307;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45308;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=45311;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=45327;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=45329;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45343;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45345;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45346;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45349;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45350;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45351;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45353;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45354;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45355;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45357;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45359;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45360;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45363;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=45366;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45443;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45445;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45446;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45447;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45455;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45456;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45457;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45459;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45460;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=45461;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45462;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=45463;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46275;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46276;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46277;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46278;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46280;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=46286;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=46606;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=46746;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=46747;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=46748;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=46761;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=46762;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=46763;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=46764;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=46877;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=46879;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=46894;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=46959;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=46980;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=46983;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47103;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47105;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47106;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47107;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47108;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47109;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47110;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47112;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=47123;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=47124;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=47125;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=47127;
UPDATE `creature` SET `id`=1793, `id2`=1796, `id3`=0,`id4`=0 WHERE `guid`=47128;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=47191;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=47192;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=47198;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=47199;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=47200;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47444;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47453;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47459;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47462;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47463;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=47479;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=47990;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=47992;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=47994;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48142;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48143;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48144;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48154;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48156;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48158;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48278;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48282;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48283;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48284;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48285;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48370;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48376;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48379;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48380;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48386;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48387;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48390;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48534;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48535;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48537;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48538;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48539;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48541;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48542;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48543;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48589;
UPDATE `creature` SET `id`=1802, `id2`=1804, `id3`=4472,`id4`=0 WHERE `guid`=48590;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48603;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48608;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48609;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48625;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48626;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48627;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48628;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48630;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=48631;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48632;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=48633;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=49601;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=49602;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=49606;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=49608;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=49989;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=51651;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=51734;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=51736;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=51737;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=51740;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=51856;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=51989;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52007;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=52123;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52239;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52240;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=52241;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52242;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52255;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52256;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=52257;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52476;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52496;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52513;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52514;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52515;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52517;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=52543;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52585;
UPDATE `creature` SET `id`=1794, `id2`=1795, `id3`=0,`id4`=0 WHERE `guid`=52625;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52630;
UPDATE `creature` SET `id`=1787, `id2`=1789, `id3`=0,`id4`=0 WHERE `guid`=52632;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=53855;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=54748;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=56695;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=64959;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=69690;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=69702;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=91921;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=91922;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=91924;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=91927;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=91929;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92140;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92143;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92176;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92178;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92187;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92190;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92192;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92193;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92241;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92242;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92319;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92320;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92321;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92322;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92334;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92408;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92560;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92566;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92682;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92684;
UPDATE `creature` SET `id`=8546, `id2`=8550, `id3`=8558,`id4`=0 WHERE `guid`=92710;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92856;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92857;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92859;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92862;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92865;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92868;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92869;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92871;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92874;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92926;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92927;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92929;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92932;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92935;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92936;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=92938;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93047;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93048;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93049;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93051;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93247;
UPDATE `creature` SET `id`=12477, `id2`=12478, `id3`=12479,`id4`=0 WHERE `guid`=93248;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35289;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35291;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35292;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35293;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35295;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35296;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35297;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35298;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35299;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35300;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35301;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35302;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35303;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35304;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35305;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35306;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35307;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35308;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35309;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35310;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35311;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35312;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35313;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35314;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35315;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35316;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35317;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35318;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35319;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35320;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35321;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35322;
UPDATE `creature` SET `id`=6188, `id2`=6189, `id3`=0,`id4`=0 WHERE `guid`=35323;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35352;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35353;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35354;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35355;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35356;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35357;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35358;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35359;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35360;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35361;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35362;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35363;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35364;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35365;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35366;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35367;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35368;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35369;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35370;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35371;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35372;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35373;
UPDATE `creature` SET `id`=6190, `id2`=6193, `id3`=0,`id4`=0 WHERE `guid`=35374;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35422;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35425;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35429;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35433;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35434;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35437;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35438;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35441;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35442;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35445;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35446;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35448;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35450;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35451;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35452;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35454;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35456;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35458;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35460;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35470;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35471;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35472;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35474;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35475;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35476;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35477;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35478;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35480;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35483;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35485;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35488;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35489;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35490;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35491;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35492;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35493;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35494;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35495;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35496;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35497;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35498;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35499;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35500;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35501;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35502;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35503;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35504;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35506;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35507;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35508;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35509;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35510;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35511;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35513;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35514;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35515;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35516;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35517;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35518;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35519;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35520;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35521;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35522;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35523;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35524;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35525;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35526;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35527;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35528;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35529;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35530;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35531;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35532;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35533;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35534;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35535;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35536;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35537;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35538;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35539;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35540;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35541;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35542;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35543;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35544;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35545;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35546;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35547;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35548;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35549;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35550;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35551;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35552;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35553;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35554;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35555;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35556;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35557;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35558;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35559;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35560;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35561;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35562;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35563;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35564;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35565;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35566;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35567;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35568;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35569;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35570;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35571;
UPDATE `creature` SET `id`=6195, `id2`=6196, `id3`=0,`id4`=0 WHERE `guid`=35572;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35587;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35588;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35589;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35590;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35591;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35592;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35598;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35599;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35600;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35601;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35602;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35603;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35606;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35607;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35608;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35609;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35610;
UPDATE `creature` SET `id`=6198, `id2`=6199, `id3`=0,`id4`=0 WHERE `guid`=35611;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35655;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35656;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35657;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35672;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35673;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35674;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35675;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35689;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35690;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35702;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35703;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35721;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35722;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35723;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35790;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35791;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35792;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35794;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35795;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35796;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35802;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35803;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35804;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35810;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35811;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35812;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35816;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35817;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35824;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35825;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35831;
UPDATE `creature` SET `id`=6200, `id2`=6201, `id3`=6202,`id4`=0 WHERE `guid`=35832;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35988;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35989;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35990;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35991;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35994;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35995;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35996;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35997;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=35999;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=36000;
UPDATE `creature` SET `id`=7885, `id2`=7886, `id3`=0,`id4`=0 WHERE `guid`=36001;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36168;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36169;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36170;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36171;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36172;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36173;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36174;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36175;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36176;
UPDATE `creature` SET `id`=6116, `id2`=6117, `id3`=0,`id4`=0 WHERE `guid`=36177;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36381;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36382;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36383;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36384;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36385;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36386;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36387;
UPDATE `creature` SET `id`=6125, `id2`=6126, `id3`=6127,`id4`=0 WHERE `guid`=36388;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563896;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36413;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36419;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36420;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36422;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36423;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36429;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36430;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36431;
UPDATE `creature` SET `id`=193, `id2`=6131, `id3`=0,`id4`=0 WHERE `guid`=36432;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37016;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37017;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37020;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37021;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37024;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37025;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37026;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37027;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37028;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37040;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37044;
UPDATE `creature` SET `id`=2338, `id2`=2339, `id3`=0,`id4`=0 WHERE `guid`=37045;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37945;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37946;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37947;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37948;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37949;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37950;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37952;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37953;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37955;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37957;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37958;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37959;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37960;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37961;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37962;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37963;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37964;
UPDATE `creature` SET `id`=2202, `id2`=2203, `id3`=0,`id4`=0 WHERE `guid`=37965;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37969;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37970;
UPDATE `creature` SET `id`=2203, `id2`=2204, `id3`=0,`id4`=0 WHERE `guid`=37972;
UPDATE `creature` SET `id`=2203, `id2`=2204, `id3`=0,`id4`=0 WHERE `guid`=37973;
UPDATE `creature` SET `id`=2203, `id2`=2204, `id3`=0,`id4`=0 WHERE `guid`=37974;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37976;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37977;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37978;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37979;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37981;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37982;
UPDATE `creature` SET `id`=2204, `id2`=2205, `id3`=0,`id4`=0 WHERE `guid`=37983;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37984;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37985;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37986;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37987;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37988;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37989;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37990;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37991;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37992;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37993;
UPDATE `creature` SET `id`=2205, `id2`=2206, `id3`=0,`id4`=0 WHERE `guid`=37994;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38159;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38160;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38161;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38162;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38163;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38164;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38165;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38166;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38167;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38169;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38170;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38171;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38172;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38173;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38174;
UPDATE `creature` SET `id`=2207, `id2`=2208, `id3`=0,`id4`=0 WHERE `guid`=38175;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39559;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39562;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39564;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39566;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39567;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39569;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=39572;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=39613;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=39630;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=39676;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=39680;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=39691;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=39727;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40160;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=40163;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40166;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=40173;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=40178;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=40192;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40196;
UPDATE `creature` SET `id`=7100, `id2`=7101, `id3`=0,`id4`=0 WHERE `guid`=40239;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40290;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40301;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40302;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40303;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40304;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40306;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40307;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40314;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40315;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40388;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40389;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40390;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40391;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40393;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40394;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40397;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40398;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40401;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40408;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40410;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40413;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40414;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40415;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40417;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40418;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40421;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40430;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40438;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40443;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40472;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40604;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40605;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40608;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40611;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40612;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40613;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40618;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40625;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40627;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40628;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40629;
UPDATE `creature` SET `id`=7156, `id2`=7157, `id3`=7158,`id4`=0 WHERE `guid`=40631;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40632;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40636;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40647;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40658;
UPDATE `creature` SET `id`=7112, `id2`=7115, `id3`=0,`id4`=0 WHERE `guid`=40663;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40669;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40671;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40673;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40680;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40688;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40695;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40698;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40701;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40704;
UPDATE `creature` SET `id`=7118, `id2`=7120, `id3`=0,`id4`=0 WHERE `guid`=40705;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40712;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40715;
UPDATE `creature` SET `id`=7107, `id2`=7108, `id3`=0,`id4`=0 WHERE `guid`=40718;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40730;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40735;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40738;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40743;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40747;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40757;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40759;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40763;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40764;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40765;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40767;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40769;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40829;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40832;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40833;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40834;
UPDATE `creature` SET `id`=7106, `id2`=7109, `id3`=7110,`id4`=0 WHERE `guid`=40835;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40851;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40852;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40853;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40854;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40855;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40856;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40857;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40858;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40859;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40860;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40861;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40862;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40863;
UPDATE `creature` SET `id`=7428, `id2`=7429, `id3`=0,`id4`=0 WHERE `guid`=40864;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=40996;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=40997;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=40998;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=40999;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41000;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41001;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41002;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41003;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41004;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41005;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41006;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41007;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41008;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41009;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41010;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41011;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41012;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41013;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41014;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41015;
UPDATE `creature` SET `id`=7435, `id2`=7436, `id3`=7437,`id4`=0 WHERE `guid`=41016;
UPDATE `creature` SET `id`=7439, `id2`=7440, `id3`=0,`id4`=0 WHERE `guid`=41045;
UPDATE `creature` SET `id`=7439, `id2`=7440, `id3`=0,`id4`=0 WHERE `guid`=41046;
UPDATE `creature` SET `id`=7439, `id2`=7440, `id3`=0,`id4`=0 WHERE `guid`=41047;
UPDATE `creature` SET `id`=7439, `id2`=7440, `id3`=0,`id4`=0 WHERE `guid`=41048;
UPDATE `creature` SET `id`=7439, `id2`=7440, `id3`=0,`id4`=0 WHERE `guid`=41049;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41050;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41051;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41052;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41053;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41054;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41055;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41056;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41057;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41058;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41059;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41060;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41061;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41062;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41063;
UPDATE `creature` SET `id`=7440, `id2`=7441, `id3`=0,`id4`=0 WHERE `guid`=41064;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41419;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41420;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41421;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41422;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41423;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41424;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41425;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41426;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41427;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41428;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41429;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41430;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41431;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41432;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41433;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41434;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41435;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41436;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41437;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41438;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41439;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41440;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41441;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41442;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41443;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41444;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41445;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41446;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41447;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41448;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41449;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41450;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41451;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41452;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41453;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41454;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41455;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41456;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41457;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41458;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41459;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41460;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41461;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41462;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41463;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41464;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41465;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41466;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41467;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41468;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41469;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41470;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41471;
UPDATE `creature` SET `id`=7452, `id2`=7453, `id3`=7454,`id4`=0 WHERE `guid`=41472;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41644;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41645;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41646;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41647;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41648;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41649;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41650;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41651;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41652;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41653;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41656;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41658;
UPDATE `creature` SET `id`=7459, `id2`=7460, `id3`=0,`id4`=0 WHERE `guid`=41659;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42164;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42165;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42166;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42167;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42168;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42169;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42170;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42171;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42172;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42173;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42174;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42175;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42176;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42177;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42178;
UPDATE `creature` SET `id`=7523, `id2`=7524, `id3`=0,`id4`=0 WHERE `guid`=42179;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48451;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48452;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48453;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48454;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48455;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48456;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48471;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48472;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48473;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48475;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48486;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48487;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48488;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48489;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48490;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48491;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48492;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48493;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48494;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48495;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48496;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48497;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48498;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48499;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48502;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48503;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48504;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48505;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48506;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48507;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48508;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48509;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48510;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48511;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48512;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48513;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48514;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48515;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48516;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48517;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48518;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48519;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48520;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48521;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48522;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48523;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48524;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48525;
UPDATE `creature` SET `id`=2009, `id2`=2010, `id3`=0,`id4`=0 WHERE `guid`=48526;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49212;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49213;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49215;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49216;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49217;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49264;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49265;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49266;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49267;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49404;
UPDATE `creature` SET `id`=2012, `id2`=2013, `id3`=0,`id4`=0 WHERE `guid`=49405;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49428;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49429;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49430;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49431;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49432;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49433;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49434;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49435;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49436;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49437;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49438;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49439;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49440;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49441;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49442;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49443;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49444;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49445;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49447;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49448;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49449;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49450;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49451;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49452;
UPDATE `creature` SET `id`=2015, `id2`=2017, `id3`=2018,`id4`=0 WHERE `guid`=49453;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49460;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49461;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49462;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49463;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49464;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49465;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49466;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49467;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49468;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49469;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49470;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49471;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49472;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49473;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49474;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49475;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49476;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49477;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49478;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49479;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49480;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49481;
UPDATE `creature` SET `id`=2019, `id2`=2020, `id3`=2021,`id4`=0 WHERE `guid`=49482;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50035;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50036;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50037;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50038;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50039;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50040;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50041;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50042;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50043;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50044;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50045;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50046;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50047;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50048;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50049;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50050;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50051;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50052;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50053;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50054;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50186;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50187;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50188;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50194;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50195;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50198;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50200;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50201;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50202;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50203;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50204;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50205;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50215;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50216;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50217;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50218;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50250;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50251;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50252;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50253;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50254;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50255;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50256;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50257;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50258;
UPDATE `creature` SET `id`=5229, `id2`=5232, `id3`=5237,`id4`=0 WHERE `guid`=50259;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50260;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50261;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50262;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50263;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50264;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50265;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50266;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50267;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50268;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50269;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50270;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50271;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50272;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50273;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50274;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50275;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50276;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50277;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50278;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50279;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50280;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50281;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50282;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50283;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50284;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50285;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50286;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50287;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50288;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50289;
UPDATE `creature` SET `id`=5236, `id2`=5238, `id3`=5239,`id4`=0 WHERE `guid`=50290;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50423;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50424;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50425;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50426;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50427;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50428;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50429;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50430;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50431;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50432;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50433;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50434;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50435;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50436;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50437;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50438;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50439;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50440;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50441;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50442;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50443;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50444;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50445;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50446;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50447;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50448;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50449;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=0,`id4`=0 WHERE `guid`=50450;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50461;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50462;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50463;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50464;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50465;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50466;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50467;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50468;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50469;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50470;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50471;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50472;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50473;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50474;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50475;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50476;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50477;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50478;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50479;
UPDATE `creature` SET `id`=5249, `id2`=5251, `id3`=5253,`id4`=0 WHERE `guid`=50480;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50525;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50526;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50527;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50528;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50529;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50530;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50531;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50532;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50533;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50534;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50535;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50536;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50537;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50538;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50539;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50540;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50541;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50542;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50543;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50544;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50545;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50546;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50547;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50548;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50549;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50550;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50551;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50552;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50553;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50554;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50555;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50556;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50557;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50558;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50559;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50560;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50561;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50562;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50563;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50564;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50565;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50566;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50567;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50568;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50569;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50570;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50571;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50572;
UPDATE `creature` SET `id`=5254, `id2`=5255, `id3`=5258,`id4`=0 WHERE `guid`=50573;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50600;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50601;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50602;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50603;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50604;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50605;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50606;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50607;
UPDATE `creature` SET `id`=7725, `id2`=7726, `id3`=7727,`id4`=0 WHERE `guid`=50642;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51259;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51260;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51261;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51262;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51263;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51264;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51265;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51266;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51267;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51268;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51269;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51270;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51271;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51272;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51273;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51274;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51275;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51276;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51277;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51278;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51280;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51281;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51282;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51283;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51284;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51285;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51286;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51287;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51288;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51289;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51290;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51291;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51292;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51293;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51294;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51295;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51296;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51297;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51298;
UPDATE `creature` SET `id`=5317, `id2`=5319, `id3`=5320,`id4`=0 WHERE `guid`=51299;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51486;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51487;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51488;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51489;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51490;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51491;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51532;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51533;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51534;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51535;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51536;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51537;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51538;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51539;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51540;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51541;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51542;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51543;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51544;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51545;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51546;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51547;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51548;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51549;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51550;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51551;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51552;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51553;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51665;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51666;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51667;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51668;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51669;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51670;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51671;
UPDATE `creature` SET `id`=5331, `id2`=5332, `id3`=5335,`id4`=5337 WHERE `guid`=51672;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51693;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51694;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51695;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51696;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51697;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51698;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51699;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51700;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51701;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51702;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51703;
UPDATE `creature` SET `id`=5357, `id2`=5358, `id3`=0,`id4`=0 WHERE `guid`=51704;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51714;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51715;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51716;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51717;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51718;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51719;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51720;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51721;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51722;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51723;
UPDATE `creature` SET `id`=5359, `id2`=5360, `id3`=5361,`id4`=0 WHERE `guid`=51724;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51733;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51752;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51753;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51754;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51755;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51756;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51757;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51758;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51759;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51760;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51761;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51762;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51763;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51764;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51765;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51766;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51767;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51768;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51769;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51770;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51771;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51772;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51773;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51774;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51775;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51776;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51777;
UPDATE `creature` SET `id`=5362, `id2`=5363, `id3`=5364,`id4`=5366 WHERE `guid`=51778;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563900;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563901;
UPDATE `creature` SET `id`=3746, `id2`=3748, `id3`=3749,`id4`=0 WHERE `guid`=2563902;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568008;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568022;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568058;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568065;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568068;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568070;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568071;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568076;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568077;
UPDATE `creature` SET `id`=1831, `id2`=1835, `id3`=10605,`id4`=0 WHERE `guid`=2568078;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35224;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35229;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35239;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35240;
UPDATE `creature` SET `id`=6185, `id2`=6186, `id3`=0,`id4`=0 WHERE `guid`=35243;



