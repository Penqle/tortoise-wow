-- Fix Zandalar Signet of Tenacity not being usable.
UPDATE `item_template` SET `class`=12, `subclass`=0, `flags`=64, `item_level`=60 WHERE `entry`=65033;
