-- Remove wrong race requirements from Tyrande and Remulos.
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=8734;
