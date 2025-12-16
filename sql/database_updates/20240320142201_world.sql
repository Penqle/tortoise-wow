-- NPC "Mad Servant" is immune to slow and roots.
update creature_template set mechanic_immune_mask = 4160 where entry in (15111);