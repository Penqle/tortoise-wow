REPLACE INTO creature_template (entry, name, subname, level_min, level_max, faction, display_id1, health_min, health_max, armor, npc_flags, dmg_min, dmg_max, attack_power, base_attack_time, unit_flags, type)
VALUES (80799,'Volz''draza','Speaker of the Revantusk Tribe',50,50,893,14771,3181,3181,3288,2,152,180,581,2000,4608,7);


REPLACE INTO quest_template (entry, zoneorsort, questlevel, minlevel, title, details, objectives, requestitemstext, offerrewardtext, srcitemid, srcitemcount, reqitemid1, reqitemcount1, rewxp, rewrepfaction1, rewrepvalue1, rewmoneymaxlevel)
VALUES (80314,1637,10,10,'Scratching Each Other''s Back','The aid of the Darkspear has been a welcome surprise. In a time when a troll would rather take ya eyes than see eye to eye with another tribe, this unity be a true miracle.$B$BAs a show of good will, Zol''majin will be sending ya to Master Gadrin in Sen''jin Village. Offer this doll to him. It be an old troll custom, one he will understand.','Take Zol''majin''s Voodoo Doll to Master Gadrin in Sen''jin Village.','Ya mon? Ya say ya got something for me?','I haven''t gotten one of these in years, mon. Do ya understand the meaning of this gesture?$B$BThis be a voodoo doll of Warleader Zol''majin himself, given in confidence to another troll. This doll will eventually reach Vol''jin, so Zol''majin be putting his life in the hands of the Darkspear.$B$BThis be a symbol of great trust between the tribes. This gesture may be returned in kind with time.',80423,1,80423,1,1000,893,150,6498);

REPLACE INTO creature_questrelation (id, quest) VALUES (80802, 80314);
REPLACE INTO creature_involvedrelation (id, quest) VALUES (3188, 80314);

UPDATE quest_template SET
Details = 'The trolls be blessed by the loa with great regeneration, mon. Be it just a scratch or an entire limb, we be able to heal. Still, there be times when the regeneration takes much too long, and there be no shame in being prepared for those times.$B$BOur allies at Splintertree Post in Ashenvale recently discovered a little voodoo solution without even realizing. There be toads roaming the Mystral Lake at the edge of the forest, near Talondeep Path. They be covered with a slippery oil that can be brewed into a powerful salve.$B$BWon''tcha be a friend and go squeeze them toads for me, mon? Bring me their oil, and I''ll see ya be rewarded for your time.',
Objectives = 'Bring 10 Toad Oil to Warleader Zol''majin in Amani''Alor.',
RequestItemsText = 'How goes the squeezing, mon?',
OfferRewardText = 'Spirits be with ya, $r. Ya efforts will keep us trolls healing up nicely. The Horde been nothing but kind to us, and we''ll see to it ya be repaid in kind.',
ReqItemId1 = 80421, ReqItemCount1 = 10, ReqItemId2 = 0, ReqItemCount2 = 0
WHERE entry = 80304;

UPDATE quest_template SET
Details = 'When we first got here, it was important for us to raise structures to make a home for ourselves. While tidying the place up, we breached the entrance of the temple, clearing away all the collapsed rubble.$B$BMany loa used to be worshipped there, especially the Loa of Death. We must have disturbed the spirits inside the tomb, because the trolls of the past have arisen to haunt the temple. These vengeful undead attack anyone who tries to walk their halls, even peaceful worshippers.$B$BYa duty is to set fire to the pyres in the tomb, to soothe the troubled spirits and purify the temple. If the undead be in ya way, send them back to the afterlife.',
Objectives = 'Light 8 Spirit Pyres inside the tomb.',
OfferRewardText = 'The foul stench be starting to clear. Ya did good mon. Ya deserve a reward for ya efforts.$B$BKnow that in time, this place will not only be an asset to the Revantusk, but the Horde as a whole.',
ReqCreatureOrGOId1 = 8
WHERE entry = 80301;

UPDATE quest_template SET PrevQuestId = 80313 WHERE entry IN (80301, 80304, 80303, 80360);

REPLACE INTO quest_template (entry, prevquestid, zoneorsort, questlevel, minlevel, title, details, objectives, offerrewardtext, rewxp, rewrepfaction1, rewrepvalue1, rewmoneymaxlevel)
VALUES (80313,80302,1637,10,10,'Welcome to Amani''Alor','Oho, Deino send more help? Guya''jin be pleased.$B$BI be Guya''jin, Witch Doctor of the Revantusk Tribe and the spiritual leader of our people. I keep this portal to Orgrimmar stable, so if ya want to return to the Valley of Spirits at any time, ya come see Guya''jin.$B$BAmani''Alor be a blessing for our tribe, an ancient Zandalari temple with a deep connection to the loa. We be far away from our temples mon, but here, we can appeal to the local loa and maintain a connection with our loa back home.$B$BYa look a little green still, mon. Why don''tcha look around and get your bearings? Speak to me when ya be ready for ya first task. There be a lot of work to do round here.','Speak to Guya''jin again to begin volunteering aid to the Revantusk.','Good, good. We be having much to do, so don''t go scurrying yet mon.',1000,893,75,6498);

