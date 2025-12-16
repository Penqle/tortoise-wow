update spell_template SET EffectBasePoints2 = 2, EffectBasePoints3 = 4 WHERE entry = 8815; -- Haste 2
update spell_template SET EffectBasePoints2 = 3, EffectBasePoints3 = 6 WHERE entry = 13680; -- Haste 3
update spell_template SET EffectBasePoints2 = 4, EffectBasePoints3 = 8 WHERE entry = 13681; -- Haste 4
update spell_template SET EffectBasePoints2 = 5, EffectBasePoints3 = 10 WHERE entry = 13682; -- Haste 5
update spell_template SET EffectBasePoints2 = 10, EffectBasePoints3 = 20 WHERE entry = 18065; -- Haste 10

REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36468, 333, 57518, 0, 0, 1, 0, 0, 360, 320, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36469, 164, 57181, 0, 0, 1, 0, 0, 350, 325, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36470, 164, 57178, 0, 0, 1, 0, 0, 340, 315, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36471, 164, 57175, 0, 0, 1, 0, 0, 335, 310, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36472, 164, 57172, 0, 0, 1, 0, 0, 295, 270, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36473, 164, 57169, 0, 0, 1, 0, 0, 235, 215, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36474, 164, 57166, 0, 0, 1, 0, 0, 195, 170, 0);
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`, `race_mask`, `class_mask`, `req_skill_value`, `superseded_by_spell`, `learn_on_get_skill`, `max_value`, `min_value`, `req_train_points`) VALUES (36475, 164, 57163, 0, 0, 1, 0, 0, 160, 135, 0);