TRUNCATE TABLE `player_factionchange_reputations`;

REPLACE INTO `player_factionchange_reputations` (`alliance_id`, `horde_id`) VALUES 
(47, 530), -- Ironforge <> Darkspear Trolls
(54, 81), -- Gnomeregan <> Thunder Bluff
(69, 68), -- Darnassus <> Undercity
(72, 76), -- Stormwind <> Orgrimmar
(269, 893), -- Silvermoon Remnant <> Revantusk Trolls
(509, 510), -- League of Arathor <> The Defilers
(730, 729), -- Stormpike Guard <> Frostwolf Clan
(890, 889), -- Silverwing Sentinels <> Warsong Outriders
(1001, 471); -- Durotar Labor Union <> Wildhammer Clan

-- 47	Ironforge
-- 54	Gnomeregan Exiles
-- 68	Undercity
-- 69	Darnassus
-- 72	Stormwind
-- 76	Orgrimmar
-- 81	Thunder Bluff
-- 269	Silvermoon Remnant
-- 509	The League of Arathor
-- 510	The Defilers
-- 530	Darkspear Trolls
-- 729	Frostwolf Clan
-- 730	Stormpike Guard
-- 889	Warsong Outriders
-- 890	Silverwing Sentinels
-- 1001	Durotar Labor Union
-- 893	Revantusk Trolls

UPDATE `player_factionchange_spells` SET `comment` = 'Brown Horse' WHERE `alliance_id` = 458;
UPDATE `player_factionchange_spells` SET `comment` = 'Pinto Horse' WHERE `alliance_id` = 472;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Stormwind' WHERE `alliance_id` = 3561;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Ironforge' WHERE `alliance_id` = 3562;
UPDATE `player_factionchange_spells` SET `comment` = 'Teleport: Darnassus' WHERE `alliance_id` = 3565;
UPDATE `player_factionchange_spells` SET `comment` = 'Chestnut Mare' WHERE `alliance_id` = 6648;
UPDATE `player_factionchange_spells` SET `comment` = 'Gray Ram' WHERE `alliance_id` = 6777;
UPDATE `player_factionchange_spells` SET `comment` = 'White Ram' WHERE `alliance_id` = 6898;
UPDATE `player_factionchange_spells` SET `comment` = 'Brown Ram' WHERE `alliance_id` = 6899;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Stormwind' WHERE `alliance_id` = 10059;
UPDATE `player_factionchange_spells` SET `comment` = 'Spotted Frostsaber' WHERE `alliance_id` = 10789;
UPDATE `player_factionchange_spells` SET `comment` = 'Striped Nightsaber' WHERE `alliance_id` = 10793;
UPDATE `player_factionchange_spells` SET `comment` = 'Blue Mechanostrider' WHERE `alliance_id` = 10969;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Ironforge' WHERE `alliance_id` = 11416;
UPDATE `player_factionchange_spells` SET `comment` = 'Portal: Darnassus' WHERE `alliance_id` = 11419;
UPDATE `player_factionchange_spells` SET `comment` = 'White Mechanostrider' WHERE `alliance_id` = 15779;
UPDATE `player_factionchange_spells` SET `comment` = 'Palomino Stallion' WHERE `alliance_id` = 16082;
UPDATE `player_factionchange_spells` SET `comment` = 'White Stallion' WHERE `alliance_id` = 16083;
UPDATE `player_factionchange_spells` SET `comment` = 'Green Mechanostrider' WHERE `alliance_id` = 17453;
UPDATE `player_factionchange_spells` SET `comment` = 'Icy Blue Mechanostrider' WHERE `alliance_id` = 17459;
UPDATE `player_factionchange_spells` SET `comment` = 'Frost Ram' WHERE `alliance_id` = 17460;
UPDATE `player_factionchange_spells` SET `comment` = 'Black Ram' WHERE `alliance_id` = 17461;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Steed' WHERE `alliance_id` = 22717;
UPDATE `player_factionchange_spells` SET `comment` = 'Black Battlestrider' WHERE `alliance_id` = 22719;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Ram' WHERE `alliance_id` = 22720;
UPDATE `player_factionchange_spells` SET `comment` = 'Black War Tiger' WHERE `alliance_id` = 22723;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Mistsaber' WHERE `alliance_id` = 23219;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Yellow Mechanostrider' WHERE `alliance_id` = 23222;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Green Mechanostrider' WHERE `alliance_id` = 23225;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Palomino' WHERE `alliance_id` = 23227;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift White Steed' WHERE `alliance_id` = 23228;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Brown Steed' WHERE `alliance_id` = 23229;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Brown Ram' WHERE `alliance_id` = 23238;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Gray Ram' WHERE `alliance_id` = 23239;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift White Ram' WHERE `alliance_id` = 23240;
UPDATE `player_factionchange_spells` SET `comment` = 'Swift Stormsaber' WHERE `alliance_id` = 23338;
UPDATE `player_factionchange_spells` SET `comment` = 'Stormpike Battle Charger' WHERE `alliance_id` = 23510;

UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Large Timber Wolf') WHERE `horde_id` = 580;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Teleport: Undercity') WHERE `horde_id` = 3563;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Teleport: Thunder Bluff') WHERE `horde_id` = 3566;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Teleport: Orgrimmar') WHERE `horde_id` = 3567;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Dire Wolf') WHERE `horde_id` = 6653;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Brown Wolf') WHERE `horde_id` = 6654;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Emerald Raptor') WHERE `horde_id` = 8395;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Turquoise Raptor') WHERE `horde_id` = 10796;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Violet Raptor') WHERE `horde_id` = 10799;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Portal: Orgrimmar') WHERE `horde_id` = 11417;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Portal: Undercity') WHERE `horde_id` = 11418;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Portal: Thunder Bluff') WHERE `horde_id` = 11420;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Red Wolf') WHERE `horde_id` = 16080;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Arctic Wolf') WHERE `horde_id` = 16081;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Mottled Red Raptor') WHERE `horde_id` = 16084;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Ivory Raptor') WHERE `horde_id` = 17450;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Blue Skeletal Horse') WHERE `horde_id` = 17463;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Brown Skeletal Horse') WHERE `horde_id` = 17464;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Green Skeletal Warhorse') WHERE `horde_id` = 17465;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Gray Kodo') WHERE `horde_id` = 18989;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Brown Kodo') WHERE `horde_id` = 18990;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Green Kodo') WHERE `horde_id` = 18991;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Teal Kodo') WHERE `horde_id` = 18992;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Black War Kodo') WHERE `horde_id` = 22718;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Black War Raptor') WHERE `horde_id` = 22721;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Red Skeletal Warhorse') WHERE `horde_id` = 22722;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Black War Wolf') WHERE `horde_id` = 22724;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Blue Raptor') WHERE `horde_id` = 23241;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Olive Raptor') WHERE `horde_id` = 23242;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Orange Raptor') WHERE `horde_id` = 23243;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Purple Skeletal Warhorse') WHERE `horde_id` = 23246;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Great White Kodo') WHERE `horde_id` = 23247;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Great Brown Kodo') WHERE `horde_id` = 23249;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Brown Wolf') WHERE `horde_id` = 23250;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Timber Wolf') WHERE `horde_id` = 23251;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Swift Gray Wolf') WHERE `horde_id` = 23252;
UPDATE `player_factionchange_spells` SET `comment` = CONCAT(comment, ' - Frostwolf Howler') WHERE `horde_id` = 23509;
  
