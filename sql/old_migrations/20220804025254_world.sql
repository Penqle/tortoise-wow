-- Fix Wyvern Sting not being removed on taking damage.
UPDATE `spell_template` SET `procCharges`=1 WHERE (`procFlags` & 1048576) && (`auraInterruptFlags` & 2) && (`procCharges` = 0);
