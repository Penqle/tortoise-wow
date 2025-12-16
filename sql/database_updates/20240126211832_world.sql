-- Remove Check Result and Not Casting flags from Dire Maul lasher mobs.
UPDATE `creature_ai_events` SET `event_flags`=(`event_flags` & ~12) WHERE `creature_id` IN (13022, 13196);


