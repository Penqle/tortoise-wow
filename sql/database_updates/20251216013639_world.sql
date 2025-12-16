-- ==============================================
-- FILE: autobroadcast.sql
-- GENERATED: 20251216013639
-- ==============================================
--Set Autobroadcast to new unofficial disclaimer
DELETE FROM autobroadcast;
INSERT INTO autobroadcast
(
   string_id
)
VALUES
(50009);

-- ==============================================
-- FILE: mangos_string.sql
-- GENERATED: 20251216013639
-- ==============================================
--New Unofficial turtle-wow announcement string
INSERT INTO mangos_string
(
    entry,
    content_default,
    content_loc1,
    content_loc2,
    content_loc3,
    content_loc4,
    content_loc5,
    content_loc6,
    content_loc7,
    content_loc8
)
VALUES
(50009, 'This is an unofficial continuation of Turtle-WoW 1.17.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ==============================================
-- FILE: npc_trainer.sql
-- GENERATED: 20251216013639
-- ==============================================
-- Hand of Reckoning
INSERT INTO npc_trainer
(
    entry,
    spell,
    spellcost,
    reqskill,
    reqskillvalue,
    reqlevel
)
VALUES
(5491, 51303, 300, 0, 0, 10),
(80244, 51303, 300, 0, 0, 10),
(5148, 51303, 300, 0, 0, 10),
(5149, 51303, 300, 0, 0, 10),
(8140, 51303, 300, 0, 0, 10),
(5492, 51303, 300, 0, 0, 10),
(928, 51303, 300, 0, 0, 10),
(5147, 51303, 300, 0, 0, 10);

-- Bulwark of the Righteous Ranks 2 and 3
INSERT INTO npc_trainer
(
    entry,
    spell,
    spellcost,
    reqskill,
    reqskillvalue,
    reqlevel
)
VALUES
(5491, 51567, 25200, 0, 0, 50),
(80244, 51567, 25200, 0, 0, 50),
(5148, 51567, 25200, 0, 0, 50),
(5149, 51567, 25200, 0, 0, 50),
(8140, 51567, 25200, 0, 0, 50),
(5492, 51567, 25200, 0, 0, 50),
(928, 51567, 25200, 0, 0, 50),
(5147, 51567, 25200, 0, 0, 50),
(5491, 51568, 41400, 0, 0, 60),
(80244, 51568, 41400, 0, 0, 60),
(5148, 51568, 41400, 0, 0, 60),
(5149, 51568, 41400, 0, 0, 60),
(8140, 51568, 41400, 0, 0, 60),
(5492, 51568, 41400, 0, 0, 60),
(928, 51568, 41400, 0, 0, 60),
(5147, 51568, 41400, 0, 0, 60);


--Arcane Surge
INSERT INTO npc_trainer
(
    entry,
    spell,
    spellcost,
    reqskill,
    reqskillvalue,
    reqlevel
)
VALUES
(5880, 51937, 38000, 0, 0, 56),
(5880, 51938, 28000, 0, 0, 48),
(5880, 51939, 15000, 0, 0, 40),
(5880, 51940, 10000, 0, 0, 32),
(5498, 51937, 38000, 0, 0, 56),
(5498, 51938, 28000, 0, 0, 48),
(5498, 51939, 15000, 0, 0, 40),
(5498, 51940, 10000, 0, 0, 32),
(3048, 51937, 38000, 0, 0, 56),
(3048, 51938, 28000, 0, 0, 48),
(3048, 51939, 15000, 0, 0, 40),
(3048, 51940, 10000, 0, 0, 32),
(7311, 51937, 38000, 0, 0, 56),
(7311, 51938, 28000, 0, 0, 48),
(7311, 51939, 15000, 0, 0, 40),
(7311, 51940, 10000, 0, 0, 32),
(1228, 51937, 38000, 0, 0, 56),
(1228, 51938, 28000, 0, 0, 48),
(1228, 51939, 15000, 0, 0, 40),
(1228, 51940, 10000, 0, 0, 32),
(7312, 51937, 38000, 0, 0, 56),
(7312, 51938, 28000, 0, 0, 48),
(7312, 51939, 15000, 0, 0, 40),
(7312, 51940, 10000, 0, 0, 32),
(4568, 51937, 38000, 0, 0, 56),
(4568, 51938, 28000, 0, 0, 48),
(4568, 51939, 15000, 0, 0, 40),
(4568, 51940, 10000, 0, 0, 32),
(5497, 51937, 38000, 0, 0, 56),
(5497, 51938, 28000, 0, 0, 48),
(5497, 51939, 15000, 0, 0, 40),
(5497, 51940, 10000, 0, 0, 32),
(4567, 51937, 38000, 0, 0, 56),
(4567, 51938, 28000, 0, 0, 48),
(4567, 51939, 15000, 0, 0, 40),
(4567, 51940, 10000, 0, 0, 32),
(331, 51937, 38000, 0, 0, 56),
(331, 51938, 28000, 0, 0, 48),
(331, 51939, 15000, 0, 0, 40),
(331, 51940, 10000, 0, 0, 32),
(5883, 51937, 38000, 0, 0, 56),
(5883, 51938, 28000, 0, 0, 48),
(5883, 51939, 15000, 0, 0, 40),
(5883, 51940, 10000, 0, 0, 32),
(2128, 51937, 38000, 0, 0, 56),
(2128, 51938, 28000, 0, 0, 48),
(2128, 51939, 15000, 0, 0, 40),
(2128, 51940, 10000, 0, 0, 32),
(5885, 51937, 38000, 0, 0, 56),
(5885, 51938, 28000, 0, 0, 48),
(5885, 51939, 15000, 0, 0, 40),
(5885, 51940, 10000, 0, 0, 32),
(328, 51937, 38000, 0, 0, 56),
(328, 51938, 28000, 0, 0, 48),
(328, 51939, 15000, 0, 0, 40),
(328, 51940, 10000, 0, 0, 32),
(5144, 51937, 38000, 0, 0, 56),
(5144, 51938, 28000, 0, 0, 48),
(5144, 51939, 15000, 0, 0, 40),
(5144, 51940, 10000, 0, 0, 32),
(5145, 51937, 38000, 0, 0, 56),
(5145, 51938, 28000, 0, 0, 48),
(5145, 51939, 15000, 0, 0, 40),
(5145, 51940, 10000, 0, 0, 32),
(1459, 51937, 38000, 0, 0, 56),
(1459, 51938, 28000, 0, 0, 48),
(1459, 51939, 15000, 0, 0, 40),
(1459, 51940, 10000, 0, 0, 32),
(3049, 51937, 38000, 0, 0, 56),
(3049, 51938, 28000, 0, 0, 48),
(3049, 51939, 15000, 0, 0, 40),
(3049, 51940, 10000, 0, 0, 32),
(3047, 51937, 38000, 0, 0, 56),
(3047, 51938, 28000, 0, 0, 48),
(3047, 51939, 15000, 0, 0, 40),
(3047, 51940, 10000, 0, 0, 32),
(5146, 51937, 38000, 0, 0, 56),
(5146, 51938, 28000, 0, 0, 48),
(5146, 51939, 15000, 0, 0, 40),
(5146, 51940, 10000, 0, 0, 32),
(5882, 51937, 38000, 0, 0, 56),
(5882, 51938, 28000, 0, 0, 48),
(5882, 51939, 15000, 0, 0, 40),
(5882, 51940, 10000, 0, 0, 32),
(4566, 51937, 38000, 0, 0, 56),
(4566, 51938, 28000, 0, 0, 48),
(4566, 51939, 15000, 0, 0, 40),
(4566, 51940, 10000, 0, 0, 32),
(80246, 51937, 38000, 0, 0, 56),
(80246, 51938, 28000, 0, 0, 48),
(80246, 51939, 15000, 0, 0, 40),
(80246, 51940, 10000, 0, 0, 32),
(80402, 51937, 38000, 0, 0, 56),
(80402, 51938, 28000, 0, 0, 48),
(80402, 51939, 15000, 0, 0, 40),
(80402, 51940, 10000, 0, 0, 32),
(80831, 51937, 38000, 0, 0, 56),
(80831, 51938, 28000, 0, 0, 48),
(80831, 51939, 15000, 0, 0, 40),
(80831, 51940, 10000, 0, 0, 32),
(80964, 51937, 38000, 0, 0, 56),
(80964, 51938, 28000, 0, 0, 48),
(80964, 51939, 15000, 0, 0, 40),
(80964, 51940, 10000, 0, 0, 32),
(60628, 51937, 38000, 0, 0, 56),
(60628, 51938, 28000, 0, 0, 48),
(60628, 51939, 15000, 0, 0, 40),
(60628, 51940, 10000, 0, 0, 32),
(80857, 51937, 38000, 0, 0, 56),
(80857, 51938, 28000, 0, 0, 48),
(80857, 51939, 15000, 0, 0, 40),
(80857, 51940, 10000, 0, 0, 32),
(80108, 51937, 38000, 0, 0, 56),
(80108, 51938, 28000, 0, 0, 48),
(80108, 51939, 15000, 0, 0, 40),
(80108, 51940, 10000, 0, 0, 32);


-- Clean up old Amplify Magic Ranks
DELETE FROM npc_trainer
WHERE spell IN (8455, 8456, 10169, 10170, 10171, 10172);

-- Clean up old Dampen Magic Ranks
DELETE FROM npc_trainer
WHERE spell IN (8450, 8452, 8453, 10173, 10174, 10175, 10176);

-- ==============================================
-- FILE: npc_vendor.sql
-- GENERATED: 20251216013639
-- ==============================================
-- Remove Deprecated Bone Item
DELETE FROM npc_vendor
WHERE item = 5515;

-- ==============================================
-- FILE: spell_affect.sql
-- GENERATED: 20251216013639
-- ==============================================
-- Improved Hand of Reckoning
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(51334, 0, 274877906944),
(51335, 0, 274877906944);

-- Vengeful Strikes
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(51355, 1, 549755813888),
(51355, 2, 34359738368),
(51356, 1, 549755813888),
(51356, 2, 34359738368),
(51357, 1, 549755813888),
(51357, 2, 34359738368),
(51358, 1, 549755813888),
(51358, 2, 34359738368),
(51359, 1, 549755813888),
(51359, 2, 34359738368);

-- Righteous Strikes
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(51341, 1, 4294967296),
(51342, 1, 4294967296),
(51343, 1, 4294967296),
(51344, 1, 4294967296),
(51345, 1, 4294967296),
(51341, 2, 4294967296),
(51342, 2, 4294967296),
(51343, 2, 4294967296),
(51344, 2, 4294967296),
(51345, 2, 4294967296);

--Improved Seal of Righteousness
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(20224, 0, 68853695488),
(20225, 0, 68853695488),
(20330, 0, 68853695488),
(20331, 0, 68853695488),
(20332, 0, 68853695488);

--Spiritual Focus
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(20205, 0, 3221250048),
(20206, 0, 3221250048);

-- Feral Aggression Demoralizing Roar Component
INSERT INTO spell_affect
(
    entry,
    effectId,
    SpellFamilyMask
)
VALUES
(16858, 0, 8),
(16859, 0, 8),
(16860, 0, 8),
(16861, 0, 8),
(16862, 0, 8);

-- ==============================================
-- FILE: spell_chain.sql
-- GENERATED: 20251216013639
-- ==============================================
--Bulkware of the Righteous Ranks
INSERT INTO spell_chain
(
    spell_id,
    prev_spell,
    first_spell,
    rank,
    req_spell
)
VALUES
(51346, 0, 51346, 1, 0),
(51565, 51346, 51346, 2, 0),
(51566, 51565, 51346, 3, 0);

-- Balance of All Things spell chain
DELETE FROM spell_chain
WHERE spell_id IN (51433, 51434, 51435, 51436, 51437);
INSERT INTO spell_chain
(
    spell_id,
    prev_spell,
    first_spell,
    rank,
    req_spell
)
VALUES
(51433, 0, 51433, 1, 0),
(51434, 51433, 51433, 2, 0),
(51435, 51434, 51433, 3, 0),
(51436, 51435, 51433, 4, 0),
(51437, 51436, 51433, 5, 0);

-- Balance of All Things (Moonfire) spell chain
DELETE FROM spell_chain
WHERE spell_id IN (51672, 51673, 51674, 51675, 51676);
INSERT INTO spell_chain
(
    spell_id,
    prev_spell,
    first_spell,
    rank,
    req_spell
)
VALUES
(51672, 0, 51672, 1, 0),
(51673, 51672, 51672, 2, 0),
(51674, 51673, 51672, 3, 0),
(51675, 51674, 51672, 4, 0),
(51676, 51675, 51672, 5, 0);

-- ==============================================
-- FILE: spell_learn_spell.sql
-- GENERATED: 20251216013639
-- ==============================================
--Balance of All Things learn moonfire component
INSERT INTO spell_learn_spell
(
    entry,
    SpellID,
    Active
)
VALUES
(51433, 51672, 0),
(51434, 51673, 0),
(51435, 51674, 0),
(51436, 51675, 0),
(51437, 51676, 0);

-- Eclipse moonfire component
INSERT INTO spell_learn_spell
(
    entry,
    SpellID,
    Active
)
VALUES
(51444, 51445, 0);

-- ==============================================
-- FILE: spell_proc_event.sql
-- GENERATED: 20251216013639
-- ==============================================

-- Gate Righteous Strikes behind Zeal
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51341, 0, 10, 549755813888, 0, 0, 0, 0, 0, 100, 0),
(51342, 0, 10, 549755813888, 0, 0, 0, 0, 0, 100, 0),
(51343, 0, 10, 549755813888, 0, 0, 0, 0, 0, 100, 0),
(51344, 0, 10, 549755813888, 0, 0, 0, 0, 0, 100, 0),
(51345, 0, 10, 549755813888, 0, 0, 0, 0, 0, 100, 0);


