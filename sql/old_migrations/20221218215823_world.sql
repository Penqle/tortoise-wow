-- Fix Defias Looters having Frost Armor.
DELETE FROM `creature_addon` WHERE `guid` IN (45549, 53862, 53962, 54439, 89667, 90286, 90291, 90334, 90356);
