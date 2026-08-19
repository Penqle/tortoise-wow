-- ==============================================
-- FILE: gameobject_cleanup.sql
-- GENERATED: 20260814112455
-- ==============================================
DELETE FROM `gameobject`
WHERE `guid` IN (
    5046109, 5039709, 5039052, 5037751, 5036720, 5035060, 5032844, 5021053
    );

INSERT INTO `gameobject_template`
(
    `entry`,
    `type`,
    `displayId`,
    `name`,
    `faction`,
    `flags`,
    `size`,
    `data0`,
    `data1`,
    `data2`,
    `data3`,
    `data4`,
    `data5`,
    `data6`,
    `data7`,
    `data8`,
    `data9`,
    `data10`,
    `data11`,
    `data12`,
    `data13`,
    `data14`,
    `data15`,
    `data16`,
    `data17`,
    `data18`,
    `data19`,
    `data20`,
    `data21`,
    `data22`,
    `data23`,
    `mingold`,
    `maxgold`,
    `phase_quest_id`,
    `script_name`
)
VALUES
(3000692, 8, 0, 'Forge (Invisible)', 0, 0, 0.5, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3000693, 8, 0, 'Anvil (Invisible)', 0, 0, 0.5, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

