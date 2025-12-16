-- spell adjustments
update spell_template SET description = 'Calls forth a Timbermaw Ancestor to fight at your side and heal you for 40 sec.' WHERE entry = 26066; -- Defender of the Timbermaw
update spell_template SET EffectBasePoints1 = 21 WHERE entry = 57044; -- Well Fed (Danonzo's Tel'Abim Delight)
update spell_template SET EffectBasePoints1 = 2, EffectBasePoints2 = 2, EffectBasePoints3 = 2, effectApplyAuraName3 = 65, effect3 = 6, EffectDieSides3 = 1, effectBasePoints3 = 1 WHERE entry = 57046; -- Well Fed (Danonzo's Tel'Abim Medley)
update spell_template SET EffectBasePoints2 = -51, effectApplyAuraName2 = 79, description = 'Protects the paladin from all damage and spells for $d, but decreases the damage you deal with all attacks and spells by $s2%.  Once protected, the target cannot be made invulnerable by Divine Shield, Divine Protection or Blessing of Protection again for $25771d.' WHERE entry = 642; -- Divine Shield Rank 1
update spell_template SET EffectBasePoints2 = -51, effectApplyAuraName2 = 79, description = 'Protects the paladin from all damage and spells for $d, but decreases the damage you deal with all attacks and spells by $s2%.  Once protected, the target cannot be made invulnerable by Divine Shield, Divine Protection or Blessing of Protection again for $25771d.' WHERE entry = 1020; -- Divine Shield Rank 2
update spell_template SET Reagent3 = 13467 WHERE entry = 57049; 
update spell_template SET Reagent3 = 13464 WHERE entry = 57051; 
update spell_template SET Reagent2 = 4625 WHERE entry = 17574; 
update spell_template SET Reagent2 = 13467 WHERE entry = 17575;
update spell_template SET Reagent2 = 13466 WHERE entry = 17578;
update spell_template SET Reagent2 = 13464 WHERE entry = 17579;
update spell_template SET ReagentCount1 = 20, ReagentCount2 = 20 WHERE entry = 16746; -- Invulnerable Mail Crafting Recipe
update spell_template SET ReagentCount1 = 10, ReagentCount3 = 3 WHERE entry = 20873; -- Fiery Chain Shoulders Crafting Recipe
update spell_template SET ReagentCount1 = 10, ReagentCount2 = 6 WHERE entry = 20897; -- Dark Iron Destroyer Crafting Recipe
update spell_template SET ReagentCount1 = 10, ReagentCount2 = 6 WHERE entry = 20890; -- Dark Iron Reaver Crafting Recipe
update spell_template SET ReagentCount1 = 4, Reagent1 = 14342 WHERE entry = 20849; -- Flarecore Gloves Crafting Recipe
update spell_template SET ReagentCount1 = 6, Reagent1 = 14342 WHERE entry = 20848; -- Flarecore Mantle Crafting Recipe
update spell_template SET Name = 'Armor +8/Stamina +1', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 8 and Stamina by 1.' WHERE entry = 2831; -- Armor +8 (Light Armor Kit)
update spell_template SET Name = 'Armor +16/Stamina +2', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 16 and Stamina by 2.' WHERE entry = 2832; -- Armor +16 (Medium Armor Kit)
update spell_template SET Name = 'Armor +24/Stamina +3', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 24 and Stamina by 3. Only usable on items level 15 and above.' WHERE entry = 2833; -- Armor +24 (Heavy Armor Kit)
update spell_template SET Name = 'Armor +32/Stamina +4', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 32 and Stamina by 4. Only usable on items level 25 and above.' WHERE entry = 10344; -- Armor +32 (Thick Armor Kit)
update spell_template SET Name = 'Armor +40/Stamina +5', description = 'Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40 and Stamina by 5. Only usable on items level 35 and above.' WHERE entry = 10344; -- Armor +40 (Rugged Armor Kit)
update spell_template SET Name = 'Defense +5', description = 'Permanently increase the defense value of an item worn on the chest, legs, hands or feet by 5. Only usable on items level 45 and above.' WHERE entry = 22725; -- Defense +3 (Core Armor Kit)
update spell_template SET EffectBasePoints1 = 0, EffectBasePoints2 = 0, EffectBasePoints3 = 1, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 13679; -- Haste 1
update spell_template SET EffectBasePoints1 = 1, EffectBasePoints2 = 1, EffectBasePoints3 = 3, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 8815; -- Haste 2
update spell_template SET EffectBasePoints1 = 2, EffectBasePoints2 = 2, EffectBasePoints3 = 5, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 13680; -- Haste 3
update spell_template SET EffectBasePoints1 = 3, EffectBasePoints2 = 3, EffectBasePoints3 = 7, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 13681; -- Haste 4
update spell_template SET EffectBasePoints1 = 4, EffectBasePoints2 = 4, EffectBasePoints3 = 9, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 13682; -- Haste 5
update spell_template SET EffectBasePoints1 = 9, EffectBasePoints2 = 9, EffectBasePoints3 = 19, description = 'Increases your attack speed by $s1% and casting speed by $s3%.' WHERE entry = 18065; -- Haste 10
update spell_template SET EffectBasePoints2 = 1, EffectBasePoints2 = 2, effectApplyAuraName2 = 71, effect2 = 6, EffectDieSides2 = 1, effectBasePoints2 = 1, description = 'Increases your pet\'s melee and spell critical strike chance by $1%.' WHERE entry = 27042; -- Increased Pet Crit +2%
update spell_template SET description = 'Empowers your pet, increasing pet damage by $s1% and increasing pet armor by $s2% for $d. This spell will only affect an Imp, Succubus, Voidwalker, Felhunter, Infernal and Doomguard.' WHERE entry = 23720; -- Blessing of the Black Book
update spell_template SET ProcChance = 3, Name = 'Proc Self Protection', description = 'When struck in combat has a 3% chance to reduce damage taken by physical attacks by $16621s1% for $16621d. This effect can only occur once every 30 sec.' WHERE entry = 16620; -- Proc Self Invulnerability (Invulnerable Mail)
update spell_template SET EffectBasePoints1 = -76, effectApplyAuraName1 = 87, Auradescription = 'Physical damage taken reduced by $s1%.', Name = 'Self Protection' WHERE entry = 16621; -- Self Invulnerability (Invulnerable Mail)
update spell_template SET manaCostPercentage = 6 WHERE entry = 46042; 
