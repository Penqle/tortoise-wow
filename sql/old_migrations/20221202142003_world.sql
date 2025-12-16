-- Allow Judgement of Wisdom to proc from procs again.
UPDATE `spell_template` SET `attributesEx3` = (`attributesEx3` | 67108864) WHERE `entry` IN (20186, 20354, 20355);
