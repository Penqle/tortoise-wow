-- Fix for zone for Goblin starting area quests:
UPDATE quest_template SET
ZoneOrSort = 4011
WHERE entry BETWEEN 80100 AND 80108;

UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 80121;


