-- Fix not being able to use Brazier of Invocation in The Beast's room to summon Lord Valthalak.
-- The spell focus gameobjects need to be spawned at the same positon as the trigger creature (16048).
UPDATE `gameobject` SET `position_x`=50.1154, `position_y`=-534.537, `position_z`=111.02, `orientation`=6.16101 WHERE `guid` IN (99905, 396330);
