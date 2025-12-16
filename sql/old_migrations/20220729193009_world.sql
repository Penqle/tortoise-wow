-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1720
update quest_template set zoneorsort = 14 where entry = 40513;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1719
delete from creature_template where entry in (50500, 50501, 50502, 50503, 50504, 50505);
delete from creature where id in (50500, 50501, 50502, 50503, 50504, 50505);
delete from npc_trainer where entry in (50500, 50501, 50502, 50503, 50504, 50505);
delete from npc_trainer where entry in (198, 375, 459, 460, 837, 895, 911, 912, 915, 916, 925, 926, 944, 2119, 2122, 2123, 2124, 2126, 6376, 50500, 50501, 50502, 50503, 50504, 50505, 80220, 80221, 80401, 60483, 60516) and reqlevel > 10;

-- Maps in Sparkwater are fucked, server cannot calculate distance from a player to the trigger, here's hackfix:
update areatrigger_template set radius = 30 where id = 210;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1730
update quest_template set zoneorsort = 5098 where entry = 40458;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1706
update quest_template set prevquestid = 0 where entry = 364;
update quest_template set nextquestinchain = 0 where entry = 363;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1618
update creature_template set flags_extra = 2 where entry in (91980, 91981);
