DELETE FROM spell_template WHERE entry = 0;

update item_template set display_id = 40719 where entry = 41187; -- reefscale pantaloons
update item_template set sheath = 3 where entry = 51818; -- Agal's Ambusher;

DELETE FROM `game_weather` WHERE `zone` IN (2040, 5225);

REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `comment`) VALUES (2040, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 'Thalassin Highlands');
REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `comment`) VALUES (5225, 5, 0, 0, 5, 0, 0, 5, 0, 0, 5, 0, 0, 'Thalassin Highlands');
