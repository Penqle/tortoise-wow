-- Missing Pet Ability on Mob 61218.
replace INTO pet_spell_data (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61218, 24844, 0, 0, 0);
update creature_template set pet_spell_list_id = 61218 where entry = 61218;

-- Hightusk Boar,61975 display ID 20504, faction 14, level 33-34, beast, scale 1, damage is 56-70, copy stats, drops and skinning tables from NPC ID 7333.
replace INTO creature_template VALUES
(61975, 20504, 0, 0, 0, 0, 'Hightusk Boar', NULL, 0, 33, 34, 1221, 1279, 0, 0, 1340, 14, 0, 1.15, 1.14286, 1, 18, 5, 0, 0, 1, 56, 70, 0, 134, 1, 2000, 2000, 1, 0, 0, 5, 0, 0, 0, 0, 49.9664, 68.7038, 100, 1, 1, 61975, 0, 7333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Creature's loot table: Hightusk Boar.
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 1529, 0.1525, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 1705, 0.0469, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 1725, 0.0587, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 2295, 25.8477, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 2677, 44.5618, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3172, 51.2613, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3403, 36.1023, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3611, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3612, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3831, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3832, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3864, 0.0587, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3866, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3867, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3869, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3870, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3872, 0.04, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 3874, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4296, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4297, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4299, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4300, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4352, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4353, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4414, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4417, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 4634, 0.2229, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 5543, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 5774, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 5974, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 6045, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 6454, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7084, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7086, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7090, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7091, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7360, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7449, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7450, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 7453, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 10424, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 10601, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 11164, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 11165, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 11167, 0.02, 0, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30031, 0.5, 0, -30031, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30032, 0.01, 0, -30032, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30033, 0.5, 0, -30033, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30054, 0.5, 0, -30054, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30056, 0.5, 0, -30056, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30057, 0.01, 0, -30057, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30058, 0.5, 0, -30058, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 30059, 0.01, 0, -30059, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 56029, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70104, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70108, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70113, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70114, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70116, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70119, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70120, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70145, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70146, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70147, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70149, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70151, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70154, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70159, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70187, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70190, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70191, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70194, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70195, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70196, 0.02, 5, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61975, 70199, 0.02, 5, 1, 1, 0);

-- Casts Spell ID 6268 first 0.5 seconds into combat and does not repeat. Tamable by hunters and becomes a Boar hunter pet when tamed, knows Spell ID 26179 when tamed.

replace INTO pet_spell_data (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61975, 26179, 0, 0, 0);
update creature_template set pet_spell_list_id = 61975 where entry = 61975;

-- Hightusk Boar
set @creature_entry = 61975;
set @description = ': Hightusk Boar';
set @spell_list_id = 180310;

set @spellid_1 = 6268; -- Immolate
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0.5;
set @delayinitialmax_1 = 0.5;
set @delayrepeatmin_1 = 300;
set @delayrepeatmax_1 = 300;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0;
set @delayrepeatmax_2 = 0;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);