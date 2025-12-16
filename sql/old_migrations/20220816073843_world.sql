-- Community Bucket Hat Item
replace into item_template values
('84037', '4', '2', 'Undercity Bucket Hat', 'Favourite chew toy of a Lordaeron hunter\'s blind companion.', '10111', '2', '0', '1', '0', '3305', '1', '-1', '-1', '24',
'20', '356', '120', '0', '0', '0', '0', '0', '0', '1', '0', '3', '8', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '0', '0', '0',
'0', '0', '0', '0', '1', '0', '0', '-1', '0', '-1', '7823', '1', '0', '0', '-1', '0', '-1', '0', '0',
'0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
'-1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
'0', '1', NULL);

replace into fishing_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) values 
(1497, 6309, 0.1882, 1, 1, 1, 0),
(1497, 6308, 15.1893, 1, 1, 1, 0),
(1497, 6301, 0.5739, 1, 1, 1, 0),
(1497, 6299, 14.7388, 1, 1, 1, 0),
(1497, 6297, 15.0073, 1, 1, 1, 0),
(1497, 6291, 11.9867, 1, 1, 1, 0),
(1497, 6289, 0.01, 1, 1, 1, 0),
(1497, 3385, 0.1, 1, 1, 1, 0),
(1497, 858,  0.1, 1, 1, 1, 0),
(1497, 6310, 0.1, 1, 1, 1, 0),
(1497, 6645, 0.03, 1, 1, 1, 0),
(1497, 6559, 0.01, 1, 1, 1, 0),
(1497, 8350, 0.01, 1, 1, 1, 0),
(1497, 3184, 0.01, 1, 1, 1, 0),
(1497, 2976, 0.01, 1, 1, 1, 0),
(1497, 6512, 0.01, 1, 1, 1, 0),
(1497, 9763, 0.01, 1, 1, 1, 0),
(1497, 5212, 0.01, 1, 1, 1, 0),
(1497, 2406, 0.01, 1, 1, 1, 0),
(1497, 84037, 0.5, 1, 1, 1, 0),
(1497, 9785, 0.01, 1, 1, 1, 0);

-- Fixed items w/o sell value:

update item_template set buy_price = 2156, sell_price = 431 where entry in (60522, 60523, 60524);

update item_template set spellid_1 = 48036 where entry = 60547;

-- Change level of quest 'Aggresive Wildlife' to 20
update quest_template set questlevel = 20 where entry = 40120;

-- Boots > Chest
update item_template set inventory_type = 5 where entry = 65023;

-- Sunnyglade bosses nerf:
update creature_template set health_min = 10000, health_max = 10000 where entry in (93005, 93000);