-- 192: Target GameObject's GO State Is Alternative
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (192, 55, 2, 0, 0, 0, 0);
-- 15958: (122: Target GameObject Is Spawned) And (192: Target GameObject's GO State Is Alternative)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (15958, -1, 122, 192, 0, 0, 0);

-- Assign condition to Collect Rookery Egg to require egg to be frozen.
UPDATE `spell_script_target` SET `conditionId`=15958 WHERE `entry`=15958 && `type`=0 && `targetEntry`=175124;
