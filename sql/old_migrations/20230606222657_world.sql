-- Remove faction requirements from raid loot since its a cross faction server. Only causes issues.
UPDATE `creature_loot_template` SET `condition_id`=0 WHERE `item` IN (16838, 16840, 16857, 16858);
UPDATE `reference_loot_template` SET `condition_id`=0 WHERE `condition_id` IN (2, 3);
