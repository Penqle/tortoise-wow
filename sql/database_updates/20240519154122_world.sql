-- Creature entry 61942 change display ID to 6760, set scale to 1.5.
update creature_template set display_id1 = 6760, scale = 1.5 where entry = 61942;
-- Rename NPC ID 61943 to "Manascale Suppressor".
update creature_template set name = 'Manascale Suppressor' where entry = 61943;
-- Pain.
update spell_template SET description = '' WHERE entry = 51088; -- Blue Owl Aura
update spell_template SET description = 'Your melee attacks have a 20% chance to strike an additional nearby opponent. This effect is disabled while shapeshifted.' WHERE entry = 51068; -- Hunter's Sweep
update spell_template SET description = 'Your Lightning Bolt has a 10% chance to shock your enemy for $51147s1 Nature damage. This effect generates no threat.' WHERE entry = 51148; -- Totem of Static Charge