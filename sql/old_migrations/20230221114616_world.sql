-- Allow Perfume and Cologne to stack. (NOT BLIZZLIKE)
DELETE FROM `spell_group` WHERE `group_id`=1079;
DELETE FROM `spell_group_stack_rules` WHERE `group_id`=1079;
