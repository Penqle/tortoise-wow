-- Change faction of Ritual Candle Aura to one that is hostile to mobs but friendly to players.
-- This is a server side trap, so it is not sniffable, and true faction is unknown.
UPDATE `gameobject_template` SET `faction`=250 WHERE `entry`=179688;
