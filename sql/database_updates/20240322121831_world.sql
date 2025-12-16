UPDATE item_template
SET item_level = 54,
    sell_price = 1400,
    buy_price = 5600,
    Required_Skill = 755,
    Required_Skill_Rank = 255,
    name = 'Plans: Crystalfire Armlets',
    Quality = 2,
    spellid_1 = 41347
WHERE name = 'Plans: Crystalfire Armlets';

UPDATE item_template
SET item_level = 55,
    sell_price = 1250,
    buy_price = 500,
    Required_Skill = 755,
    Required_Skill_Rank = 260,
    name = 'Plans: Cinderfall Band',
    Quality = 2,
    spellid_1 = 41349
WHERE name = 'Plans: Cinderfall Band';

UPDATE item_template
SET item_level = 45,
    sell_price = 1000,
    buy_price = 4000,
    Required_Skill = 755,
    Required_Skill_Rank = 210,
    name = 'Plans: Opaline Illumninator',
    Quality = 3,
    spellid_1 = 41351
WHERE name = 'Plans: Opaline Illumninator';

UPDATE item_template
SET item_level = 55,
    sell_price = 1100,
    buy_price = 5400,
    Required_Skill = 755,
    Required_Skill_Rank = 210,
    name = 'Plans: Skyfire Jewel',
    Quality = 2,
    spellid_1 = 41353
WHERE name = 'Plans: Skyfire Jewel';

UPDATE item_template
SET item_level = 58,
    sell_price = 1800,
    buy_price = 7200,
    Required_Skill = 755,
    Required_Skill_Rank = 275,
    name = 'Plans: Gemstone Compendium',
    Quality = 4,
    spellid_1 = 41355
WHERE name = 'Plans: Gemstone Compendium';

UPDATE item_template
SET Quality = 3 -- Rare quality
WHERE entry = 70129;

UPDATE `spell_template` SET `effectItemType1` = 55255 WHERE `entry` = 41354;
