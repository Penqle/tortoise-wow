-- Add script to forcibly despawn Ryson's Eye.
UPDATE `gameobject_template` SET `script_name`='go_av_ryson_eye' WHERE  `entry`=178584;
DELETE FROM `event_scripts` WHERE `id`=7838;