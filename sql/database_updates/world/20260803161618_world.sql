-- ==============================================
-- FILE: battleground_worldsafelocs_updated.sql
-- GENERATED: 20260803161618
-- ==============================================
-- AV
UPDATE `battleground_template`
SET `alliance_start_location` = 77,
    `horde_start_location` = 76
WHERE `id` = 1;

-- WSG
UPDATE `battleground_template`
SET `alliance_start_location` = 97,
    `horde_start_location` = 98
WHERE `id` = 2;

-- AB
UPDATE `battleground_template`
SET `alliance_start_location` = 114,
    `horde_start_location` = 113
WHERE `id` = 3;

-- SV
UPDATE `battleground_template`
SET `alliance_start_location` = 130,
    `horde_start_location` = 131
WHERE `id` = 5;

-- ==============================================
-- FILE: game_graveyard_zone_updated.sql
-- GENERATED: 20260803161618
-- ==============================================
DELETE FROM `game_graveyard_zone`;

INSERT INTO `game_graveyard_zone`
(
    `id`,
    `ghost_zone`,
    `faction`
)
VALUES
(3,10,469), -- Duskwood, Darkshire (map 0) -> Duskwood (map 0), Alliance
(4,40,0), -- Westfall, Sentinel Hill (map 0) -> Westfall (map 0), Neutral
(4,1581,0), -- Westfall, Sentinel Hill (map 0) -> The Deadmines (map 36), Neutral
(4,5138,0), -- Westfall, Sentinel Hill (map 0) -> The Deadmines (map 36), Neutral
(6,38,469), -- Loch Modan, Thelsamar (map 0) -> Loch Modan (map 0), Alliance
(7,11,0), -- Wetlands, Crossroads (map 0) -> Wetlands (map 0), Neutral
(7,38,67), -- Wetlands, Crossroads (map 0) -> Loch Modan (map 0), Horde
(8,3,0), -- Badlands, Graveyard NE (map 0) -> Badlands (map 0), Neutral
(8,38,67), -- Badlands, Graveyard NE (map 0) -> Loch Modan (map 0), Horde
(8,1337,0), -- Badlands, Graveyard NE (map 0) -> Uldaman (map 70), Neutral
(9,17,67), -- The Barrens, The Crossroads (map 1) -> The Barrens (map 1), Horde
(9,718,0), -- The Barrens, The Crossroads (map 1) -> Wailing Caverns (map 43), Neutral
(10,5581,469), -- Northwind, Alliance (map 0) -> Northwind (map 0), Alliance
(11,5581,67), -- Northwind, Horde (map 0) -> Northwind (map 0), Horde
(12,5561,0), -- Balor (map 0) -> Balor (map 0), Neutral
(14,5602,0), -- Grim Reaches, Dun Kithas (map 0) -> Grim Reaches (map 0), Neutral
(15,5602,0), -- Grim Reaches, Grim Batol Memorial (map 0) -> Grim Reaches (map 0), Neutral
(16,405,0), -- Desolace, Ghost Walker Post (map 1) -> Desolace (map 1), Neutral
(16,2100,0), -- Desolace, Ghost Walker Post (map 1) -> Maraudon (map 349), Neutral
(17,14,0), -- Durotar, Razor Hill (map 1) -> Durotar (map 1), Neutral
(17,1637,469), -- Durotar, Razor Hill (map 1) -> Orgrimmar (map 1), Alliance
(19,215,67), -- Mulgore, Red Cloud Mesa (map 1) -> Mulgore (map 1), Horde
(20,148,469), -- Darkshore, Auberdine (map 1) -> Darkshore (map 1), Alliance
(21,41,0), -- Deadwind Pass, Morgan's Plot (map 0) -> Deadwind Pass (map 0), Neutral
(21,3457,0), -- Deadwind Pass, Morgan's Plot (map 0) -> Tower of Karazhan (map 814), Neutral
(21,5086,0), -- Deadwind Pass, Morgan's Plot (map 0) -> Karazhan Crypt (map 800), Neutral
(22,400,0), -- Thousand Needles, The Great Lift (map 1) -> Thousand Needles (map 1), Neutral
(22,491,0), -- Thousand Needles, The Great Lift (map 1) -> Razorfen Kraul (map 47), Neutral
(22,722,0), -- Thousand Needles, The Great Lift (map 1) -> Razorfen Downs (map 129), Neutral
(24,1377,0), -- Silithus, Valor's Rest (map 1) -> Silithus (map 1), Neutral
(25,215,0), -- Mulgore, Bloodhoof Village (map 1) -> Mulgore (map 1), Neutral
(25,1638,469), -- Mulgore, Bloodhoof Village (map 1) -> Thunder Bluff (map 1), Alliance
(26,141,469), -- Teldrassil, Darnassus (map 1) -> Teldrassil (map 1), Alliance
(26,1657,469), -- Teldrassil, Darnassus (map 1) -> Darnassus (map 1), Alliance
(27,141,469), -- Teldrassil, Dolanaar (map 1) -> Teldrassil (map 1), Alliance
(27,1657,67), -- Teldrassil, Dolanaar (map 1) -> Darnassus (map 1), Horde
(28,331,0), -- Ashenvale, Astranaar (map 1) -> Ashenvale (map 1), Neutral
(28,5077,0), -- Ashenvale, Astranaar (map 1) -> Crescent Grove (map 802), Neutral
(29,141,469), -- Teldrassil, Aldrassil (map 1) -> Teldrassil (map 1), Alliance
(30,85,67), -- Tirisfal Glades, Deathknell (map 0) -> Tirisfal Glades (map 0), Horde
(32,130,67), -- Silverpine Forest, The Sepulcher (map 0) -> Silverpine Forest (map 0), Horde
(32,209,0), -- Silverpine Forest, The Sepulcher (map 0) -> Shadowfang Keep (map 33), Neutral
(33,36,67), -- Hillsbrad Foothills, Tarren Mill (map 0) -> Alterac Mountains (map 0), Horde
(33,267,67), -- Hillsbrad Foothills, Tarren Mill (map 0) -> Hillsbrad Foothills (map 0), Horde
(34,45,0), -- Arathi Highlands (map 0) -> Arathi Highlands (map 0), Neutral
(35,1,469), -- Dun Morogh, Anvilmar (map 0) -> Dun Morogh (map 0), Alliance
(36,1,0), -- Dun Morogh, Kharanos (map 0) -> Dun Morogh (map 0), Neutral
(36,721,0), -- Dun Morogh, Kharanos (map 0) -> Gnomeregan (map 90), Neutral
(36,1537,67), -- Dun Morogh, Kharanos (map 0) -> Ironforge (map 0), Horde
(36,5134,0), -- Dun Morogh, Kharanos (map 0) -> Gnomeregan (map 90), Neutral
(38,3,67), -- Badlands, Kargath (map 0) -> Badlands (map 0), Horde
(39,10,67), -- Redridge Mountains, Lakeshire (map 0) -> Duskwood (map 0), Horde
(39,44,0), -- Redridge Mountains, Lakeshire (map 0) -> Redridge Mountains (map 0), Neutral
(40,12,469), -- Elwynn Forest, Northshire (map 0) -> Elwynn Forest (map 0), Alliance
(41,12,469), -- Elwynn Forest, Goldshire (map 0) -> Elwynn Forest (map 0), Alliance
(41,717,0), -- Elwynn Forest, Goldshire (map 0) -> The Stockade (map 34), Neutral
(41,1519,469), -- Elwynn Forest, Goldshire (map 0) -> Stormwind City (map 0), Alliance
(41,2257,469), -- Elwynn Forest, Goldshire (map 0) -> Deeprun Tram (map 369), Alliance
(41,5087,469), -- Elwynn Forest, Goldshire (map 0) -> Stormwind Vault (map 35), Alliance
(42,2918,0), -- Elwynn Forest, Stormwind (map 0) -> Champions' Hall (map 449), Neutral
(43,8,67), -- Swamp of Sorrows, Stonard (map 0) -> Swamp of Sorrows (map 0), Horde
(43,1417,0), -- Swamp of Sorrows, Stonard (map 0) -> Sunken Temple (map 109), Neutral
(43,1477,0), -- Swamp of Sorrows, Stonard (map 0) -> The Temple of Atal'Hakkar (map 0), Neutral
(44,33,0), -- Stranglethorn Vale, Booty Bay (map 0) -> Stranglethorn Vale (map 0), Neutral
(46,36,469), -- Hillsbrad Foothills, Southshore (map 0) -> Alterac Mountains (map 0), Alliance
(46,130,469), -- Hillsbrad Foothills, Southshore (map 0) -> Silverpine Forest (map 0), Alliance
(46,209,0), -- Hillsbrad Foothills, Southshore (map 0) -> Shadowfang Keep (map 33), Neutral
(46,267,469), -- Hillsbrad Foothills, Southshore (map 0) -> Hillsbrad Foothills (map 0), Alliance
(47,2597,0), -- Alterac Valley, Snowfall Graveyard (Mid) (map 30) -> Alterac Valley (map 30), Neutral
(48,15,469), -- Dustwallow Marsh, Theramore Isle (map 1) -> Dustwallow Marsh (map 1), Alliance
(48,2159,469), -- Dustwallow Marsh, Theramore Isle (map 1) -> Onyxia's Lair (map 1), Alliance
(49,440,0), -- Tanaris, Gadgetzan (map 1) -> Tanaris (map 1), Neutral
(49,1176,0), -- Tanaris, Gadgetzan (map 1) -> Zul'Farrak (map 209), Neutral
(49,1941,0), -- Tanaris, Gadgetzan (map 1) -> Caverns of Time (map 1), Neutral
(49,5204,0), -- Tanaris, Gadgetzan (map 1) -> The Black Morass (map 269), Neutral
(50,17,67), -- The Barrens, Camp Taurajo (map 1) -> The Barrens (map 1), Horde
(50,406,0), -- The Barrens, Camp Taurajo (map 1) -> Stonetalon Mountains (map 1), Neutral
(51,17,0), -- The Barrens, Ratchet (map 1) -> The Barrens (map 1), Neutral
(51,215,0), -- The Barrens, Ratchet (map 1) -> Mulgore (map 1), Neutral
(53,85,67), -- Tirisfal Glades, Brill (map 0) -> Tirisfal Glades (map 0), Horde
(54,357,469), -- Feralas, Feathermoon Stronghold (map 1) -> Feralas (map 1), Alliance
(54,1477,0), -- Feralas, Feathermoon Stronghold (map 1) -> The Temple of Atal'Hakkar (map 0), Neutral
(55,357,67), -- Feralas, Camp Mojache (map 1) -> Feralas (map 1), Horde
(56,400,0), -- Thousand Needles, Shimmering Flats (map 1) -> Thousand Needles (map 1), Neutral
(57,47,0), -- The Hinterlands, Aerie Peak (map 0) -> The Hinterlands (map 0), Neutral
(58,16,0), -- Azshara, Talrendis Point (map 1) -> Azshara (map 1), Neutral
(59,4,0), -- Blasted Lands, Dreadmaul Hold (map 0) -> Blasted Lands (map 0), Neutral
(59,8,469), -- Blasted Lands, Dreadmaul Hold (map 0) -> Swamp of Sorrows (map 0), Alliance
(60,33,0), -- Stranglethorn Vale, Northern Stranglethorn (map 0) -> Stranglethorn Vale (map 0), Neutral
(60,1581,0), -- Stranglethorn Vale, Northern Stranglethorn (map 0) -> The Deadmines (map 36), Neutral
(60,1977,0), -- Stranglethorn Vale, Northern Stranglethorn (map 0) -> Zul'Gurub (map 309), Neutral
(61,406,0), -- Stonetalon Mountains, Webwinder Path (map 1) -> Stonetalon Mountains (map 1), Neutral
(62,85,469), -- Tirisfal Glades, Faol's Rest (map 0) -> Tirisfal Glades (map 0), Alliance
(62,796,0), -- Tirisfal Glades, Faol's Rest (map 0) -> Scarlet Monastery (map 189), Neutral
(62,1497,469), -- Tirisfal Glades, Faol's Rest (map 0) -> Undercity (map 0), Alliance
(62,2057,0), -- Tirisfal Glades, Faol's Rest (map 0) -> Scholomance (map 289), Neutral
(62,5153,0), -- Tirisfal Glades, Faol's Rest (map 0) -> Scarlet Monastery Armory (map 189), Neutral
(62,5163,0), -- Tirisfal Glades, Faol's Rest (map 0) -> Scarlet Monastery Cathedral (map 189), Neutral
(63,361,0), -- Felwood, Morlos'Aran (map 1) -> Felwood (map 1), Neutral
(64,490,0), -- Un'Goro Crater, The Marshlands (map 1) -> Un'Goro Crater (map 1), Neutral
(65,141,67), -- Darkshore, Twilight Vale (map 1) -> Teldrassil (map 1), Horde
(65,148,0), -- Darkshore, Twilight Vale (map 1) -> Darkshore (map 1), Neutral
(65,406,0), -- Darkshore, Twilight Vale (map 1) -> Stonetalon Mountains (map 1), Neutral
(65,719,0), -- Darkshore, Twilight Vale (map 1) -> Blackfathom Deeps (map 48), Neutral
(65,1657,67), -- Darkshore, Twilight Vale (map 1) -> Darnassus (map 1), Horde
(66,11,0), -- Wetlands, Baradin Bay (map 0) -> Wetlands (map 0), Neutral
(67,28,469), -- Western Plaguelands, Chillwind Camp (map 0) -> Western Plaguelands (map 0), Alliance
(68,139,0), -- Eastern Plaguelands, Light's Hope Chapel (map 0) -> Eastern Plaguelands (map 0), Neutral
(68,4012,0), -- Eastern Plaguelands, Light's Hope Chapel (map 0) -> Scarlet Enclave (map 0), Neutral
(69,618,0), -- Winterspring, Everlook (map 1) -> Winterspring (map 1), Neutral
(70,17,469), -- Ashenvale, Kargathia (map 1) -> The Barrens (map 1), Alliance
(70,331,0), -- Ashenvale, Kargathia (map 1) -> Ashenvale (map 1), Neutral
(70,719,0), -- Ashenvale, Kargathia (map 1) -> Blackfathom Deeps (map 48), Neutral
(70,5077,0), -- Ashenvale, Kargathia (map 1) -> Crescent Grove (map 802), Neutral
(71,22,0), -- Programmer Isle (map 451) -> Programmer Isle (map 451), Neutral
(73,28,67), -- Western Plaguelands, Bulwark (map 0) -> Western Plaguelands (map 0), Horde
(73,85,67), -- Western Plaguelands, Bulwark (map 0) -> Tirisfal Glades (map 0), Horde
(75,16,0), -- Azshara, Southridge Beach (map 1) -> Azshara (map 1), Neutral
(76,2597,67), -- Alterac Valley, Horde Safe (map 30) -> Alterac Valley (map 30), Horde
(77,2597,469), -- Alterac Valley, Alliance Safe (map 30) -> Alterac Valley (map 30), Alliance
(78,2057,0), -- TEST for GM Client Only - Do Not Bug (map 0) -> Scholomance (map 289), Neutral
(79,16,0), -- Azshara, Legash Encampment (map 1) -> Azshara (map 1), Neutral
(80,15,67), -- Dustwallow Marsh, Brackenwall Village (map 1) -> Dustwallow Marsh (map 1), Horde
(80,2159,67), -- Dustwallow Marsh, Brackenwall Village (map 1) -> Onyxia's Lair (map 1), Horde
(81,46,0), -- Burning Steppes, Flame Crest (map 0) -> Burning Steppes (map 0), Neutral
(81,5098,0), -- Burning Steppes, Flame Crest (map 0) -> Hateforge Quarry (map 808), Neutral
(81,5103,0), -- Burning Steppes, Flame Crest (map 0) -> Hateforge Quarry (map 808), Neutral
(82,493,0), -- Moonglade (map 1) -> Moonglade (map 1), Neutral
(83,139,0), -- Eastern Plaguelands, Darrowshire (map 0) -> Eastern Plaguelands (map 0), Neutral
(84,361,0), -- Felwood, Irontree Woods (map 1) -> Felwood (map 1), Neutral
(85,25,0), -- Searing Gorge, Thorium Point (map 0) -> Blackrock Mountain (map 0), Neutral
(85,51,0), -- Searing Gorge, Thorium Point (map 0) -> Searing Gorge (map 0), Neutral
(85,1583,0), -- Searing Gorge, Thorium Point (map 0) -> Blackrock Spire (map 0), Neutral
(85,1584,0), -- Searing Gorge, Thorium Point (map 0) -> Blackrock Depths (map 0), Neutral
(85,2677,0), -- Searing Gorge, Thorium Point (map 0) -> Blackwing Lair (map 469), Neutral
(85,2717,0), -- Searing Gorge, Thorium Point (map 0) -> Molten Core (map 409), Neutral
(86,14,67), -- Durotar, Sen'jin Village (map 1) -> Durotar (map 1), Horde
(87,22,0), -- Programmer Isle, Bucklers Cemetery 2 (map 451) -> Programmer Isle (map 451), Neutral
(88,22,0), -- Programmer Isle, Bucklers Cemetery 1 (map 451) -> Programmer Isle (map 451), Neutral
(89,22,0), -- Programmer Isle, Bucklers Cemetery 3 (map 451) -> Programmer Isle (map 451), Neutral
(90,2597,0), -- Alterac Valley, Stormpike Graveyard (Hi) (map 30) -> Alterac Valley (map 30), Neutral
(92,14,67), -- Durotar, Valley of Trials (map 1) -> Durotar (map 1), Horde
(93,2597,469), -- Alterac Valley, PvP Alliance Choke Graveyard (A-choke) (map 30) -> Alterac Valley (map 30), Alliance
(94,2597,67), -- Alterac Valley, PvP Horde Choke Graveyard (H-choke) (map 30) -> Alterac Valley (map 30), Horde
(95,2597,67), -- Alterac Valley, Frostwolf Relief Hut (H-base) (map 30) -> Alterac Valley (map 30), Horde
(96,2597,469), -- Alterac Valley, Stormpike Aid Station (A-base) (map 30) -> Alterac Valley (map 30), Alliance
(97,3277,469), -- Warsong Gulch - Alliance Enter Loc (map 489) -> Warsong Gulch (map 489), Alliance
(98,3277,67), -- Warsong Gulch - Horde Enter Loc (map 489) -> Warsong Gulch (map 489), Horde
(99,3277,469), -- Warsong Gulch - Alliance Rez Loc (map 489) -> Warsong Gulch (map 489), Alliance
(100,3277,67), -- Warsong Gulch - Horde Rez Loc (map 489) -> Warsong Gulch (map 489), Horde
(101,47,0), -- The Hinterlands, The Overlook Cliffs (map 0) -> The Hinterlands (map 0), Neutral
(102,3277,0), -- Warsong Gulch - Horde Exit Loc (map 1) -> Warsong Gulch (map 489), Neutral
(103,3277,0), -- Warsong Gulch - Alliance Exit Loc (map 1) -> Warsong Gulch (map 489), Neutral
(104,28,0), -- Alterac Valley, Alliance Exit (map 0) -> Western Plaguelands (map 0), Neutral
(104,2597,0), -- Alterac Valley, Alliance Exit (map 0) -> Alterac Valley (map 30), Neutral
(105,2597,0), -- Alterac Valley, Horde Exit (map 0) -> Alterac Valley (map 30), Neutral
(106,357,0), -- Feralas, Dire Maul (map 1) -> Feralas (map 1), Neutral
(106,2557,0), -- Feralas, Dire Maul (map 1) -> Dire Maul (map 429), Neutral
(107,14,67), -- Durotar, Northern Durotar (map 1) -> Durotar (map 1), Horde
(107,1637,67), -- Durotar, Northern Durotar (map 1) -> Orgrimmar (map 1), Horde
(107,2437,0), -- Durotar, Northern Durotar (map 1) -> Ragefire Chasm (map 389), Neutral
(107,2917,67), -- Durotar, Northern Durotar (map 1) -> Hall of Legends (map 1), Horde
(108,215,67), -- Mulgore, Thunder Bluff (map 1) -> Mulgore (map 1), Horde
(108,1638,67), -- Mulgore, Thunder Bluff (map 1) -> Thunder Bluff (map 1), Horde
(109,1,469), -- Dun Morogh, Gates of Ironforge (map 0) -> Dun Morogh (map 0), Alliance
(109,1537,469), -- Dun Morogh, Gates of Ironforge (map 0) -> Ironforge (map 0), Alliance
(110,85,67), -- Tirisfal Glades, Ruins of Lordaeron (map 0) -> Tirisfal Glades (map 0), Horde
(110,1497,67), -- Tirisfal Glades, Ruins of Lordaeron (map 0) -> Undercity (map 0), Horde
(111,12,0), -- Elwynn Forest, Eastvale Logging Camp (map 0) -> Elwynn Forest (map 0), Neutral
(111,1519,67), -- Elwynn Forest, Eastvale Logging Camp (map 0) -> Stormwind City (map 0), Horde
(111,2257,67), -- Elwynn Forest, Eastvale Logging Camp (map 0) -> Deeprun Tram (map 369), Horde
(111,5087,67), -- Elwynn Forest, Eastvale Logging Camp (map 0) -> Stormwind Vault (map 35), Horde
(112,2057,0), -- Western Plaguelands, Caer Darrow (map 0) -> Scholomance (map 289), Neutral
(113,3358,67), -- Arathi Basin - Horde Entrance (map 529) -> Arathi Basin (map 529), Horde
(114,3358,469), -- Arathi Basin - Alliance Entrance (map 529) -> Arathi Basin (map 529), Alliance
(115,3358,0), -- Arathi Basin - Horde Exit (map 0) -> Arathi Basin (map 529), Neutral
(116,3358,0), -- Arathi Basin - Alliance Exit (map 0) -> Arathi Basin (map 529), Neutral
(117,3358,67), -- Arathi Basin - Graveyard, H-Mid (Farm) (map 529) -> Arathi Basin (map 529), Horde
(118,3358,0), -- Arathi Basin - Graveyard, Mid (Blacksmith) (map 529) -> Arathi Basin (map 529), Neutral
(119,3358,469), -- Arathi Basin - Graveyard, A-Mid (Stables) (map 529) -> Arathi Basin (map 529), Alliance
(120,3358,0), -- Arathi Basin - Graveyard, ALT-N (Gold Mine) (map 529) -> Arathi Basin (map 529), Neutral
(121,3358,0), -- Arathi Basin - Graveyard, ALT-S (Lumber Mill) (map 529) -> Arathi Basin (map 529), Neutral
(122,3358,469), -- Arathi Basin - Graveyard, A-Base (Trollbane Hall) (map 529) -> Arathi Basin (map 529), Alliance
(123,3358,67), -- Arathi Basin - Graveyard, H-Base (Defiler's Den) (map 529) -> Arathi Basin (map 529), Horde
(124,139,0), -- Eastern Plaguelands, Blackwood Lake (map 0) -> Eastern Plaguelands (map 0), Neutral
(124,2017,0), -- Eastern Plaguelands, Blackwood Lake (map 0) -> Stratholme (map 329), Neutral
(124,3456,0), -- Eastern Plaguelands, Blackwood Lake (map 0) -> Naxxramas (map 533), Neutral
(124,5148,0), -- Eastern Plaguelands, Blackwood Lake (map 0) -> The Upper Necropolis (map 533), Neutral
(125,1377,0), -- Silithus, Cenarion Hold (map 1) -> Silithus (map 1), Neutral
(126,10,0), -- Duskwood, Ravenhill (map 0) -> Duskwood (map 0), Neutral
(127,1377,0), -- Silithus, Scarab Wall (AQ Only) (map 1) -> Silithus (map 1), Neutral
(127,3428,0), -- Silithus, Scarab Wall (AQ Only) (map 1) -> Ahn'Qiraj (map 531), Neutral
(127,3429,0), -- Silithus, Scarab Wall (AQ Only) (map 1) -> Ruins of Ahn'Qiraj (map 509), Neutral
(127,3478,0), -- Silithus, Scarab Wall (AQ Only) (map 1) -> Gates of Ahn'Qiraj (map 1), Neutral
(128,139,0), -- Eastern Plaguelands, Graveyard CG Tower (map 0) -> Eastern Plaguelands (map 0), Neutral
(129,5130,0), -- Winter Veil Vale, Graveyard (map 813) -> Winter Veil Vale (map 813), Neutral
(130,5023,469), -- Sunnyglade Valley, Alliance Base (map 27) -> Sunnyglade Valley (map 27), Alliance
(131,5023,67), -- Sunnyglade Valley, Horde Base (map 27) -> Sunnyglade Valley (map 27), Horde
(132,5023,469), -- Sunnyglade Valley, Alliance Graveyard (map 27) -> Sunnyglade Valley (map 27), Alliance
(133,5023,67), -- Sunnyglade Valley, Horde Graveyard (map 27) -> Sunnyglade Valley (map 27), Horde
(134,2037,469), -- Alah'Thalas, Alliance Graveyard (map 0) -> Quel'Thalas (map 0), Alliance
(134,2040,469), -- Alah'Thalas, Alliance Graveyard (map 0) -> Alah'Thalas (map 0), Alliance
(135,85,67), -- Steepwater Cliff, Horde Graveyard (map 0) -> Tirisfal Glades (map 0), Horde
(136,5179,0), -- Gilneas (map 0) -> Gilneas (map 0), Neutral
(136,5180,0), -- Gilneas (map 0) -> Gilneas City (map 0), Neutral
(136,5208,0), -- Gilneas (map 0) -> Gilneas City (map 815), Neutral
(137,406,0), -- Amani'Alor (map 1) -> Stonetalon Mountains (map 1), Neutral
(137,2041,67), -- Amani'Alor (map 1) -> Amani'Alor (map 1), Horde
(138,38,0), -- Farstrider's Lodge (map 0) -> Loch Modan (map 0), Neutral
(139,5130,0), -- Winter Veil Vale (map 813) -> Winter Veil Vale (map 813), Neutral
(140,85,0), -- Tirisfal Uplands (map 0) -> Tirisfal Glades (map 0), Neutral
(141,5121,0), -- Tel'Abim Island (map 1) -> Tel'Abim (map 1), Neutral
(142,409,0), -- Lapidis Isle (map 0) -> Lapidis Isle (map 0), Neutral
(143,41,0), -- Karazhan Crypt, Morgan's Plot (map 0) -> Deadwind Pass (map 0), Neutral
(143,3457,0), -- Karazhan Crypt, Morgan's Plot (map 0) -> Tower of Karazhan (map 814), Neutral
(143,5086,0), -- Karazhan Crypt, Morgan's Plot (map 0) -> Karazhan Crypt (map 800), Neutral
(144,406,0), -- Venture Camp (map 1) -> Stonetalon Mountains (map 1), Neutral
(145,1941,0), -- Caverns of Time (map 1) -> Caverns of Time (map 1), Neutral
(145,2366,0), -- Caverns of Time (map 1) -> The Black Morass (map 269), Neutral
(145,5204,0), -- Caverns of Time (map 1) -> The Black Morass (map 269), Neutral
(146,408,0), -- Gilijim Isle (map 0) -> Gillijim's Isle (map 0), Neutral
(147,616,0), -- Hyjal (map 1) -> Hyjal (map 1), Neutral
(147,5097,0), -- Hyjal (map 1) -> Emerald Sanctum (map 807), Neutral
(148,616,0), -- Hyjal, Nordanaar (map 1) -> Hyjal (map 1), Neutral
(149,5536,0), -- Blackstone Island (map 1) -> Blackstone Island (map 1), Neutral
(150,2040,67), -- Thalassian Highlands (map 0) -> Alah'Thalas (map 0), Horde
(150,5225,0), -- Thalassian Highlands (map 0) -> Thalassian Highlands (map 0), Neutral
(151,15,67), -- Mudsprocket (map 1) -> Dustwallow Marsh (map 1), Horde
(152,33,0), -- Gurubashi Arena (map 0) -> Stranglethorn Vale (map 0), Neutral
(153,5023,469), -- Sunnyglade Valley - Alliance Safe (map 27) -> Sunnyglade Valley (map 27), Alliance
(154,4014,469), -- Blood Ring - Alliance Safe (map 26) -> Blood Ring (map 26), Alliance
(155,5638,469), -- Sunstrider Court - Alliance Safe (map 817) -> Sunstrider Court (map 817), Alliance
(156,5023,67), -- Sunnyglade Valley - Horde Safe (map 27) -> Sunnyglade Valley (map 27), Horde
(157,4014,67), -- Blood Ring - Horde Safe (map 26) -> Blood Ring (map 26), Horde
(158,5638,67), -- Sunstrider Court - Horde Safe (map 817) -> Sunstrider Court (map 817), Horde
(159,5722,0), -- Thorn Gorge - Amberhorn Village Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(160,5722,0), -- Thorn Gorge - Farseer Spire Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(167,5722,0), -- Thorn Gorge - Amberhorn Village Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(168,5722,0), -- Thorn Gorge - Farseer Spire Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(169,5722,0), -- Thorn Gorge - Grimtotem Ruins Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(170,5722,0), -- Thorn Gorge - Mage Tower Graveyard (map 821) -> Thorn Gorge (map 821), Neutral
(171,5642,0), -- Moonwhisper Coast - Graveyard (map 1) -> Moonwhisper Coast (map 1), Neutral
(172,5642,0), -- Moonwhisper Coast - Graveyard (map 1) -> Moonwhisper Coast (map 1), Neutral
(173,5642,0), -- Timbermaw Hold - Graveyard (map 1) -> Moonwhisper Coast (map 1), Neutral
(174,5641,0); -- Windhorn Canyon - Graveyard (map 1) -> Windhorn Canyon (map 820), Neutral

-- ==============================================
-- FILE: world_safe_locs_facing_update.sql
-- GENERATED: 20260803161618
-- ==============================================
DELETE FROM `world_safe_locs_facing`;

INSERT INTO `world_safe_locs_facing`
(
    `id`,
    `orientation`
)
VALUES
(3, 3.83972),
(4, 2.49582),
(6, 4.7822),
(7, 2.53073),
(8, 2.79253),
(9, 1.22173),
(17, 0.20944),
(19, 1.88496),
(20, 4.86947),
(21, 3.15905),
(22, 4.7473),
(24, 0.20944),
(25, 1.8675),
(26, 2.40855),
(27, 2.72271),
(28, 1.8326),
(29, 1.11701),
(30, 4.64258),
(32, 3.14159),
(33, 1.67552),
(34, 5.5676),
(35, 2.05949),
(36, 2.54818),
(38, 2.80998),
(39, 0.925025),
(40, 2.72271),
(41, 4.57276),
(43, 3.12414),
(44, 0.925025),
(46, 0.20944),
(47, 4.4855),
(48, 3.00197),
(49, 2.70526),
(50, 1.3439),
(51, 0.0872665),
(53, 4.88692),
(54, 1.25664),
(55, 3.10669),
(56, 4.59022),
(57, 2.58309),
(58, 4.60767),
(59, 5.98648),
(60, 3.07178),
(61, 1.55334),
(62, 0.907571),
(63, 0.750492),
(64, 0.488692),
(65, 5.79449),
(66, 4.92183),
(67, 4.99164),
(69, 0.0349066),
(70, 0.0523599),
(73, 3.38594),
(75, 2.86234),
(76, 2.02458),
(77, 3.92699),
(79, 6.14356),
(80, 5.67232),
(81, 1.76278),
(82, 3.80482),
(83, 0.0174533),
(84, 0.366519),
(85, 6.21337),
(86, 4.92183),
(90, 2.00713),
(91, 4.71239),
(130, 4.4),
(131, 0.5),
(92, 4.11898),
(93, 1.53589),
(94, 2.35619),
(95, 0.261799),
(96, 4.79966),
(97, 3.14159),
(102, 1.5708),
(103, 0.261799),
(104, 4.7822),
(105, 3.35103),
(107, 0.907571),
(108, 6.28319),
(109, 0.785398),
(111, 1.76278),
(112, 2.44346),
(113, 0.802851),
(114, 3.83972),
(115, 2.9147),
(116, 3.12414),
(117, 1.71042),
(118, 1.69297),
(119, 1.8675),
(120, 2.53073),
(121, 5.044),
(122, 2.74017),
(123, 1.72788),
(124, 6.05629),
(125, 2.89725),
(129, 2.7),
(134, 5.6),
(136, 3.7),
(137, 2.3),
(138, 1.0),
(139, 2.7),
(140, 3.37),
(141, 6.0),
(142, 2.04),
(143, 6.1),
(145, 4.9),
(146, 5.14),
(148, 1.73),
(149, 5.8),
(150, 3.07),
(151, 3.8);

