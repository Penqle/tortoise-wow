UPDATE `spell_template` SET `effectBasePoints1` = -11 WHERE `entry` = 48009;

UPDATE `spell_template` SET `description` = 'Finishing move that increases your chance to parry by an additional 20%. Lasts longer per combo point: \n1 point: 8 seconds \n2 points: 10 seconds \n3 points: 12 seconds \n4 points: 14 seconds \n5 points: 16 seconds' WHERE `entry` = 45604;

UPDATE `creature_template` SET `faction` = 534 WHERE `entry` in (91351, 91352, 91353, 91772, 91974, 91975, 91976, 91977, 91978, 91979, 91980, 91981, 91773);