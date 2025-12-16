-- Allow specifying time offset per map.
ALTER TABLE `map_template`
	ADD COLUMN `time_offset` INT(10) NOT NULL DEFAULT '0' COMMENT 'seconds' AFTER `reset_delay`;
  
-- Assign 12 hours time offset to Kalimdor.
UPDATE `map_template` SET `time_offset`=43200 WHERE `entry`=1;

-- 81: Current Time Is Between 06:00 And 18:00
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (81, 53, 6, 0, 18, 0, 0);
-- 82: Current Time Is Between 00:00 And 06:00
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (82, 53, 0, 0, 6, 0, 0);
-- 152: Current Time Is Between 18:00 And 24:00
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (152, 53, 18, 0, 24, 0, 0);
-- 153: (82: Current Time Is Between 00:00 And 06:00) Or (152: Current Time Is Between 18:00 And 24:00)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (153, -2, 82, 152, 0, 0, 0);

-- Change condition for Raw Nightfin Snapper to drop.
UPDATE `fishing_loot_template` SET `condition_id`=153 WHERE `condition_id`=82;
