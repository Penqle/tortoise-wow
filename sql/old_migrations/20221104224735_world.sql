-- Allow seal of righteousness to trigger other procs.
UPDATE `spell_template` SET `attributesEx3` = (`attributesEx3` | 0x00000200) WHERE `entry` IN (25742, 25740, 25739, 25738, 25737, 25736, 25735, 25713);
