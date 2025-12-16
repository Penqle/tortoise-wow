-- Ovan Gradal <Apprentice of Rolfen>, display ID 1289 , faction 35, level 48 elite, undead, scale 1, weapon: 5956, vendor flags, repair flags (This vendor should sell weak flux and strong flux, and should repair armor).
REPLACE INTO creature_template VALUES
(62058, 1289, 0, 0, 0, 0, 'Ovan Gradal', 'Apprentice of Rolfen', 0, 48, 48, 4179, 4179, 0, 0, 2432, 35, 16388, 1, 1.14286, 1, 18, 5, 0, 1, 1, 273, 338, 0, 226, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 54.6056, 75.0827, 100, 6, 0, 62058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20568; set @weapon_1 = 5956; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 62058;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Vendor list: Ovan Gradal.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (62058, 0, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (62058, 0, 3466, 0, 0, 0, 0);

-- Creature Dragonmaw Pathfinder change display ID to 4970.
update creature_template set display_id1 = 4970 where entry = 62050;