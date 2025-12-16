-- Removed Khazgrims items from DM loottable
DELETE FROM creature_loot_template WHERE item in (70050, 70051, 70052, 70053, 70054, 70055, 70056, 70057, 70058, 70059, 70060, 70061, 70062, 70063, 70064);

-- -- Crown of Sacrifice fix (Dragunovi)
UPDATE item_template SET stat_type1 = 5, stat_value1 = 15, stat_type2 = 7, stat_value2 = 16, spellid_1 = 18030, spelltrigger_1 = 1, spellid_2 = 21361, spelltrigger_2 = 1, arcane_res = 0, shadow_res = 0, armor = 660, item_level = 65, required_level = 60, name = 'Crown of Eternal Sacrifice' WHERE entry = 70057;
REPLACE INTO creature_loot_template VALUES (91917, 70057, 15, 1, 1, 1, 0);

-- Lowered Dropchance of items from Corpsemuncher
UPDATE creature_loot_template SET ChanceOrQuestChance = 15 WHERE item IN (83459, 83460, 83461, 83462, 83463);

-- SHAMAN SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (17364, 0, 17364, 1, 0); -- Bloodlust Rank 1
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45509, 0, 45509, 1, 0); -- Stormstrike Rank 1
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45505, 0, 45505, 1, 0); -- Feral Spirit Rank 2
-- PRIEST SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (15473, 0, 15473, 1, 0); -- Shadowform
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45562, 0, 45562, 1, 0); -- Proclaim Champion
-- HUNTER SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (3035, 0, 3035, 1, 0); -- Trueshot Rank 1
-- DRUID SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45734, 24858, 45734, 2, 0); -- Owlkin Frenzy Chain Bugfix (Requires Owlkin Form)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (24858, 0, 24858, 1, 0); -- Moonkin Form
-- WARLOCK SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45910, 0, 45910, 1, 0); -- Mana Funnel Rank 1
-- PALADIN SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (2537, 0, 2537, 1, 0); -- Crusader Strike Rank 1
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (679, 0, 679, 1, 0); -- Holy Strike Rank 1

update broadcast_text set male_text = 'The Horde has changed from what it once was. There was a time where I left the Horde, disillusioned by the growing influence of the power-hungry pawns of the Burning Legion.\n\nDuring my exile, I was taken prisoner by a group of humans, but was rescued by the Warchief.\n\nHearing his vision of the Horde free of demonic influence, guided by the shamans, I returned.' where entry = 5989;

update item_template set spellcharges_1 = 10 where entry = 9449; -- Manual Crowd Pummeler

-- PRIEST SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45553, 15473, 15473, 2, 0); -- Improved Shadowform (Spellchain to require Shadowform talent)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45555, 15473, 15473, 2, 0); -- Pain Spike (Spellchain to require Shadowform talent)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45554, 15473, 15473, 2, 0); -- Shadow Mend (Spellchain to require Shadowform talent)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45564, 45562, 45562, 2, 0); -- Champion's Bond (Spellchain to require Proclaim Champion)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45565, 45562, 45562, 2, 0); -- Empower Champion (Spellchain to require Proclaim Champion)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45567, 45562, 45562, 2, 0); -- Revive Champion (Spellchain to require Proclaim Champion)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45569, 45562, 45562, 2, 0); -- Champion's Resolve (Spellchain to require Proclaim Champion)
-- DRUID SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (24858, 45734, 45734, 1, 0); -- Owlkin Frenzy (Requires Owlkin Form)
-- WARRIOR SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45599, 11605, 1464, 1, 0); -- Decisive Strike (Rank 1) (Requires Slam Rank 4)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45560, 45599, 1464, 2, 45961); -- Decisive Strike (Rank 2) (Requires both Decisive Strike Rank 1 and Slam Rank 5)
-- DRUID SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (24858, 45734, 45734, 2, 0); -- Owlkin Frenzy (Requires Owlkin Form)
-- HUNTER SPELLCHAIN
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (3035, 0, 0, 1, 0); -- Trueshot Rank 1

replace into spell_affect values (45550, 0, 0);
replace into spell_affect values (45721, 0, 0);
replace into spell_affect values (45721, 0, 0);
replace into spell_affect values (45722, 0, 0);
replace into spell_affect values (45722, 0, 0);
replace into spell_affect values (45808, 0, 0);
replace into spell_affect values (45838, 0, 0);
replace into spell_affect values (45839, 0, 0);
replace into spell_affect values (45921, 0, 0);
replace into spell_affect values (45922, 0, 0);
replace into spell_affect values (45923, 0, 0);
replace into spell_affect values (45550, 1, 0);
replace into spell_affect values (45721, 2, 0);
replace into spell_affect values (45722, 2, 0);

replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (3035, 0, 3035, 1, 0); -- Trueshot Rank 1
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45734, 24858, 45734, 2, 0); -- Owlkin Frenzy (Requires Owlkin Form)

delete from spell_chain where spell_id = 3035;

replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45556, 15473, 15473, 2, 0);
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45560, 45599, 1464, 1, 45961); -- Decisive Strike (Rank 2) (Requires both Decisive Strike Rank 1 and Slam Rank 5)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45599, 11605, 45599, 1, 0); -- Decisive Strike (Rank 1) (Requires Slam Rank 4)
replace into spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES (45560, 45599, 45599, 2, 45961); -- Decisive Strike (Rank 2) (Requires both Decisive Strike Rank 1 and Slam Rank 5)