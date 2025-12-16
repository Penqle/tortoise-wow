-- Assign scripts to WSG flags to make turn in more responsive.
UPDATE `gameobject_template` SET `script_name`='go_wsg_flag' WHERE `entry` IN (179830, 179831);