-- Judgements of the Holy
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51304, 0, 10, 8388608, 0, 0, 87376, 0, 0, 0, 0),
(51306, 0, 10, 8388608, 0, 0, 87376, 0, 0, 0, 0),
(51308, 0, 10, 8388608, 0, 0, 87376, 0, 0, 0, 0);


-- Arcane Convercence
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51963, 0, 3, 2097152, 0, 0, 87376, 0, 0, 5, 15000),
(51964, 0, 3, 2097152, 0, 0, 87376, 0, 0, 10, 15000),
(51965, 0, 3, 2097152, 0, 0, 87376, 0, 0, 15, 15000);



-- Hot Streak
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51927, 0, 3, 1073741827, 0, 0, 65536, 2, 0, 0, 0),
(51928, 0, 3, 1073741827, 0, 0, 65536, 2, 0, 0, 0),
(51929, 0, 3, 1073741827, 0, 0, 65536, 2, 0, 0, 0);

-- Balance of All Things Insect Swarm
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51433, 0, 7, 2097152, 0, 0, 262144, 0, 0, 0, 0);

-- Balance of All Things Moonfire
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51672, 0, 7, 2, 0, 0, 327680, 0, 0, 0, 0);

-- Eclipse Proc Event
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51444, 0, 7, 1, 0, 0, 65536, 2, 0, 0, 0);


