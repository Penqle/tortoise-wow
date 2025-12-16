-- Fix pet fish item.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `script_name`) VALUES (176366, 9, 4321, 'Pet Fish', 2, 10002, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (10002, '<Your new friend looks a little dehydrated.>', 0);
UPDATE `spell_template` SET `totem1`=0, `reagent1`=0 WHERE `entry`=17468;
