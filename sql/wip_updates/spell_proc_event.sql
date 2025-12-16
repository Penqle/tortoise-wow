-- Improved Shred pwoershift proc
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
(16966, 0, 7, 0, 2147483648, 0, 17408, 524288, 0, 100, 0);

-- Feral Adrenaline crit taken proc
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
(51409, 0, 7, 0, 0, 0, 1048576, 2, 0, 0, 30);