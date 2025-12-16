-- Only spawn Stormwind Vault chest after boss is dead.
DELETE FROM `gameobject` WHERE `id`=2010867;
