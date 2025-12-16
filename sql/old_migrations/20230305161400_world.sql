-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2954
UPDATE `quest_template` SET `ZoneOrSort` = 1517 WHERE `entry` = 40129;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2952
UPDATE `quest_template` SET `Details` = 'Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us.$B$BThey made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.$B$BThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here. Head there, and recover 5 Bloodsail Supply Crates.$B$BWhile you\'re there, you may as well kill some to get a payback, we need to keep our image after all.' WHERE `entry` = 40331;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2944
UPDATE `creature_template` SET `armor` = 1373 WHERE `entry` = 7329;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2947
UPDATE `quest_template` SET `Details` = 'It has come to my attention that a dark magic has been growing in power within the region. Our Analyser Wigglestip has documented an extensive amount of magic being introduced into the area.$B$BThere is no doubt that the Shadowsworn would be the ones utilizing such forces. Those that gather around the Altar of Storms are to blame, and our reports only confirm that.$B$BI need someone to dispatch of the Dreadweavers that spread the corruption. Who knows what plans they have in motion, but I do not intend to sit around to find out.' WHERE `entry` = 40434;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2948
UPDATE `spell_template` SET `description` = 'The sword must be reforged before it can be used. Reforging the sword requires 4 Steel Bars, 4 Strong Flux, 2 Elemental Fire and 2 Heavy Grinding Stones.' WHERE `entry` = 11923;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2949
UPDATE `quest_template` SET `ObjectiveText1` = '', `ObjectiveText2` = '' WHERE `entry` = 60074;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2950
UPDATE `creature_template` SET `armor` = 1200, `faction` = 12, `type` = 7 WHERE `entry` = 50028;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2945
UPDATE `creature_template` SET `armor` = 1480 WHERE `entry` = 7328;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2928
UPDATE `quest_template` SET `Details` = 'For thousands of years I have kept my watch over this place. I have seen the world change around me, and most of the old city be swept beneath the waves. The magic that once ran through this place has been dampened and is almost non-existent.$B$BWith the rising waters my studies have been increasingly difficult. To keep watch over this tower is to protect it, and with the growing threat of the invasive ocean species my time has been more toward survival then study.$B$BI ask for assistance in this matter. Slay the murloc, the hydra and the crab beasts around the area to preserve this tower if even for a moment longer.' WHERE `entry` = 40243;

