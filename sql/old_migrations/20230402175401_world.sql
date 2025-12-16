-- 1383: Target Has Done Quest 5307
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1383, 8, 5307, 0, 0, 0, 0);
-- 1384: (1365: (1359: (1352: Target Knows Spell 9787) And (1358: (435: Target's Level Is Equal Or Greater Than 50) And (1351: Target Has 250 Points In Skill 164))) And (1364: (1362: Target Knows Spell 17039) And (1363: (1360: Target Knows Spell 17040) And (1361: Target Knows Spell 17041)))) And (1383: Target Has Done Quest 5307)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1384, -1, 1365, 1383, 0, 0, 0);
UPDATE `gossip_menu_option` SET `condition_id` = 1384 WHERE `menu_id` = 6091 && `id` = 0;

-- 1385: Target Has Done Quest 5305
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1385, 8, 5305, 0, 0, 0, 0);
-- 1386: (1365: (1359: (1352: Target Knows Spell 9787) And (1358: (435: Target's Level Is Equal Or Greater Than 50) And (1351: Target Has 250 Points In Skill 164))) And (1364: (1362: Target Knows Spell 17039) And (1363: (1360: Target Knows Spell 17040) And (1361: Target Knows Spell 17041)))) And (1385: Target Has Done Quest 5305)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1386, -1, 1365, 1385, 0, 0, 0);
UPDATE `gossip_menu_option` SET `condition_id` = 1386 WHERE `menu_id` = 6090 && `id` = 0;

-- 1387: Target Has Done Quest 5306
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1387, 8, 5306, 0, 0, 0, 0);
-- 1388: (1365: (1359: (1352: Target Knows Spell 9787) And (1358: (435: Target's Level Is Equal Or Greater Than 50) And (1351: Target Has 250 Points In Skill 164))) And (1364: (1362: Target Knows Spell 17039) And (1363: (1360: Target Knows Spell 17040) And (1361: Target Knows Spell 17041)))) And (1387: Target Has Done Quest 5306)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (1388, -1, 1365, 1387, 0, 0, 0);
UPDATE `gossip_menu_option` SET `condition_id` = 1388 WHERE `menu_id` = 6089 && `id` = 0;
