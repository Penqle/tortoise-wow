DELETE FROM `game_weather` WHERE `zone` IN (5024, 5130, 5131);
UPDATE `game_weather` SET `fall_snow_chance` = 100 WHERE `zone` = 5131;
-- Winter Veil Vale
REPLACE INTO `game_weather` (`zone`, `copy_weather_from`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5130, NULL, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0);
REPLACE INTO `game_weather` (`zone`, `copy_weather_from`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`) VALUES (5024, NULL, 0, 100, 0, 0, 100, 0, 0, 100, 0, 0, 100, 0);

-- Figure out why Winter Veil Vale doesn't return zone ID:
UPDATE `map_template` SET `linked_zone` = 5130 WHERE `entry` = 813;

-- WVV GY:
REPLACE INTO `custom_graveyards` VALUES (50, 'Winter Veil Vale', 813, 5130, 5130, 60, 813, -2629.27, 1041.82, 74.256, 2.7, 813, -2629.27, 1041.82, 74.256, 2.7);