-- Change default reaction of Unit In LoS OOC event to Any.
UPDATE `creature_ai_events` SET `event_param1`=`event_param1`+1 WHERE `event_type`=10;

-- DO NOT PASTE OTHER THINGS IN THIS MIGRATION
-- IM LOOKING AT YOU RMJ
-- this migration must run exactly one time
