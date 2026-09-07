-- Gameobject 944 "Place centrale de DarrowShire" is a GAMEOBJECT_TYPE_SPELL_FOCUS,
-- whose data2 names a linked trap. It holds 1, and gameobject 1 is not a trap:
--
--     Gameobject (Entry: 944 GoType: 8) have data2=1 but GO (Entry 1) have not
--     GAMEOBJECT_TYPE_TRAP (6) type.
--
-- No trap fires today and none will after this; the object is spawned once and
-- the reference has been wrong since the earliest recorded history of this
-- table, so there is no intended trap to recover.
UPDATE `gameobject_template` SET `data2` = 0
WHERE `entry` = 944 AND `data2` = 1;
