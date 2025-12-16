-- Fix wrong disenchant id for several ilvl 56 greens.
UPDATE `item_template` SET `disenchant_id`=10 WHERE `entry` IN (83241, 83242, 83243, 83244, 81062, 81064, 61529)
