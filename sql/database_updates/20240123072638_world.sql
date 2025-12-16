-- Fix unit flags of battleground spirit guides.
UPDATE `creature_template` SET `unit_flags`=832 WHERE `entry` IN (13116, 13117);
