-- Reduce restock time of quest chests.
UPDATE `gameobject_template` SET `data2`=1 WHERE `type`=3 && `data3`=0 && `data2`>1;
