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
