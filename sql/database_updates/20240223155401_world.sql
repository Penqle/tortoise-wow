-- Remove OOX-22/FE Distress Beacon from Icepoint Whiteclaw.
DELETE FROM `creature_loot_template` WHERE `item`=8705 && `entry`=60545;
-- Remove Ironfur Liver from Icepoint Whiteclaw.
DELETE FROM `creature_loot_template` WHERE `item`=6258 && `entry`=60545;
