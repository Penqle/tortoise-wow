-- Reduce scale of training dummies.
UPDATE `creature_template` SET `scale`=1.5 WHERE `entry` IN (50514, 50515, 50516);
