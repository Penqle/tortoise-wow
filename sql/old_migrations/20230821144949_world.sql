-- Fix expertise: books.
update item_template set name = 'Tome of Expertise: Bows', allowable_class = 13 where entry = 81160; -- Expertise: Bows
-- Change scaling to potent venom trinket.
update spell_template SET effectBonusCoefficient1 = 0.05 WHERE entry = 45416; -- Potent Venom
-- Fix mats of gloves of unwinding mystery.
update spell_template SET reagentCount3 = 8, reagentCount4 = 4 WHERE entry = 45416; -- Potent Venom
-- Quest 41062 restrict to druid, priest, warlock, mage only.
update quest_template set requiredclasses = 1424 where entry = 40962;
-- Item 61184 (The Scythe of Elune) add class restrictions of druid, priest, warlock, mage.
update item_template set allowable_class = 1424 where entry = 61184;