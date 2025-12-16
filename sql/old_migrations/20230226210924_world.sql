update `quest_template` set `RequiredRaces` = 589 where `entry` between 40593 and 40603;

update item_template set stat_value1 = 1, stat_type1 = 4, spellid_1 = 0 where entry = 51810; -- Gnoll Skull Hammer

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36402, 1005, 17468, 0, 0, 1, 0, 0, 0, 0, 0);