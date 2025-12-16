-- Make Staff of Eldara indestructable.
UPDATE `item_template` SET `flags` = (`flags` | 32) WHERE `entry`=60372;
