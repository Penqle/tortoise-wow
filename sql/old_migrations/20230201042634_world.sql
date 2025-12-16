-- Fix some texts in Zul'Farrak.
DELETE FROM `script_texts` WHERE `entry` IN (1209000, -1209001, -1209002, -1209003, -1209004);
UPDATE `broadcast_text` SET `chat_type`=6 WHERE `entry`=6067;
