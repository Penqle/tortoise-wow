-- Remove Copper Vein spawns from Desolace.
DELETE FROM `gameobject` WHERE `guid` IN (4737, 5047, 5416, 20647, 20646, 20645, 34159);
DELETE FROM `pool_gameobject` WHERE `guid` IN (4737, 5047, 5416, 20647, 20646, 20645, 34159);

-- Remove Tin Vein spawns from Desolace.
DELETE FROM `gameobject` WHERE `guid` IN (5500, 5522, 5571, 5600, 5602, 5614, 5631, 5654, 20731, 20730, 20729, 20728, 20727, 20726, 20725);
DELETE FROM `pool_gameobject` WHERE `guid` IN (5500, 5522, 5571, 5600, 5602, 5614, 5631, 5654, 20731, 20730, 20729, 20728, 20727, 20726, 20725);

-- Remove Silver Vein spawns from Desolace.
DELETE FROM `gameobject` WHERE `guid` IN (20732, 20737, 20741);
DELETE FROM `pool_gameobject` WHERE `guid` IN (20732, 20737, 20741);
