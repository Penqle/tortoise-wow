-- https://turtle-wow.org/bug-report?id=6678
UPDATE `item_template` SET `sheath` = 3 WHERE `entry` = 21392;

-- https://turtle-wow.org/bug-report?id=6588
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 454;

-- https://turtle-wow.org/bug-report?id=6673
UPDATE `quest_template` SET `Objectives` = 'Find four Echoes of Medivh. They might be found in places of great significance for the mage. Then return to Dolvan with the key.' WHERE `entry` = 40826;

-- https://turtle-wow.org/bug-report?id=6462
UPDATE `item_template` SET `class` = 4, `disenchant_id` = 10 WHERE `entry` = 61530;

-- https://turtle-wow.org/bug-report?id=6113
UPDATE `custom_character_skins` SET `skin_male` = 13 WHERE `token_id` = 61106;