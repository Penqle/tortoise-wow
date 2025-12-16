-- Fix Clearcasting from Elemental Focus being consumed after 1 hit.
UPDATE `spell_template` SET `procCharges`=2, `stackAmount`=2 WHERE `entry`=45542;
