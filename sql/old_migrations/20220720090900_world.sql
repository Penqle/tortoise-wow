-- Thalassian language for High Elves:
replace into playercreateinfo_spell values (10, 8, 813, 'Thalassian Language');
replace into playercreateinfo_spell values (10, 5, 813, 'Thalassian Language');
replace into playercreateinfo_spell values (10, 4, 813, 'Thalassian Language');
replace into playercreateinfo_spell values (10, 3, 813, 'Thalassian Language');
replace into playercreateinfo_spell values (10, 2, 813, 'Thalassian Language');
replace into playercreateinfo_spell values (10, 1, 813, 'Thalassian Language');

-- Terry Pallin

update creature_template set npc_flags = 5 where entry = 1650;
