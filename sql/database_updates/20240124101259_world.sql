-- Fix Pendant of the Faceless not droping.
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item`=60551;
