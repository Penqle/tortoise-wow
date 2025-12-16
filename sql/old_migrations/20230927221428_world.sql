-- Add field to store target item id of wrapping paper.
ALTER TABLE `item_template`
	ADD COLUMN `wrapped_gift` MEDIUMINT UNSIGNED NOT NULL DEFAULT '0' AFTER `max_money_loot`;

-- Assign gift item ids to wrapping paper.
UPDATE `item_template` SET `wrapped_gift`=5015 WHERE `entry`=5014;
UPDATE `item_template` SET `wrapped_gift`=5043 WHERE `entry`=5042;
UPDATE `item_template` SET `wrapped_gift`=5045 WHERE `entry`=5047;
UPDATE `item_template` SET `wrapped_gift`=5044 WHERE `entry`=5048;
UPDATE `item_template` SET `wrapped_gift`=5046 WHERE `entry`=5049;
UPDATE `item_template` SET `wrapped_gift`=17302 WHERE `entry`=17303;
UPDATE `item_template` SET `wrapped_gift`=17305 WHERE `entry`=17304;
UPDATE `item_template` SET `wrapped_gift`=17308 WHERE `entry`=17307;
UPDATE `item_template` SET `wrapped_gift`=21831 WHERE `entry`=21830;
