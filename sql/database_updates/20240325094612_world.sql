-- Goblin Hunter Pet quest breadcrumb rewrite.
update quest_template set details = 'Hello, young hunter. You look to me like you are skilled enough to handle a beast and train it as your companion.$B$BWe hunters tend to have a pet by our side, though I hear your kind have some... unorthodox methods. Nonetheless, you should speak to Mayten Boomrifle on Blackstone Island if you wish to learn how to tame a pet of your own. I heard a flying machine at Sparkwater Port can bring you there.', Objectives = 'Speak with Mayten Boomrifle on Blackstone Island.' where entry = 80330;
-- The quest should also now end at Mayten Boomrifle, 80105.
delete from creature_involvedrelation where quest = 80330 and id = 80903;
replace INTO `creature_involvedrelation` (`id`, `quest`) VALUES (80105, 80330);
-- Item "Ocean's Wrath" (55319), change to finger slot item.
update item_template set inventory_type = 11 where entry = 55319;