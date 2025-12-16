-- remove drop Mageweave cloth (entry 4338) from npc Greater Vilewing Bat (61401)

DELETE FROM `creature_loot_template` WHERE `entry` = 61401 AND `item` = 4338 AND `groupid` = 0;

-- List of Default Respawn Timers per Game Object
-- Ores/Deposits:
-- Copper (1731): 900

SET @object_id = 1731;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Tin (1732): 900

SET @object_id = 1732;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Silver (1733): 900

SET @object_id = 1733;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Gold (1734): 1800

SET @object_id = 1734;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Iron (1735): 1800

SET @object_id = 1735;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Mithril (2040): 1800

SET @object_id = 2040;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Truesilver (2047): 2700

SET @object_id = 2047;
SET @respawn_timer = 2800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Small Thorium (324): 2700

SET @object_id = 324;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Rich Thorium (175404): 2700

SET @object_id = 175404;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Dark Iron (165658): 2700

SET @object_id = 165658;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Herbs:
-- Earthroot (1619): 900

SET @object_id = 1619;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Silverleaf (1917): 900

SET @object_id = 1917;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Peacebloom (1918): 900

SET @object_id = 1918;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Mageroyal (1620): 900

SET @object_id = 1620;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Briarthorn (1621): 900

SET @object_id = 1621;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Stranglekelp (2045): 900

SET @object_id = 2045;
SET @respawn_timer = 900;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Bruiseweeb (1622): 1800

SET @object_id = 1622;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Wild Steelbloom (1623): 1800

SET @object_id = 1623;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Kingsblood (1624): 1800

SET @object_id = 1624;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Grave Moss (1628): 1800

SET @object_id = 1628;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Liferoot (2041): 1800

SET @object_id = 2041;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Fadeleaf (2042): 1800

SET @object_id = 2042;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Goldthorn (2046): 1800

SET @object_id = 2046;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Khadgar's Whisker (2043): 1800

SET @object_id = 2043;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Wintersbite (2044): 1800

SET @object_id = 2044;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Firebloom (2866): 2700

SET @object_id = 2866;
SET @respawn_timer = 1800;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Purple Lotus (142140): 2700

SET @object_id = 142140;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Arthas' Tears (142141): 2700

SET @object_id = 142141;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;


-- Sungrass (142142): 2700

SET @object_id = 142142;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Blindweed (142143): 2700

SET @object_id = 142143;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Ghost Mushroom (142144): 2700

SET @object_id = 142144;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Gromsblood (142145): 2700

SET @object_id = 142145;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Golden Sansam (176583): 2700


SET @object_id = 176583;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Dreamfoil (176584): 2700

SET @object_id = 176584;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Mountain Silversage (176586): 2700


SET @object_id = 176586;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Plaguebloom (176587): 2700


SET @object_id = 176587;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Icecap (176588): 2700

SET @object_id = 176588;
SET @respawn_timer = 2700;

UPDATE gameobject SET spawntimesecsmin = @respawn_timer, spawntimesecsmax = @respawn_timer WHERE guid > 4011192 AND id = @object_id AND spawntimesecsmin < 300;

-- Chests: Respawn times: 7200 in normal outdoor locations, 3600 in elite populated locations.
-- Only Horde can open Alliance Chests and vice versa.

-- Battered Chest (Starting Zones) (2843)
-- Battered Chest (1-5) (106318)
-- Battered Chest  (5-10) (106319)
-- Battered Chest (10-15) (2849)
-- Alliance Chest (10-15) (111095)
-- Solid Chest (15-20) (2850): 3600-7200
-- Alliance Chest (15-20) (3715)
-- Solid Chest (20-25) (2852)
-- Alliance Chest (20-25) (4096)
-- Solid Chest (25-30) (2855)
-- Horde Chest (25-30) (105578)
-- Alliance Chest (Level 25-30) (105579)
-- Solid Chest (30-35) (2857)
-- Alliance Chest (Level 30-35) (105581)
-- Solid Chest (35-40) (4149)
-- Solid Chest (40-45) (153451)
-- Solid Chest (45-50) (153453)
-- Solid Chest (45-55 + Rares) (153454)
-- Large Solid Chest (50-55) (153464)

-- If you want any newly placed resource node to have the right respawn timers, place the following text in ⁠📝patch-todo:
-- GO Entry <Object ID> set to timer <Listed Object Default Respawn Timer> IF below 300 seconds.
