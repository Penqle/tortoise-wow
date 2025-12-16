-- NPCs "Healing Ward IV" no longer drop loot https://turtle-wow.org/bug-report?id=6746
delete from creature_loot_template where entry = 3844;
-- NPC "Tamaala Bloodhoof" no longer appears as a male tauren. -- https://turtle-wow.org/bug-report?id=6776
update creature_template set display_id1 = 2121 where entry = 65137;

-- Fix Disenchant ID of Augerer pieces (Tailoring)
update item_template set disenchant_id = 6 where entry IN (83286, 83290, 83291);