REPLACE INTO creature_questrelation (id, quest) VALUES (5885, 80313);
REPLACE INTO creature_involvedrelation (id, quest) VALUES (5885, 80313);

REPLACE INTO creature_questrelation (id, quest) VALUES (80799, 80302);
REPLACE INTO creature_involvedrelation (id, quest) VALUES (5885, 80302);

REPLACE INTO quest_template (entry, prevquestid, zoneorsort, questlevel, minlevel, title, details, objectives, offerrewardtext, rewxp, rewrepfaction1, rewrepvalue1, rewmoneymaxlevel)
VALUES (80302,80300,1637,10,10,'To Amani''Alor!','I be toiling with diplomacy here, so me hands are tied on proper greetings. If ya truly wanna help the Revantusk Tribe, we be appreciating it.$B$BThe time has come for the Revantusk to pull their weight in the Horde for all the aid they been giving us in the Hinterlands, and set a course for the future. Deino of the Darkspear Tribe has been kind enough to open portals for us to and from Amani''Alor.$B$BYa can find her in the Valley of Spirits. As soon as ya get to Amani''Alor, seek out Mystic Guya''jin and ask how ya can help the Revantusk cause.','Speak to Deino in the Valley of Spirits for transport to Amani''Alor.','Ya looking to help the Revantusk, too? Well ain''tcha a fine diplomat of the Horde.$B$BThey be the last sane forest tribe and our cousins, so it be me pleasure to help them. Trolls around Azeroth been at odds for many many years, so it fill me with hope seeing tribes uniting under the Horde.$B$BIf ya ever wish to travel to Amani''Alor, just speak to me.',1000,893,75,6498);

UPDATE quest_template SET
Details = 'Hello mon! I be representing a clutch of the Revantusk Trolls that have left the shores of our home in order to forge a bond and more promising relations with the Horde.$B$BWe be setting up camp in the Stonetalon Mountains, close to the ruined Zandalari temple from before the Great Sundering, and we be needing all the help we can find.$B$BWhen ya can spare the time, speak to Volz’draza in the Warchief''s hut. She can give ya guidance and will make sure ya get paid for your help.',
Objectives = 'Speak to Volz''draza in Grommash Hold.',
OfferRewardText = 'Ya seek to help us? Good, good. The Warchief allowed me to stay here and commission servants of the Horde willing to aid our cause.$B$BWe''ve named our new home Amani''Alor and already we have begun settling in, but as ya can imagine, settling in a new land be coming with its own issues.',
RewXP = 1000,
NextQuestInChain = 80302
WHERE entry = 80300;

REPLACE INTO creature_involvedrelation (id, quest) VALUES (80799, 80300);

SET @entry = 80423;
SET @name = 'Zol''majin''s Voodoo Doll';
SET @Description = 'The doll resembles Warleader Zol''majin.';
SET @icon = 2622;


REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (@entry, 12, 0, @name, @description, @icon, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO creature_questrelation (id, quest) VALUES (80799, 80300);

DELETE FROM creature_involvedrelation WHERE id = 5885 AND quest = 80300;

REPLACE INTO `creature` VALUES (2574945,80799,0,0,0,1,1903.91,-4134.42,40.9188,5.55899,120,120,0,100,100,0,0,0);

UPDATE quest_template SET ReqCreatureOrGoId1 = -3000242 WHERE entry = 80301;

REPLACE INTO `gameobject` VALUES ( 5013556, 3000242, 1, 2646.05, 2290.04, 159.933, 2.68918, 0, 0, 0.974524, 0.224284, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013557, 3000242, 1, 2695.44, 2415.64, 158.405, 2.70489, 0, 0, 0.976256, 0.21662, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013558, 3000242, 1, 2702.42, 2429.95, 158.403, 2.68526, 0, 0, 0.974082, 0.226193, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013559, 3000242, 1, 2723.05, 2430.71, 159, 1.09483, 0, 0, 0.52048, 0.853874, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013560, 3000242, 1, 2681.05, 2386.44, 158.402, 2.68527, 0, 0, 0.974084, 0.226187, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013561, 3000242, 1, 2689.17, 2362.23, 158.411, 4.25057, 0, 0, 0.850171, -0.526507, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 5013562, 3000242, 1, 2738.63, 2357.02, 158.716, 5.83707, 0, 0, 0.221211, -0.975226, 300, 300, 100, 1, 0, 0);

UPDATE quest_template SET RewRepValue1 = 50 WHERE entry IN (40583, 40584, 40585, 40587);
UPDATE quest_template SET RewXP = 150, RewRepValue1 = 250 WHERE entry = 40588;