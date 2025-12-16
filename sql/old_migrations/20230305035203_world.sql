

-- Fix zone for sparkwater quest chain
UPDATE quest_template SET ZoneOrSort = 4021 WHERE entry IN (55026, 55027, 55028, 55029, 55030, 55031, 55051);

update quest_template set Method = 0, ZoneOrSort = 4021, Details = '', Objectives = '', RequestItemsText = "I never thought we'd have a fresh start, and not in my wildest dreams I'd think we'd do that under the Horde's flag, but what do you know, here we are.$B$BWe currently are a small group of goblins that ran away with only scraps and dust in our pockets, but slowly we will make a name for ourselves, and if you want, you can be part of that.$B$BThe Labor Union grows day by day, goblins come our way to find a new meaning in life under the Horde's gaze, but we lack both means and resources.$B$BIf you wish to be part of the Union's future bring me a handful of Whirring Bronze Gizmos whenever you can. You will eventually get paid." where `entry` = 80386;

update quest_template set Method = 0, ZoneOrSort = 4021, Details = '', Objectives = '', RequestItemsText = "If there's one thing a goblin is always in need of, it's dynamite!$B$BWhether it's used to excavate, blow up enemies, or just to watch things go KABOOM!$B$BAnyways, bring me 20 heavy dynamite and I'll be sure to put in a good word for you. Be sure to bring me quality dynamite too.$B$BI don't care where you find it either, unless you were to find it off the corpse of a gnome. In that case, be sure to wipe it down with disinfectant before you bring it to me.$B$BGnomes have a characteristically unpleasant odor that I find, quite frankly, to be repulsive." where `entry` = 80219;

-- Correct displayIDs for Theramore Sentries to use High Elf Models, which are currently using old reskinned Night Elf models on Live:
UPDATE creature_addon SET display_id = 18212 WHERE guid IN (30646, 30725, 31322, 31327, 33917, 73251);
UPDATE creature_addon SET display_id = 18213 WHERE guid IN (30634, 31323, 31326, 2530572);