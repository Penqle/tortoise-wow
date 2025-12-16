-- Remove Ironbark Protectors with high guids.
DELETE FROM `creature` WHERE `guid` IN (319449, 319467, 319469, 319471, 319473, 319475);
DELETE FROM `creature_movement` WHERE `id` IN (319449, 319467, 319469, 319471, 319473, 319475);
