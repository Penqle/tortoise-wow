-- Change entry of Lordaeron Soldier to custom one.
-- He is being summoned in KT encounter somehow, unknown why.
-- Perhaps changing his entry will prevent spawning him.
UPDATE `creature_template` SET `entry`=20200 WHERE `entry`=17647;
