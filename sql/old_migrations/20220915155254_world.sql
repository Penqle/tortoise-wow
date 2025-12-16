-- Hardcode mana restore amount of Water Shield to fix tooltip.
UPDATE `spell_template` SET `auraDescription`='Attacks and spells used against you restore 130 mana. $n charges.' WHERE `entry`=45527;
