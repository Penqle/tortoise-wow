-- Make sure Crusader Strike debuff doesn't miss.
UPDATE `spell_template` SET `attributes`=(`attributes` | 0x00200000), `attributesEx3`=(`attributesEx3` | 0x00040000), `attributesEx4`=(`attributesEx4` | 0x00000001) WHERE `entry` IN (45409, 45410, 45411, 45412, 45413);
