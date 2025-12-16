-- Fix Ravenwood Scepter inconsistency for quest chaining
UPDATE quest_template SET MinLevel = 38 WHERE entry = 40994;

-- Deprecate removed Tamamo / Ronae'Thalas quest
UPDATE quest_template SET Title = '[DEPRECATED] No Hope For Tomorrow' WHERE entry = 40184;
