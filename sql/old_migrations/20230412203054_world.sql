-- Add script to despawn containment coffers if player doesn't loot them.
UPDATE `gameobject_template` SET `script_name`='go_containment_coffer' WHERE `entry`=122088;