-- Eclipse (Arcane) Proc Event
INSERT INTO spell_proc_event
(
    entry,
    SchoolMask,
    SpellFamilyName,
    SpellFamilyMask0,
    SpellFamilyMask1,
    SpellFamilyMask2,
    procFlags,
    procEx,
    ppmRate,
    CustomChance,
    Cooldown
)
VALUES
(51445, 0, 7, 4, 0, 0, 65536, 2, 0, 0, 0);

-- ==============================================
-- FILE: spell_scripts.sql
-- GENERATED: 20251216013639
-- ==============================================
--Temporal convergance arcane missile cooldown
INSERT INTO spell_scripts
(
    id,
    delay,
    priority,
    command,
    datalong,
    datalong2,
    datalong3,
    datalong4,
    target_param1,
    target_param2,
    target_type,
    data_flags,
    dataint,
    dataint2,
    dataint3,
    dataint4,
    x,
    y,
    z,
    o,
    condition_id,
    comments
)
VALUES
(51961, 0, 0, 58, 51949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence'),
(51961, 0, 0, 58, 51950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence'),
(51961, 0, 0, 58, 51951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence'),
(51961, 0, 0, 58, 51952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence'),
(51961, 0, 0, 58, 51953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence'),
(51961, 0, 0, 58, 51954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temporal Convergence');




-- ==============================================
-- FILE: spell_template.sql
-- GENERATED: 20251216013639
-- ==============================================
--Giardian's Favor fix, was reversed
UPDATE spell_template
SET effectBasePoints1 = -120001
WHERE entry = 20175;

-- Arcane Power attributes fix
UPDATE spell_template
SET attributes = 8195
WHERE entry = 12042;
UPDATE spell_template
SET effectApplyAuraName2 = 4
WHERE entry = 51961;

-- Natural Shapeshifter Fix
UPDATE spell_template
SET effectItemType1 = 3791650816
WHERE entry IN (16833, 16834, 16835);

-- Update SpellIcon for Balance of All Things (Moonfire) so it doesnt hit spell aura heuristics
UPDATE spell_template
SET spellIconId = 46
WHERE entry IN (51672, 51673, 51674, 51675, 51676);

-- Update SpellIcon for Eclipse (Arcane) so it doesnt hit spell aura heuristics
UPDATE spell_template
SET spellIconId = 46
WHERE entry = 51445;

