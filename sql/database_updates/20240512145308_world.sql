-- Require player to sit for quest Learn Of My Past gossip option.
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (7100, 60, 1, 0, 0, 0, 0);
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (41321, -1, 7100, 41320, 0, 0, 0);
UPDATE `gossip_menu_option` SET `condition_id`=41321 WHERE `menu_id`=60077 AND `id`=0;


