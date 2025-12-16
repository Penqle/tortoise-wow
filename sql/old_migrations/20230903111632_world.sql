-- Quest "Revenge After Death" should make you choose a reward and not give both.
update quest_template set RewItemId1 = 0, RewItemId2 = 0, RewItemCount1 = 0, RewItemCount2 = 0, RewChoiceItemId1 = 61490, RewChoiceItemId2 = 61619, RewChoiceItemCount1 = 1, RewChoiceItemCount2 = 1 where entry = 40974;
-- Dark Bishop Mordren's gossip should say bear instead of bare where the point is.
update broadcast_text set male_text = 'During my life it was I who looked after this church. I was murdered in cold blood by those that bear the emblem of this kingdom. It appears that I have been awoken from my slumber to serve a new purpose, and serve this purpose I shall.$B$BYou will find no hostilities here, I may be Gilnean but I offer a chance to find solace inside the walls of my parish.$B$BShould you need to rest, feel free to ask.' where entry = 61281;
-- Remove awkward spaces at the start of paragraphs.
update broadcast_text set male_text = 'I had always wondered what this place looked like beyond the wall... Now that I\'ve been there I must admit I am disappointed. Perhaps once you have seen one kingdom you\'ve seen them all$B$BYou looking to do some work around here, or just admire the scenery?' where entry = 61289;
update quest_template set details = 'The wretched Greymane forces, perpetrators of my demise and desecrators of my church. Why did they target me?$B$BThe answer remains an enigma, yet I sense it is intertwined with the significance of this place. Centuries ago, a battle unfolded upon this very hill, where the forces of Gilneas, against all odds, triumphed over Arathor. I am convinced that the key to their triumph lay buried within these grounds, and the Regent\'s bloodlust coveted this dormant power for their own malevolent purposes.$B$BWe must delve deep into this mystery. Unearthing such power would bestow upon us a formidable advantage. I shall sift through these weathered tomes, unearthing knowledge that may shed light on our quarry.$B$BIn the interim, I ask you to embark on a perilous journey to Desolace. There, amidst the demons, seek out and retrieve the Eye of Xythos—an artifact rumored to possess the ability to uncover the secrets of the past, if one can channel the energies of the Forgotten Shadow, of course.' where entry = 40993;
update quest_template set details = 'In my previous life as a living man, I was enthralled by the tales of the Azotha, our long-lost human predecessors from a bygone age. Their ancient knowledge and artifacts fascinated me.$B$BAlas, the tumultuous situation in Gilneas hindered my research on the Azotha, trapping me within these confining walls. Now, the gates have finally opened, but as a forsaken, venturing into human lands would be my ultimate demise.$B$BHowever, I have heard whispers of a secluded city known as Corthan, nestled in the treacherous Badlands. Legends speak of a powerful and enigmatic Azotha artifact hidden within its abandoned walls—the Hand of Corthan. Although the true nature of this relic eludes me, I am certain that it holds great significance and would be a valuable addition to my collection.' where entry = 40991;
update quest_template set details = 'Greetings, $N.$B$BIt is rare that I admit my incorrect assumptions, but I must atone for this one. I previously thought the ogres of Brol\'ok should be allowed to grow and fester, like a pustulant sore, right next to Ravenshire. Let the living there be the ones to suffer with it.$B$BBut alas, whatever still holds vigil over this godforsaken land has a sense of irony. It was just last night that I saw a group of ogres attack, and kill, one of our own Deathstalkers. Out of my own pocket, I now purchase vengeance. Bring me twenty of their heads, and be rewarded.' where entry = 40854;
-- Add the title Innkeeper to NPC ID 65003.
update creature_template set subname = 'Innkeeper' where entry = 65003;
-- Add the title General Goods Vendor to NPC ID 65002.
update creature_template set subname = 'General Goods' where entry = 65002;
-- NPC ID 61611 should have the Stormwind faction ID.
update creature_template set faction = 72 where entry = 61611;
-- NPC ID 61612 should have the Undercity faction ID.
update creature_template set faction = 68 where entry = 61612;
-- NPC ID 65015 should have the following gossip: Just go. I do not enjoy conversing with your kind anymore. Or rather yet.$B$BMove along.
replace into gossip_menu (entry, text_id, condition_id) VALUES (41541, 30136, '0'); 
replace into broadcast_text (entry, Male_Text) values (30136, 'Just go. I do not enjoy conversing with your kind anymore. Or rather yet.$B$BMove along.');
replace into npc_text (ID, BroadcastTextID0) values (30136, 30136);
update creature_template set gossip_menu_id = 41541 where entry = 65015;
-- NPC ID 65000 should have the following gossip: What is it, mortal? Inside? Yes, you may. I believe you still hold an ability to see that there is nothing that blocks your way in. Correct?
replace into gossip_menu (entry, text_id, condition_id) VALUES (41542, 30137, '0'); 
replace into broadcast_text (entry, Male_Text) values (30137, 'What is it, mortal? Inside? Yes, you may. I believe you still hold an ability to see that there is nothing that blocks your way in. Correct?');
replace into npc_text (ID, BroadcastTextID0) values (30137, 30137);
update creature_template set gossip_menu_id = 41542 where entry = 65000;
-- Fixes item type to idol for a druid idol.
update item_template set subclass = 7 where entry = 61293; -- Idol of the Moonfang
update item_template set spellid_1 = 47357 where entry = 61698; -- Totem of the Calming River
update item_template set max_durability = 120 where entry = 51738; -- Tunnel Fiend Carapace
-- NPC gossip grammar fix.
update broadcast_text set male_text = 'I had always wondered what this place looked like beyond the wall... Now that I\'ve been there I must admit I am disappointed. Perhaps once you have seen one kingdom you\'ve seen them all$B$BYou looking to do some work around here, or just admire the scenery?' where entry = 61289;
-- Lion horn of stormwind.
update spell_template SET Effect2 = 6, Effect3 = 6, effectDieSides2 = 1, effectDieSides3 = 1, effectBaseDice2 = 1, effectBaseDice3 = 1, EffectBasePoints1 = 4, EffectBasePoints2 = 4, EffectBasePoints3 = 4, effectApplyAuraName1 = 138, effectApplyAuraName2 = 140, effectApplyAuraName3 = 65, effectMiscValue2 = 1, effectMiscValue3 = 1, description = 'Increases attack and casting speed by %$s1 for $d.', auraDescription = 'Increases attack speed by %$s1 for $d.' WHERE entry = 18946; -- The Lion Horn of Stormwind (Proc Buff Effect).
update spell_template SET procchance = 2, description = 'When struck in combat has a 2% chance of increasing all party member\'s attack and casting speed by %$18946s1 for $18946d.' WHERE entry = 20847; -- The Lion Horn of Stormwind (Equip Spell).
update spell_template SET description = 'Increases the duration of your Hex by 1.5 secs.' WHERE entry = 45864; -- Hex Mastery.
-- Fix justicar libram.
update item_template set spellid_1 = 45666 where entry = 61337; -- Libram of the Justicar.
-- Rename radio DJ in Everlook to Zappo Zapblast.
update creature_template set name = 'Zappo Zapblast' where entry = 61641;