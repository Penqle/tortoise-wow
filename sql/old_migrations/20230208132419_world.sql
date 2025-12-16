-- Disable some war effort related spawns.
UPDATE `creature` SET `spawn_flags`=2 WHERE `guid` IN (110020, 110021, 110022, 110023, 111020, 111021, 111022, 111023, 46803, 38, 2032, 32076, 25997, 6519, 6520);

