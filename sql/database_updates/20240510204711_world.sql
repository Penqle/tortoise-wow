-- Set the respawn timer of the following creature IDs to 5 hours: 4540, 4298, 4295, 4292.
update creature set spawntimesecsmin = 18000, spawntimesecsmax = 18000 where ID in (4540, 4298, 4295, 4292);
-- Set the respawn timer of the following creature IDs to 7 days: 61982, 61983.
update creature set spawntimesecsmin = 604800, spawntimesecsmax = 604800 where ID in (61982, 61983);
-- Change Duke Dreadmoore's health to 36640 (This should make it so he has his old health with the 20% health script.)
update creature_template set health_min = 36640, health_max = 36640 where entry = 61972;