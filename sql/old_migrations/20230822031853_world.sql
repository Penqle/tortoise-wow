CREATE TABLE IF NOT EXISTS `dynamic_visibility_template` (
	`area_id` INT(10) UNSIGNED NOT NULL,
	`min_vis_distance` INT(10) UNSIGNED NOT NULL,
	`max_vis_distance` INT(10) UNSIGNED NOT NULL,
	`decrease_tick_diff` INT(10) UNSIGNED NOT NULL,
	`increase_tick_diff` INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (`area_id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;



