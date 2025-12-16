-- Make the following NPC IDs immune to slow and roots.
update creature_template set mechanic_immune_mask = 1053511571 where entry = 11352;
update creature_template set mechanic_immune_mask = 608834276 where entry = 11356;
update creature_template set mechanic_immune_mask = 4160 where entry in (11350,11353,11351,11340,11830,11339,11338,11831,11372,11370,11373,14821,14880,14532,11360,15068,11365,15101,15067,11361);

-- Fix Arcane Strengthened Band
UPDATE item_template SET Item_Level = 65, Required_Level = 0 WHERE entry = 60465;
