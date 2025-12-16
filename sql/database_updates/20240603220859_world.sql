-- work work
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36586, 261, 46303, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36587, 261, 51154, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36588, 261, 51155, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36589, 261, 51157, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36590, 261, 46307, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36591, 1010, 46296, 0, 0, 1, 0, 0, 0, 0, 5);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36592, 1009, 46242, 0, 0, 1, 0, 2, 0, 0, 0);
REPLACE INTO skill_line_ability (id, skill_id, spell_id, race_mask, class_mask, req_skill_value, superseded_by_spell, learn_on_get_skill, max_value, min_value, req_train_points) VALUES (36593, 1010, 46296, 0, 0, 1, 0, 2, 0, 0, 0);

-- handling supercede for thunderstomp rank 4 and proper skillines
update skill_line_ability set req_train_points = 13 where id = 13401; -- Thunderstomp (Rank 1)
update skill_line_ability set req_train_points = 17 where id = 13411; -- Thunderstomp (Rank 2)
update skill_line_ability set req_train_points = 21 where id = 13412; -- Thunderstomp (Rank 3)
update skill_line_ability set req_train_points = 25 where id = 36565; -- Thunderstomp (Rank 4) - 1009 for serpent, 1010 for fox
update skill_line_ability set skill_id = 1009 where id = 36562; -- Poison Spit (Rank 1)
update skill_line_ability set skill_id = 1009 where id = 36563; -- Poison Spit (Rank 2)
update skill_line_ability set skill_id = 1009 where id = 36564; -- Poison Spit (Rank 3)
-- new hunter pet spell fixes
update spell_template SET recoveryTime = 60000, powerType = 2, manaCost = 10, durationIndex = 29, baseLevel = 10, spellLevel = 10, category = 0, description = 'Increases chance to dodge by 30% for $d.', auraDescription = 'Increases dodge chance by 30%.' WHERE entry = 46296; -- Grace (Fox Ability)
update spell_template SET maxLevel = 0 WHERE entry = 46271; -- Poison Spit (Rank 1)
update spell_template SET maxLevel = 0 WHERE entry = 46272; -- Poison Spit (Rank 2)
update spell_template SET maxLevel = 0 WHERE entry = 46273; -- Poison Spit (Rank 3)

update spell_template SET nameSubtext = 'Rank 1', description = 'Spits poison at an enemy, dealing $46271o1 Nature damage over $46271d.' WHERE entry = 46303; -- Poison Spit (Rank 1) (Learn Spell)
update spell_template SET nameSubtext = 'Rank 2', description = 'Spits poison at an enemy, dealing $46272o1 Nature damage over $46272d.'  WHERE entry = 51154; -- Poison Spit (Rank 2) (Learn Spell)
update spell_template SET nameSubtext = 'Rank 3', description = 'Spits poison at an enemy, dealing $46273o1 Nature damage over $46273d.'  WHERE entry = 51155; -- Poison Spit (Rank 3) (Learn Spell)
update spell_template SET nameSubtext = 'Rank 1', description = 'Increases chance to dodge by 30% for $46296d.' WHERE entry = 46307; -- Grace (Rank 1) (Learn Spell)



