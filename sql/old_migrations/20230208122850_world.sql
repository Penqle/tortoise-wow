-- Add more stats to Alchemists Stone.
UPDATE item_template SET
stat_value1 = 12,stat_type1 = 5,
stat_value2 = 10,stat_type2 = 7,
stat_value3 = 10,stat_type3 = 6,
spellid_2 = 21631,spelltrigger_2 = 1,
spellid_3 = 21604,spelltrigger_3 = 1
WHERE entry = 13503;
