DELETE FROM `conditions` WHERE `condition_entry` in (1301,1302,4866);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('1301', '9', '4866', '0'),
('1302', '1', '16468', '1'),
('4866', '-1', '1302', '1301');