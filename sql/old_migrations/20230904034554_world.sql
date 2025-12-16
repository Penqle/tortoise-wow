-- Make quest Under the Chitin Was available to all races.
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=1185;
