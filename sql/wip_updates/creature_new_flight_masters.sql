-- ==============================================
-- FILE: creature_new_flight_masters.sql
-- Fix: 新增 8 个飞行管理员 NPC spawn
-- 说明: 在缺失飞行管理员的地图坐标上新增 Spawn
-- 来源: bug fix/2026-06-05-flight-master-fix/
-- 需重启 mangosd 生效
-- ==============================================

-- 前置条件: 确保 NPC entry 在 creature_template 中存在
-- 52093, 92943, 2226, 1573, 16227, 92942, 11138, 11139

INSERT INTO creature (guid,id,id2,id3,id4,map,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,wander_distance,health_percent,mana_percent,movement_type,spawn_flags,visibility_mod)
VALUES
(3622006,52093,0,0,0,0,-5421.91,-2930.01,347.25,0,600,600,0,100,100,0,0,0),  -- Falok Thurden @ Thelsamar
(3622007,92943,0,0,0,0,1857.56,-3658.47,143.73,0,600,600,0,100,100,0,0,0),  -- Vifri Brent @ Crown Guard
(3622008,2226,0,0,0,0,2008.80,2842.16,3.00,0,600,600,0,100,100,0,0,0),      -- Karos Razok @ Steepcliff
(3622009,1573,0,0,0,0,-5047.71,474.75,418.61,0,600,600,0,100,100,0,0,0),     -- Gryth Thurden @ Gnome Reclam
(3622010,16227,0,0,0,1,-570.74,-7849.85,52.11,0,600,600,0,100,100,0,0,0),    -- Bragok @ Gazzik's Workshop
(3622011,92942,0,0,0,1,818.91,-5006.31,19.91,0,600,600,0,100,100,0,0,0),     -- Grommok @ Sparkwater Port
(3622012,11138,0,0,0,1,8908.09,-5937.13,11.13,0,600,600,0,100,100,0,0,0),    -- Maethrya @ Narvalis Point
(3622013,11139,0,0,0,1,8185.64,-6489.25,26.87,0,600,600,0,100,100,0,0,0);    -- Yugrek @ Moonhoof Village
