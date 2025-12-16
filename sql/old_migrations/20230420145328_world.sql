
-- Buff Summon Items to Trinket
update item_template set quality = 3, inventory_type = 12, class = 4, disenchant_id = 43, spellcharges_1 = 0, spellcooldown_1 = 1800000 where entry = 3456; -- Dog Whistle
update item_template set inventory_type = 12, class = 4, disenchant_id = 4, spellcharges_1 = 0, spellcooldown_1 = 1800000 where entry = 1187; -- Spiked Collar
update item_template set inventory_type = 12, class = 4, disenchant_id = 10, spellcharges_1 = 0, spellcooldown_1 = 1800000 where entry = 15778; -- Mechanical Yeti
update item_template set inventory_type = 12, class = 4, disenchant_id = 10, spellcharges_1 = 0, spellcooldown_1 = 3600000 where entry = 21325; -- Mechanical Greench
update item_template set quality = 2, inventory_type = 12, class = 4, disenchant_id = 2, item_level = 25, required_level = 20, spellcharges_1 = 0, spellcooldown_1 = 3600000, sell_price = 3000, buy_price = 12000 where entry = 5332; -- Glowing Cat Figurine

UPDATE creature_template SET dmg_min = 11, dmg_max = 13, health_min = 477, health_max = 511 WHERE entry IN (6867, 10656, 15721, 12257, 3919); -- modify damage and hp of now trinket-summoned guardians


