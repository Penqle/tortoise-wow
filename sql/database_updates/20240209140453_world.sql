-- Remove pools of pools for Thorium on continents.
-- Continents.Instantiate breaks continent wide pools.
DELETE FROM `pool_template` WHERE `entry`=5616;
DELETE FROM `pool_pool` WHERE `mother_pool`=5616;
DELETE FROM `pool_template` WHERE `entry`=5617;
DELETE FROM `pool_pool` WHERE `mother_pool`=5617;
