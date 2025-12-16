-- Pathing for Zora Entry: 14474
SET @NPC := 51835;
UPDATE `creature` SET `wander_distance`=0,`movement_type`=2,`position_x`=-7378.239,`position_y`=1714.3088,`position_z`=-91.72752 WHERE `guid`=@NPC;
DELETE FROM `creature_movement` WHERE `id`=@NPC;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`waittime`,`wander_distance`,`script_id`) VALUES
(@NPC,1,-7378.239,1714.3088,-91.72752,100,0,0,0),
(@NPC,2,-7393.453,1717.8257,-92.846466,100,0,0,0),
(@NPC,3,-7401.651,1709.8647,-92.29474,100,0,0,0),
(@NPC,4,-7396.23,1696.348,-92.5287,100,0,0,0),
(@NPC,5,-7377.1226,1687.7341,-91.2392,100,0,0,0),
(@NPC,6,-7368.2925,1700.2347,-86.44376,100,0,0,0);
-- 0x204CB000200E22800000A80000679D55 .go xyz -7378.239 1714.3088 -91.72752
