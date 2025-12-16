-- Prevent Scroll of Return abuse.
UPDATE `item_template` SET `spellcooldown_1`=604800000 WHERE `entry`=46601;

