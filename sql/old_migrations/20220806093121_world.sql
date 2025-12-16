-- Delete deprecated artcit fox:
delete from creature_template where entry = 80253;
delete from creature_loot_template where entry = 80253;

-- Fixed shop amani bears:
update mount_spells set spellid = 46525 where itemid = 81153; -- Purple
update mount_spells set spellid = 46524 where itemid = 81154; -- Black
update mount_spells set spellid = 46526 where itemid = 81155; -- Red

-- Fixed female trolls custom character skins:
update custom_character_skins set skin_female = 13 where token_id = 51011; 
update custom_character_skins set skin_female = 19 where token_id = 50210; 
update custom_character_skins set skin_female = 14 where token_id = 50225; 

-- 2022-08-06 12:58:08 ERROR:Script not found: npc_foreman_tanoth.
update creature_template set script_name = '' where script_name = 'npc_foreman_tanoth';

-- Resting area for Karfang Hold:
replace into areatrigger_tavern values (6, 'Burning Steppes - Karfang Hold');
replace into areatrigger_template values (6, 0, -7471.82, -2893.55, 230.06, 30, 0, 0, 0, 0); 