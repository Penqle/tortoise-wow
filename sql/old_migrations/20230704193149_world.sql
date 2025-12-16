-- nerf idol of the wildshifter
update spell_template SET EffectBasePoints1 = -76 WHERE entry = 21873; -- Cheaper Druid Shapeshifting

DELETE FROM `creature` WHERE `guid` = 2562708;
DELETE FROM `creature` WHERE `guid` = 2562707;
DELETE FROM `creature` WHERE `guid` = 2562706;
DELETE FROM `creature` WHERE `guid` = 2562705;
DELETE FROM `creature` WHERE `guid` = 2562709;
DELETE FROM `creature` WHERE `guid` = 2562713;
DELETE FROM `creature` WHERE `guid` = 2562712;
DELETE FROM `creature` WHERE `guid` = 2562711;
DELETE FROM `creature` WHERE `guid` = 2562710;