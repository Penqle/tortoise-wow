-- whoops forgot to add rank 1
update spell_template SET recoveryTime = 60000, categoryRecoveryTime = 0, powerType = 2, manaCost = 10, durationIndex = 29, baseLevel = 10, spellLevel = 10, category = 0, description = 'Increases chance to dodge by 30% for $d.', auraDescription = 'Increases dodge chance by 30%.', nameSubtext = 'Rank 1' WHERE entry = 46296; -- Grace (Fox Ability)
update spell_template SET recoveryTime = 8000, categoryRecoveryTime = 8000, attributes = 524288 WHERE entry = 46271; -- Poison Spit (Rank 1)
update spell_template SET recoveryTime = 8000, categoryRecoveryTime = 8000, attributes = 524288 WHERE entry = 46272; -- Poison Spit (Rank 2)
update spell_template SET recoveryTime = 8000, categoryRecoveryTime = 8000, attributes = 524288 WHERE entry = 46273; -- Poison Spit (Rank 3)
update spell_template SET auraDescription = '' WHERE entry = 51146; -- Shieldrender Talisman
update spell_template SET Description = 'Your next 5 successful melee attacks smite your target for 7 Holy damage. Lasts 12 sec.' WHERE entry = 51250; -- Consecrated Strikes
update spell_template SET Description = 'Reduces the cooldown of your Holy Strike and Crusader Strike by 0.5 sec.' WHERE entry = 51242; -- Holy Strike Crusader Strike Cooldown Reduction
update spell_template SET Description = 'Your melee and ranged attacks have a chance to inject poison into your target that deals 120 Nature damage over 12 sec. Stacks up to 2 times.' WHERE entry = 45417; -- Vial of Potent Venoms
update spell_template SET Description = '5% chance on landing a direct damaging spell to create a mobile bomb that charges the nearest enemy and explodes for $51243s1 Fire damage.' WHERE entry = 51245; -- Mobile Bomb Equip Spell
