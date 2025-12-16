update spell_template SET description = 'Increase the duration of Corruption and Shadow Word: Pain by $/1000;S1 $lsec:secs;.' WHERE entry = 51058; -- Eye of Dormant Corruption Warlock
update spell_template SET description = '' WHERE entry = 51056; -- Eye of Dormant Corruption Priest

update spell_template SET description = 'Your rogue and druid opening moves deal 5% more damage.' WHERE entry = 51056; -- Improved Opening Moves Druid
update spell_template SET description = '' WHERE entry = 51057; -- Improved Opening Moves Rogue

update spell_template SET description = 'Reduces the time between periodic ticks of your class-specific bleed effects $s1%.' WHERE entry = 51013; -- Faster Bleeds 5 (Druid)
update spell_template SET description = '' WHERE entry = 51014; -- Faster Bleeds 5 (Rogue)
update spell_template SET description = '' WHERE entry = 51015; -- Faster Bleeds 5 (Warrior)

update spell_template SET description = 'Your melee attacks have a 20% chance to strike an additional nearby opponent. This effect is disabled while shapeshifted.' WHERE entry = 51088; -- Hunter's Sweep

update spell_template SET description = 'Your landing damaging spells have a 7% chance to incur the wrath of Insomnius, dealing $51054s1 Nature damage. This effect benefits greatly from spellpower.' WHERE entry = 51055; -- Insomnius' Retribution Passive

update spell_template SET description = 'Successfully parrying an attack grants you $51052s1 Attack Power for $51052d. This effect stacks up to 2 times.' WHERE entry = 51055; -- Insomnius' Retribution Passive

update spell_template SET effectBasePoints1 = -28 WHERE entry = 51050; -- Nullified

update spell_template SET description = 'Your Lightning Bolt has a 10% chance to shock your enemy for $51147s1 damage. This effect generates no threat.' WHERE entry = 51148; -- Totem of Static Charge
