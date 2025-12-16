-- Change quality of Ring of Darlthos and Signet of Darlthos to Uncommon.
UPDATE `item_template` SET `quality`=2 WHERE `entry` IN (60173, 60175);
