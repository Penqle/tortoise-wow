-- Correct quest text for Remember Alterac Valley!
UPDATE `quest_template` SET `RequestItemsText`='The Battle in Alterac Valley rages on, $N!  Have you done your part as of late, $N?' WHERE `entry`=8383;
UPDATE `quest_template` SET `RequestItemsText`='What news do you bring, $N?' WHERE `entry`=8375;
