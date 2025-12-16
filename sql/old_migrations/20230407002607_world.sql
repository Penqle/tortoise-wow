-- Fix overspawning of Silver Stream Mine.
DELETE FROM `creature` WHERE `guid` IN (9151, 9155, 9322, 9323, 9333);
