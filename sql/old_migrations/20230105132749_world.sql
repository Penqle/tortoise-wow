-- Fixed Quest Chains ~by RMJ
UPDATE `quest_template` SET `NextQuestInChain` = 80107 WHERE `entry` = 80106;
UPDATE `quest_template` SET `NextQuestInChain` = 80108 WHERE `entry` = 80107;
UPDATE `quest_template` SET `NextQuestInChain` = 80110 WHERE `entry` = 80109;
UPDATE `quest_template` SET `NextQuestInChain` = 80251 WHERE `entry` = 80250;
UPDATE `quest_template` SET `NextQuestInChain` = 80256 WHERE `entry` = 80251;
UPDATE `quest_template` SET `NextQuestInChain` = 80396 WHERE `entry` = 80395;
UPDATE `quest_template` SET `NextQuestInChain` = 80408 WHERE `entry` = 80407;
UPDATE `quest_template` SET `NextQuestInChain` = 80409 WHERE `entry` = 80408;
UPDATE `quest_template` SET `NextQuestInChain` = 80411 WHERE `entry` = 80410;
UPDATE `quest_template` SET `NextQuestInChain` = 80604 WHERE `entry` = 80411;
UPDATE `quest_template` SET `NextQuestInChain` = 40129 WHERE `entry` = 40128;
UPDATE `quest_template` SET `NextQuestInChain` = 40132 WHERE `entry` = 40129;
UPDATE `quest_template` SET `NextQuestInChain` = 40131 WHERE `entry` = 40130;
UPDATE `quest_template` SET `NextQuestInChain` = 40133 WHERE `entry` = 40131;

-- Fixed spellentry (Hooked Net) on Spitefin Netter ~by Shang
UPDATE creature_spells SET spellid_1 = 14030, delayRepeatMin_1 = 20, delayRepeatMax_1 = 20 WHERE entry = 180081;

-- Various Questtext fixes ~by RMJ
UPDATE `quest_template` SET `Objectives` = 'Speak to Khan Jehn and follow his instructions.', `objectivetext1` = 'Follow Khan Jehn\'s instructions' WHERE `entry` = 40616;

UPDATE `quest_template` SET `details` = 'We\'re in a rough spot. The boss is scary, but he ain\'t worth fighting hordes of ghosts or some ancient curse. When he finds out, he\'ll have us hunted to the ends of Azeroth.\n\nAs much as it pains me to say, we\'re gonna have to cower and hide behind some real muscle if we don\'t all want to end up six feet under.\n\nThere\'s only one force in this world that even the boss wouldn\'t cross, and that\'s The Horde. No one else would take a bunch of deadbeat Venture Co. refugees, either.\n\nYeah, I know. Even that\'s a stretch. We ain\'t got much choice though, and the Horde sure don\'t like us less than our former associates, yeah? If we got a chance to win them over, then we gotta at least try.\n\nIt\'s that or spend the rest of our lives on the run. It\'s time for us to go straight, $N.', `RequestItemsText` = 'Alright, we made it to Durotar.\n\nStep 1 complete. Now for Step 2 of my master plan. That I just now made up...', `NextQuestInChain` = 80109 WHERE `entry` = 80108;

-- Item description fix ~by RMJ
UPDATE `item_template` SET `description` = 'An amulet made from the broken core of the Analyzer Construct.' WHERE `entry` = 60518;