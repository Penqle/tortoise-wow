-- Allow trading Armor Scraps, Storm Crystals and Stormpike Soldier's Blood inside AV.
UPDATE `item_template` SET `bonding`=0 WHERE `entry` IN (17306, 17422, 17423);
