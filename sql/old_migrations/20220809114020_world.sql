-- Misc. DB fixes from server-todo:

update quest_template set ObjectiveText2 = 'Invite Baron Revilgaz' where entry = 80382;

update item_template set quality = 3 where entry in (51801, 60098);

-- Query all Turtle quests in DB with RewMoneyMaxLevel = 0 and apply a blanket RewMoneyMaxLevel = RewEXP * 6:

update quest_template set RewMoneyMaxLevel = RewXP * 0.6 where entry > 30000 and RewMoneyMaxLevel = 0;
update quest_template set RewMoneyMaxLevel = 6400 where entry > 30000 and minlevel = 60;

update creature_template set type = 2 where entry = 65125;
update creature_template set level_min = 61, level_max = 61 where entry = 65103;

update item_template set sell_price = 15000, buy_price = 15000 where entry = 80305;

update creature_template set scale = 0.3 where entry = 51585;

update quest_template set reqitemcount1 = 7 where entry = 60041;

update item_template set flags = 0 where entry = 60613;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1860

update quest_template set rewrepfaction1 = 76, rewrepvalue1 = 300 where entry = 40504;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1858

update creature_template set display_id1 = 1065 where entry = 1488;
update creature_template set display_id1 = 317 where entry = 1490;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1837

update creature_template set loot_id = 11911 where entry in (91980, 91772);