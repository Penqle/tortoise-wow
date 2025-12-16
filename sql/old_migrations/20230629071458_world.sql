REPLACE INTO creature_onkill_reputation VALUES (15343, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Qiraji Swarmguard
REPLACE INTO creature_onkill_reputation VALUES (15385, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Colonel Zerran
REPLACE INTO creature_onkill_reputation VALUES (15386, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Major Yeggeth
REPLACE INTO creature_onkill_reputation VALUES (15387, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Qiraji Warrior
REPLACE INTO creature_onkill_reputation VALUES (15388, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Major Pakkon
REPLACE INTO creature_onkill_reputation VALUES (15389, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Captain Drenn
REPLACE INTO creature_onkill_reputation VALUES (15390, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Captain Xurrem
REPLACE INTO creature_onkill_reputation VALUES (15391, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Captain Qeez
REPLACE INTO creature_onkill_reputation VALUES (15392, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Captain Tuubid
UPDATE creature_onkill_reputation SET MaxStanding1 = 7 WHERE creature_id = 15335; -- Flesh Hunter
UPDATE creature_onkill_reputation SET MaxStanding1 = 7, RewOnKillRepValue1 = 5 WHERE creature_id in (15168, 15318, 15319, 15320, 15323, 15324, 15325, 15327, 15333, 15336, 15338, 15461, 15462, 15505, 15521, 15537, 15538, 15555, 15934); -- all other aq40 npcs
UPDATE creature_onkill_reputation SET RewOnKillRepValue2 = 100 WHERE creature_id = 15339; -- Ossirian
UPDATE creature_onkill_reputation SET RewOnKillRepValue2 = 50 WHERE creature_id = 15348; -- Kurinnaxx
UPDATE creature_onkill_reputation SET RewOnKillRepValue2 = 50 WHERE creature_id = 15370; -- Buru the Gorger
UPDATE creature_onkill_reputation SET RewOnKillRepValue2 = 50 WHERE creature_id = 15340; -- Moam
UPDATE creature_onkill_reputation SET RewOnKillRepValue2 = 50 WHERE creature_id = 15369; -- Ayamiss the Hunter
UPDATE creature_onkill_reputation SET RewOnKillRepFaction2 = 609, RewOnKillRepValue1 = 50, MaxStanding2 = 7, RewOnKillRepValue2 = 50 WHERE creature_id = 15341; -- General Rajaxx
UPDATE creature_onkill_reputation SET RewOnKillRepFaction2 = 609, RewOnKillRepValue1 = 33, MaxStanding2 = 7, RewOnKillRepValue2 = 34 WHERE creature_id = 15275; -- Emperor Vek'nilash
UPDATE creature_onkill_reputation SET RewOnKillRepFaction2 = 609, RewOnKillRepValue1 = 33, MaxStanding2 = 7, RewOnKillRepValue2 = 34 WHERE creature_id = 15276; -- Emperor Vek'lor
REPLACE INTO creature_onkill_reputation VALUES (15316, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Qiraji Scarab
REPLACE INTO creature_onkill_reputation VALUES (15317, 609, 0, 7, 0, 5, 0, 0, 0, 0); -- Qiraji Scorpion