UPDATE `player_factionchange_quests` SET `comment` = 'A Lesson to Learn' WHERE `alliance_id` = 26;
UPDATE `player_factionchange_quests` SET `comment` = 'Trial of the Lake' WHERE `alliance_id` = 29;
UPDATE `player_factionchange_quests` SET `comment` = 'Trial of the Sea Lion' WHERE `alliance_id` = 272;
UPDATE `player_factionchange_quests` SET `comment` = 'Speak with Jennea' WHERE `alliance_id` = 1860;
UPDATE `player_factionchange_quests` SET `comment` = 'Speak with Bink' WHERE `alliance_id` = 1879;
UPDATE `player_factionchange_quests` SET `comment` = 'Mage-tastic Gizmonitor' WHERE `alliance_id` = 1880;
UPDATE `player_factionchange_quests` SET `comment` = 'Report to Jennea' WHERE `alliance_id` = 1919;
UPDATE `player_factionchange_quests` SET `comment` = 'Investigate the Blue Recluse' WHERE `alliance_id` = 1920;
UPDATE `player_factionchange_quests` SET `comment` = 'Gathering Materials' WHERE `alliance_id` = 1921;
UPDATE `player_factionchange_quests` SET `comment` = 'Ur\'s Treatise on Shadow Magic' WHERE `alliance_id` = 1938;
UPDATE `player_factionchange_quests` SET `comment` = 'High Sorcerer Andromath' WHERE `alliance_id` = 1939;
UPDATE `player_factionchange_quests` SET `comment` = 'Pristine Spider Silk' WHERE `alliance_id` = 1940;
UPDATE `player_factionchange_quests` SET `comment` = 'Manaweave Robe' WHERE `alliance_id` = 1941;
UPDATE `player_factionchange_quests` SET `comment` = 'Astral Knot Garment' WHERE `alliance_id` = 1942;
UPDATE `player_factionchange_quests` SET `comment` = 'Journey to the Marsh' WHERE `alliance_id` = 1947;
UPDATE `player_factionchange_quests` SET `comment` = 'Hidden Secrets' WHERE `alliance_id` = 1949;
UPDATE `player_factionchange_quests` SET `comment` = 'Get the Scoop' WHERE `alliance_id` = 1950;
UPDATE `player_factionchange_quests` SET `comment` = 'The Infernal Orb' WHERE `alliance_id` = 1954;
UPDATE `player_factionchange_quests` SET `comment` = 'Celestial Power' WHERE `alliance_id` = 1958;
UPDATE `player_factionchange_quests` SET `comment` = 'Glyphic Letter' WHERE `alliance_id` = 3104;
UPDATE `player_factionchange_quests` SET `comment` = 'Glyphic Memorandum' WHERE `alliance_id` = 3114;
UPDATE `player_factionchange_quests` SET `comment` = 'Verdant Sigil' WHERE `alliance_id` = 3120;
UPDATE `player_factionchange_quests` SET `comment` = 'Goblin Engineering' WHERE `alliance_id` = 3629;
UPDATE `player_factionchange_quests` SET `comment` = 'Gnome Engineering' WHERE `alliance_id` = 3630;
UPDATE `player_factionchange_quests` SET `comment` = 'Gnome Engineering' WHERE `alliance_id` = 3632;
UPDATE `player_factionchange_quests` SET `comment` = 'Gnome Engineering' WHERE `alliance_id` = 3634;
UPDATE `player_factionchange_quests` SET `comment` = 'The Pledge of Secrecy' WHERE `alliance_id` = 3640;
UPDATE `player_factionchange_quests` SET `comment` = 'Show Your Work' WHERE `alliance_id` = 3641;
UPDATE `player_factionchange_quests` SET `comment` = 'Goblin Engineering' WHERE `alliance_id` = 4181;
UPDATE `player_factionchange_quests` SET `comment` = 'Dragonkin Menace' WHERE `alliance_id` = 4182;
UPDATE `player_factionchange_quests` SET `comment` = 'The True Masters' WHERE `alliance_id` = 4183;
UPDATE `player_factionchange_quests` SET `comment` = 'Abandoned Hope' WHERE `alliance_id` = 4242;
UPDATE `player_factionchange_quests` SET `comment` = 'A Crumpled Up Note' WHERE `alliance_id` = 4264;
UPDATE `player_factionchange_quests` SET `comment` = 'A Shred of Hope' WHERE `alliance_id` = 4282;
UPDATE `player_factionchange_quests` SET `comment` = 'Jail Break!' WHERE `alliance_id` = 4322;
UPDATE `player_factionchange_quests` SET `comment` = 'Aquatic Form' WHERE `alliance_id` = 5061;
UPDATE `player_factionchange_quests` SET `comment` = 'A Call to Arms: The Plaguelands!' WHERE `alliance_id` = 5066;
UPDATE `player_factionchange_quests` SET `comment` = 'Clear the Way' WHERE `alliance_id` = 5092;
UPDATE `player_factionchange_quests` SET `comment` = 'All Along the Watchtowers' WHERE `alliance_id` = 5097;
UPDATE `player_factionchange_quests` SET `comment` = 'The Key to Scholomance' WHERE `alliance_id` = 5505;
UPDATE `player_factionchange_quests` SET `comment` = 'Scholomance' WHERE `alliance_id` = 5533;
UPDATE `player_factionchange_quests` SET `comment` = 'Skeletal Fragments' WHERE `alliance_id` = 5537;
UPDATE `player_factionchange_quests` SET `comment` = 'Mold Rhymes With...' WHERE `alliance_id` = 5538;
UPDATE `player_factionchange_quests` SET `comment` = 'Araj\'s Scarab' WHERE `alliance_id` = 5803;
UPDATE `player_factionchange_quests` SET `comment` = 'Moonglade' WHERE `alliance_id` = 5921;
UPDATE `player_factionchange_quests` SET `comment` = 'Heeding the Call' WHERE `alliance_id` = 5923;
UPDATE `player_factionchange_quests` SET `comment` = 'Heeding the Call' WHERE `alliance_id` = 5925;
UPDATE `player_factionchange_quests` SET `comment` = 'Great Bear Spirit' WHERE `alliance_id` = 5929;
UPDATE `player_factionchange_quests` SET `comment` = 'Back to Darnassus' WHERE `alliance_id` = 5931;
UPDATE `player_factionchange_quests` SET `comment` = 'Body and Heart' WHERE `alliance_id` = 6001;
UPDATE `player_factionchange_quests` SET `comment` = 'The Everlook Report' WHERE `alliance_id` = 6028;
UPDATE `player_factionchange_quests` SET `comment` = 'Lessons Anew' WHERE `alliance_id` = 6121;
UPDATE `player_factionchange_quests` SET `comment` = 'The Principal Source' WHERE `alliance_id` = 6122;
UPDATE `player_factionchange_quests` SET `comment` = 'Gathering the Cure' WHERE `alliance_id` = 6123;
UPDATE `player_factionchange_quests` SET `comment` = 'Curing the Sick' WHERE `alliance_id` = 6124;
UPDATE `player_factionchange_quests` SET `comment` = 'Power over Poison' WHERE `alliance_id` = 6125;
UPDATE `player_factionchange_quests` SET `comment` = 'Stormwind Rendezvous' WHERE `alliance_id` = 6402;
UPDATE `player_factionchange_quests` SET `comment` = 'The Great Masquerade' WHERE `alliance_id` = 6403;
UPDATE `player_factionchange_quests` SET `comment` = 'The Dragon\'s Eye' WHERE `alliance_id` = 6501;
UPDATE `player_factionchange_quests` SET `comment` = 'Drakefire Amulet' WHERE `alliance_id` = 6502;
UPDATE `player_factionchange_quests` SET `comment` = 'Blackhand\'s Command' WHERE `alliance_id` = 7761;
UPDATE `player_factionchange_quests` SET `comment` = 'Attunement to the Core' WHERE `alliance_id` = 7848;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8905;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8906;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8907;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8909;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8910;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8911;
UPDATE `player_factionchange_quests` SET `comment` = 'An Earnest Proposition' WHERE `alliance_id` = 8912;
UPDATE `player_factionchange_quests` SET `comment` = 'A Supernatural Device' WHERE `alliance_id` = 8922;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8926;
UPDATE `player_factionchange_quests` SET `comment` = 'In Search of Anthion' WHERE `alliance_id` = 8929;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8931;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8932;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8934;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8935;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8936;
UPDATE `player_factionchange_quests` SET `comment` = 'Just Compensation' WHERE `alliance_id` = 8937;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8951;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8952;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8953;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8955;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8956;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8958;
UPDATE `player_factionchange_quests` SET `comment` = 'Anthion\'s Parting Words' WHERE `alliance_id` = 8959;
UPDATE `player_factionchange_quests` SET `comment` = 'Back to the Beginning' WHERE `alliance_id` = 8997;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 8999;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9000;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9001;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9003;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9004;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9005;
UPDATE `player_factionchange_quests` SET `comment` = 'Saving the Best for Last' WHERE `alliance_id` = 9006;
UPDATE `player_factionchange_quests` SET `comment` = 'The Dread Citadel - Naxxramas' WHERE `alliance_id` = 9123;

UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - A Lesson to Learn') WHERE `horde_id` = 27;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Trial of the Lake') WHERE `horde_id` = 28;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Trial of the Sea Lion') WHERE `horde_id` = 30;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Aquatic Form') WHERE `horde_id` = 31;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Scholomance') WHERE `horde_id` = 838;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Skeletal Fragments') WHERE `horde_id` = 964;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Speak with Anastasia') WHERE `horde_id` = 1881;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Balnir Farmstead') WHERE `horde_id` = 1882;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Speak with Un\'thuwa') WHERE `horde_id` = 1883;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Speak with Deino') WHERE `horde_id` = 1943;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Waters of Xavian') WHERE `horde_id` = 1944;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Laughing Sisters') WHERE `horde_id` = 1945;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Nether-lace Garment') WHERE `horde_id` = 1946;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Journey to the Marsh') WHERE `horde_id` = 1947;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Hidden Secrets') WHERE `horde_id` = 1949;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Get the Scoop') WHERE `horde_id` = 1950;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Infernal Orb') WHERE `horde_id` = 1954;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Celestial Power') WHERE `horde_id` = 1958;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Report to Anastasia') WHERE `horde_id` = 1959;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Investigate the Alchemist Shop') WHERE `horde_id` = 1960;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Gathering Materials') WHERE `horde_id` = 1961;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Spellfire Robes') WHERE `horde_id` = 1962;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Glyphic Tablet') WHERE `horde_id` = 3086;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Verdant Note') WHERE `horde_id` = 3094;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Glyphic Scroll') WHERE `horde_id` = 3098;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Goblin Engineering') WHERE `horde_id` = 3526;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Goblin Engineering') WHERE `horde_id` = 3633;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Gnome Engineering') WHERE `horde_id` = 3635;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Gnome Engineering') WHERE `horde_id` = 3637;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Pledge of Secrecy') WHERE `horde_id` = 3642;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Show Your Work') WHERE `horde_id` = 3643;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Warlord\'s Command') WHERE `horde_id` = 4903;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Eitrigg\'s Wisdom') WHERE `horde_id` = 4941;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - For The Horde!') WHERE `horde_id` = 4974;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - A Call to Arms: The Plaguelands!') WHERE `horde_id` = 5093;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Scarlet Diversions') WHERE `horde_id` = 5096;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - All Along the Watchtowers') WHERE `horde_id` = 5098;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Key to Scholomance') WHERE `horde_id` = 5511;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Mold Rhymes With...') WHERE `horde_id` = 5514;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Araj\'s Scarab') WHERE `horde_id` = 5804;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Moonglade') WHERE `horde_id` = 5922;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Heeding the Call') WHERE `horde_id` = 5926;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Heeding the Call') WHERE `horde_id` = 5928;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Great Bear Spirit') WHERE `horde_id` = 5930;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Back to Thunder Bluff') WHERE `horde_id` = 5932;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Body and Heart') WHERE `horde_id` = 6002;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Everlook Report') WHERE `horde_id` = 6029;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Lessons Anew') WHERE `horde_id` = 6126;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Principal Source') WHERE `horde_id` = 6127;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Gathering the Cure') WHERE `horde_id` = 6128;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Curing the Sick') WHERE `horde_id` = 6129;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Power over Poison') WHERE `horde_id` = 6130;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - What the Wind Carries') WHERE `horde_id` = 6566;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Champion of the Horde') WHERE `horde_id` = 6567;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Test of Skulls, Scryer') WHERE `horde_id` = 6582;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Test of Skulls, Somnus') WHERE `horde_id` = 6583;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Test of Skulls, Axtroz') WHERE `horde_id` = 6585;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Ascension...') WHERE `horde_id` = 6601;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Blood of the Black Dragon Champion') WHERE `horde_id` = 6602;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Attunement to the Core') WHERE `horde_id` = 7487;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Blackhand\'s Command') WHERE `horde_id` = 7761;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8913;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8914;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8915;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8916;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8917;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8919;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - An Earnest Proposition') WHERE `horde_id` = 8920;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - A Supernatural Device') WHERE `horde_id` = 8923;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8927;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - In Search of Anthion') WHERE `horde_id` = 8930;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8938;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8939;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8940;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8941;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8943;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Just Compensation') WHERE `horde_id` = 8944;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Back to the Beginning') WHERE `horde_id` = 8998;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9007;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9008;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9009;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9010;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9012;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9013;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Saving the Best for Last') WHERE `horde_id` = 9014;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9016;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9017;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9018;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9019;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9020;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9021;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - Anthion\'s Parting Words') WHERE `horde_id` = 9022;
UPDATE `player_factionchange_quests` SET `comment` = CONCAT(comment, ' - The Dread Citadel - Naxxramas') WHERE `horde_id` = 9123;
