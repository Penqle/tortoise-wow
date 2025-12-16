-- NPC IDs 61969 and 61970 should have ghost visuals.
update creature_template set auras = '9617' where entry in (61969,61970);
-- DisplayIDs between 20614 and 20628, skip any that are already enabled.
replace INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20616, 0, 0, 0, 0),
(20617, 0, 0, 0, 0),
(20618, 0, 0, 0, 0),
(20619, 0, 0, 0, 0),
(20620, 0, 0, 0, 0),
(20621, 0, 0, 0, 0),
(20622, 0, 0, 0, 0),
(20623, 0, 0, 0, 0),
(20624, 0, 0, 0, 0),
(20625, 0, 0, 0, 0),
(20626, 0, 0, 0, 0),
(20627, 0, 0, 0, 0),
(20628, 0, 0, 0, 0);
-- Change NPC ID 61961's displayID to 20628.
update creature_template set display_id1 = 20628 where entry = 61961;
-- Change NPC ID 61960's displayID to 20624.
update creature_template set display_id1 = 20628 where entry = 61961;