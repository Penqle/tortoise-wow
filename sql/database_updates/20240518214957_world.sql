-- making em useful
update item_template set spellcooldown_1 = 120000 where entry = 17348; -- Major Healing Draught
update item_template set spellcooldown_1 = 120000 where entry = 17351; -- Major Mana Draught
update item_template set spellcooldown_1 = 120000 where entry = 17349; -- Superior Healing Draught
update item_template set spellcooldown_1 = 120000 where entry = 17352; -- Superior Mana Draught

-- buff draught values
update spell_template SET EffectBasePoints1 = 1130, EffectDieSides1 = 748 WHERE entry = 21395; -- Restore Mana (Major Mana Draught)
update spell_template SET EffectBasePoints1 = 1130, EffectDieSides1 = 748 WHERE entry = 21393; -- Healing Draught (Major Healing Draught)
update spell_template SET EffectBasePoints1 = 835, EffectDieSides1 = 385 WHERE entry = 21394; -- Healing Draught (Superior Healing Draught)
update spell_template SET EffectBasePoints1 = 835, EffectDieSides1 = 385 WHERE entry = 21396; -- Restore Mana (Superior Mana Draught)

-- pain
update spell_template SET description = '' WHERE entry = 51088; -- Blue Owl Aura
update spell_template SET description = 'Your melee attacks have a 20% chance to strike an additional nearby opponent. This effect is disabled while shapeshifted.' WHERE entry = 51068; -- Hunter's Sweep

UPDATE spell_template SET spelliconid = 2316 where name like '%Decisive Strike%';

