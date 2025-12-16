-- Remove threat on miss from last ranks of Mind Soothe and Soothe Animal.
UPDATE `spell_template` SET `attributesEx` = (`attributesEx` & ~0x00200000) WHERE `entry` IN (9901, 10953);
UPDATE `spell_template` SET `attributesEx` = (`attributesEx` | 0x00000400) WHERE `entry` IN (9901, 10953);
-- Update description of previous ranks.
UPDATE `spell_template` SET `description`='Soothes the target, reducing the range at which it will attack you by $s1 yards.  Only affects Humanoid targets level $v or lower.  Causes aggro if resisted.  Lasts $d.' WHERE `entry` IN (453, 8192);
UPDATE `spell_template` SET `description`='Soothes the target beast, reducing the range at which it will attack you by $s1 yards.  Only affects Beast targets level 40 or lower.  Causes aggro if resisted.  Lasts $d.' WHERE `entry` IN (2908, 8955);
