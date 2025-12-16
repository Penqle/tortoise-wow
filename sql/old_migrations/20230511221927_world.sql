-- Reduce Deathchill Servant damage to match classic.
UPDATE `creature_template` SET `base_attack_time`=2000, `dmg_min`=2540, `dmg_max`=3366 WHERE `entry`=16390;
