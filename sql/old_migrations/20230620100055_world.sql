-- Increase cast time of learning spells for Dreamsteel and Dreamhide.
UPDATE `spell_template` SET `castingTimeIndex`=1 WHERE `entry` IN (45454, 45450);