UPDATE `quest_template` SET `OfferRewardText` = 'I can breathe a sigh of relief. At one time I could walk the entirety of the beach, I could journey through the buried ruins of the old city, now submerged beneath the waves, but now, I am confined to this very tower. Perhaps one day I will be free to journey again.' WHERE `entry` = 40243;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2925 	
UPDATE `creature_template` SET `loot_id` = 2673 WHERE `entry` = 2673;
UPDATE `creature_template` SET `loot_id` = 2674 WHERE `entry` = 2674;
UPDATE `creature_template` SET `loot_id` = 12426 WHERE `entry` = 12426;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2606
UPDATE `item_template` SET `class` = 7, `subclass` = 1, `bonding` = 0 WHERE `entry` = 17411;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2594
UPDATE `creature_template` SET `pickpocket_loot_id` = 1711, `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `gold_min` = 127, `gold_max` = 171 WHERE `entry` = 60878;
UPDATE `creature_template` SET `unit_flags` = 32832 WHERE `entry` = 60878;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2926
UPDATE `spell_template` SET `description` = 'Creates a Spellstone for the caster.  When equipped and used, the Spellstone removes all magic effects from the caster and will absorb $128s2 magic damage for $128d.  In addition, equipping the Spellstone improves your chance to get a critical strike with spells by $18384s1%.\n\nConjured items disappear if logged out for more than 15 minutes.' WHERE `entry` = 2362;

UPDATE `item_template` SET `stackable` = 30 WHERE `entry` = 3692;

UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 10 WHERE id  = 2010888; -- Lighthouse Oil Barrel

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2567
-- Attempting to solve this one in a batch:

update quest_template set RewMoneyMaxLevel = (RewXP * 6) where entry > 30000 and RewMoneyMaxLevel < (rewxp * 6) and rewxp > 0 and minlevel < 60;
-- > Affected rows: 1001

-- select entry, rewxp, RewMoneyMaxLevel from quest_template where entry > 30000 and  RewMoneyMaxLevel = 0 and RewXP > 0;
-- update quest_template set rewmoneymaxlevel = (rewxp * 6) where entry > 30000 and  RewMoneyMaxLevel =0 and RewXP > 0 ;
-- 204 quests affected:

UPDATE `quest_template` SET `RewMoneyMaxLevel` = 36000 WHERE `entry` = 40005;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 36000 WHERE `entry` = 40006;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3150 WHERE `entry` = 40535;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4380 WHERE `entry` = 40536;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4500 WHERE `entry` = 40537;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40540;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12000 WHERE `entry` = 40541;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40542;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40543;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40544;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40545;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40546;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40547;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40548;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16500 WHERE `entry` = 40549;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3600 WHERE `entry` = 40550;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40551;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40552;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40553;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5700 WHERE `entry` = 40554;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5100 WHERE `entry` = 40555;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40556;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40557;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 6300 WHERE `entry` = 40558;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5100 WHERE `entry` = 40559;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2100 WHERE `entry` = 40560;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16500 WHERE `entry` = 40561;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17100 WHERE `entry` = 40562;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4800 WHERE `entry` = 40563;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4500 WHERE `entry` = 40564;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 23700 WHERE `entry` = 40565;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40566;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40567;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40568;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10500 WHERE `entry` = 40569;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40570;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40571;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40572;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15900 WHERE `entry` = 40573;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3600 WHERE `entry` = 40574;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40575;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40576;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4800 WHERE `entry` = 40577;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40578;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40579;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2400 WHERE `entry` = 40580;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40581;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4800 WHERE `entry` = 40582;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1050 WHERE `entry` = 40583;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1050 WHERE `entry` = 40584;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1050 WHERE `entry` = 40585;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4680 WHERE `entry` = 40586;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40587;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 40588;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 29700 WHERE `entry` = 40589;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 27300 WHERE `entry` = 40590;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 36900 WHERE `entry` = 40591;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 35100 WHERE `entry` = 40592;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 900 WHERE `entry` = 40593;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1200 WHERE `entry` = 40594;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 900 WHERE `entry` = 40595;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 900 WHERE `entry` = 40596;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2100 WHERE `entry` = 40597;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1500 WHERE `entry` = 40598;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1260 WHERE `entry` = 40599;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 7800 WHERE `entry` = 40600;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2400 WHERE `entry` = 40601;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9600 WHERE `entry` = 40602;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2100 WHERE `entry` = 40603;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17100 WHERE `entry` = 40604;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 13500 WHERE `entry` = 40605;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 6900 WHERE `entry` = 40606;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 29100 WHERE `entry` = 40607;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 13500 WHERE `entry` = 40609;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 14100 WHERE `entry` = 40610;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40611;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 6000 WHERE `entry` = 40612;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15900 WHERE `entry` = 40613;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 21600 WHERE `entry` = 40614;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 22200 WHERE `entry` = 40615;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 24000 WHERE `entry` = 40616;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40617;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2250 WHERE `entry` = 40618;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40619;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15900 WHERE `entry` = 40620;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2100 WHERE `entry` = 40621;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40622;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16500 WHERE `entry` = 40623;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40624;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 6000 WHERE `entry` = 40625;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17700 WHERE `entry` = 40626;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 21600 WHERE `entry` = 40627;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 24000 WHERE `entry` = 40628;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 24000 WHERE `entry` = 40629;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40630;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40631;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1650 WHERE `entry` = 40632;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 6000 WHERE `entry` = 40633;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12600 WHERE `entry` = 40634;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11400 WHERE `entry` = 40635;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9900 WHERE `entry` = 40636;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10500 WHERE `entry` = 40637;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40638;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10200 WHERE `entry` = 40639;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40640;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12900 WHERE `entry` = 40641;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15000 WHERE `entry` = 40642;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 13500 WHERE `entry` = 40643;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10500 WHERE `entry` = 40644;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 450 WHERE `entry` = 40645;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 600 WHERE `entry` = 40646;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12600 WHERE `entry` = 40647;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 18900 WHERE `entry` = 40648;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40649;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40650;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40651;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 18000 WHERE `entry` = 40652;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 20400 WHERE `entry` = 40653;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40654;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 21600 WHERE `entry` = 40655;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 26400 WHERE `entry` = 40656;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 21600 WHERE `entry` = 40657;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 26400 WHERE `entry` = 40658;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40659;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5460 WHERE `entry` = 40660;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1860 WHERE `entry` = 40661;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 660 WHERE `entry` = 40662;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1260 WHERE `entry` = 40663;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 27300 WHERE `entry` = 40664;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 40665;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 40666;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 900 WHERE `entry` = 40667;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1320 WHERE `entry` = 40668;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5520 WHERE `entry` = 40669;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2220 WHERE `entry` = 40670;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1260 WHERE `entry` = 40671;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9000 WHERE `entry` = 40672;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9900 WHERE `entry` = 40673;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 14700 WHERE `entry` = 40674;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40675;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40676;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 16800 WHERE `entry` = 40677;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 14400 WHERE `entry` = 40678;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40679;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40680;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 13200 WHERE `entry` = 40681;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40682;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 9300 WHERE `entry` = 40683;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 720 WHERE `entry` = 40684;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 720 WHERE `entry` = 40685;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4920 WHERE `entry` = 40686;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 20700 WHERE `entry` = 40687;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17700 WHERE `entry` = 40688;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 20700 WHERE `entry` = 40689;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17700 WHERE `entry` = 40690;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 2700 WHERE `entry` = 40691;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40692;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12000 WHERE `entry` = 40693;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40699;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 50700 WHERE `entry` = 40708;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 15300 WHERE `entry` = 40712;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 17100 WHERE `entry` = 40713;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4800 WHERE `entry` = 40714;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 8700 WHERE `entry` = 40715;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1500 WHERE `entry` = 40716;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 21300 WHERE `entry` = 40717;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4500 WHERE `entry` = 40718;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 18900 WHERE `entry` = 40719;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1800 WHERE `entry` = 40720;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40721;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 23700 WHERE `entry` = 40722;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4500 WHERE `entry` = 40723;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 7500 WHERE `entry` = 40743;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4500 WHERE `entry` = 40744;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5100 WHERE `entry` = 40745;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 4800 WHERE `entry` = 40746;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 900 WHERE `entry` = 40747;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 33600 WHERE `entry` = 40748;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 31800 WHERE `entry` = 40757;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 30000 WHERE `entry` = 40772;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 31500 WHERE `entry` = 40773;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 32100 WHERE `entry` = 40774;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 32100 WHERE `entry` = 40775;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 32100 WHERE `entry` = 40776;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1500 WHERE `entry` = 40777;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3000 WHERE `entry` = 40778;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 36000 WHERE `entry` = 40779;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1050 WHERE `entry` = 40780;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1050 WHERE `entry` = 40781;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1500 WHERE `entry` = 40782;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1500 WHERE `entry` = 40783;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40784;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 33900 WHERE `entry` = 40786;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 37500 WHERE `entry` = 40787;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 32700 WHERE `entry` = 40788;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5100 WHERE `entry` = 40789;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 7200 WHERE `entry` = 40790;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 7500 WHERE `entry` = 40791;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 11100 WHERE `entry` = 40792;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12000 WHERE `entry` = 40793;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 7200 WHERE `entry` = 40794;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 12900 WHERE `entry` = 40796;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 10800 WHERE `entry` = 40797;

-- Nerf some insane numbers:

DELETE FROM `quest_template` WHERE `entry` = 50226;

UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 50322;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 50323;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 50330;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 50331;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 50332;
UPDATE `quest_template` SET `RewXP` = 3667, `RewMoneyMaxLevel` = 22002 WHERE `entry` = 60010;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 60035;
UPDATE `quest_template` SET `RewXP` = 6667, `RewMoneyMaxLevel` = 40002 WHERE `entry` = 60036;
UPDATE `quest_template` SET `RewXP` = 3667, `RewMoneyMaxLevel` = 22002 WHERE `entry` = 60065;
