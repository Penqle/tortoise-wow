-- ==============================================
-- FILE: spell_chain.sql
-- GENERATED: 20251217132424
-- ==============================================
-- Ancient Brutality (Bear) ranks
REPLACE INTO spell_chain
(
    spell_id,
    prev_spell,
    first_spell,
    rank,
    req_spell
)
VALUES
(53216, 0, 53216, 1, 0),
(53217, 53216, 53216, 2, 0);
-- ==============================================
-- FILE: spell_learn_spell.sql
-- GENERATED: 20251217132424
-- ==============================================
-- Ancient Brutality bear component
REPLACE INTO spell_learn_spell
(
    entry,
    SpellID,
    Active
)
VALUES
(51415, 53216, 0),
(51416, 53217, 0);
-- ==============================================
-- FILE: spell_proc_event.sql
-- GENERATED: 20251217132424
-- ==============================================
-- Improved Shred pwoershift proc
REPLACE INTO spell_proc_event
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
(16966, 0, 7, 0, 2147483648, 0, 17408, 524288, 0, 100, 0);

-- Feral Adrenaline crit taken proc
REPLACE INTO spell_proc_event
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
(51409, 0, 7, 0, 0, 0, 1048576, 2, 0, 0, 30);

-- Heart of the Wild bear and cat component
REPLACE INTO spell_proc_event
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
(24899, 0, 7, 3072, 0, 0, 17408, 524288, 0, 0, 0), -- Bear + Dire Bear
(24900, 0, 7, 2147483648, 0, 0, 17408, 524288, 0, 0, 0); -- Cat

-- Ancient Brutality bear component proc
REPLACE INTO spell_proc_event
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
(53216, 0, 7, 0, 0, 0, 680, 16, 0, 0, 9);
