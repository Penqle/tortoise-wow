-- Reduce Polearm training cost to 10 silver.
UPDATE `npc_trainer` SET `spellcost`=1000 WHERE `spell`=15991;
