-- Remove fake versions of Annals of Darrowshire.
DELETE FROM `gameobject` WHERE `id`=176152;
UPDATE `gameobject` SET `id`=176150 WHERE `id`=176151;
