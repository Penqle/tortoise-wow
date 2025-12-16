-- whoops forgot to add rank 1
update spell_template SET recoveryTime = 60000, powerType = 2, manaCost = 10, durationIndex = 29, baseLevel = 10, spellLevel = 10, category = 0, description = 'Increases chance to dodge by 30% for $d.', auraDescription = 'Increases dodge chance by 30%.', nameSubtext = 'Rank 1' WHERE entry = 46296; -- Grace (Fox Ability)
