
SET @quest =  80121;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] This Is In My Contract' WHERE `entry` = @quest;
DELETE FROM `creature_questrelation` WHERE `quest` = @quest;
DELETE FROM `creature_involvedrelation` WHERE `quest` = @quest;


REPLACE INTO `game_weather` (`zone`, `spring_rain_chance`, `spring_snow_chance`, `spring_storm_chance`, `summer_rain_chance`, `summer_snow_chance`, `summer_storm_chance`, `fall_rain_chance`, `fall_snow_chance`, `fall_storm_chance`, `winter_rain_chance`, `winter_snow_chance`, `winter_storm_chance`, `comment`) VALUES 
(5536, 0, 0, 40, 0, 0, 40, 0, 0, 40, 0, 0, 40, 'Blackstone Island');