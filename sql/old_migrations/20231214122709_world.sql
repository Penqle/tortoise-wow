-- Thalassian Highlands NPC and Quest fixes:
-- Add quest flag to npcs:
update creature_template set npc_flags = 2 where entry = 61811; -- Calhir Dawnchaser
update creature_template set npc_flags = 2 where entry = 61821; -- Maelor Steelguard
update creature_template set npc_flags = 2 where entry = 61815; -- Fainriel Silverharp
update creature_template set npc_flags = 2 where entry = 61816; -- Taliren Lightborn
update creature_template set npc_flags = 2 where entry = 61806; -- Liadrin
update creature_template set npc_flags = 2 where entry = 61879; -- Relaina Whiteshore
update creature_template set npc_flags = 2 where entry = 61818; -- Kaelin Bladesong
update creature_template set npc_flags = 2 where entry = 61796; -- Ordenal Owlmane
update creature_template set npc_flags = 2 where entry = 61798; -- Viz'neya Firefly
update creature_template set npc_flags = 2 where entry = 61845; -- Rine
update creature_template set npc_flags = 2 where entry = 61823; -- Melanthe Shadesong
update creature_template set npc_flags = 2 where entry = 61824; -- Nirenia Swiftsun
update creature_template set npc_flags = 2 where entry = 61827; -- Saelyn Seastrider
update creature_template set npc_flags = 3 where entry = 61832; -- Vanudal Goldweaver
update creature_template set npc_flags = 3 where entry = 61799; -- Lor'themar Theron
update creature_template set npc_flags = 18 where entry = 80247; -- Larane Dawnbringer
update creature_template set npc_flags = 18 where entry = 80248; -- Loriel
update creature_template set npc_flags = 18 where entry = 80246; -- Grand Magistrix Merisa Dawnbreaker
update creature_template set npc_flags = 18 where entry = 80244; -- Andalideth Suncaller

-- Quest Magically Sealed Letter should be available only to high elf mage.
update quest_template set requiredraces = 512		 where entry = 41226;
update quest_template set requiredclasses = 128		 where entry = 41226;
-- Quest Elegant Letter should be available only to high elf paladin.
update quest_template set requiredraces = 512		 where entry = 41227;
update quest_template set requiredclasses = 2		 where entry = 41227;
-- Quest Blessed Elegant Letter should be available only to high elf priest.
update quest_template set requiredraces = 512		 where entry = 41228;
update quest_template set requiredclasses = 16		 where entry = 41228;
-- Quest Shady Letter should be available only to high elf rogue.
update quest_template set requiredraces = 512		 where entry = 41229;
update quest_template set requiredclasses = 8		 where entry = 41229;
-- Quest Plain Letter should be available only to high elf warrior.
update quest_template set requiredraces = 512		 where entry = 41230;
update quest_template set requiredclasses = 1		 where entry = 41230;
-- Quest Feathered Letter should be available only to high elf hunter.
update quest_template set requiredraces = 512		 where entry = 41231;
update quest_template set requiredclasses = 4		 where entry = 41231;

-- Item Magically Sealed Letter should be readable with text:
-- The loss of the Sunwell has affected us all, some more profoundly than others. Our daily use of the arcane has been curtailed. Unfortunately, some individuals have miscalculated the severity of the situation and have now fallen prey to their hunger, transforming into the withered.$B$BAs a promising mage apprentice, times may prove to be quite challenging for you. With the arcane being your primary source of power, you must possess the control and discipline to comprehend your limitations. Seek me out on the lower level of the main building, where our journey together can commence.
update item_template set description = '', page_text = 50686 where entry = 41172;
-- Item  Elegant Letter should be readable with text:
-- Light be with you, aspirant. I am Lor\'thas, a Paladin, like yourself. I write this letter to inform you of my presence in the academy and to offer you advice and training. You are surely aware of our new condition that, sadly, cannot be prevented. However, we may prolong its inevitable onset.$B$BThe Light offers us discipline and salvation, though what we truly seek is redemption and justice. Under its brightness, the Light shall provide us a chance to repay the Scourge a debt long overdue. You shall find me on the lower level of the main building.
update item_template set description = '', page_text = 50687 where entry = 41173;
-- Item Shady Letter should be readable with text:
-- Thief, scoundrel, and outlaw: these names defined you before the fall of your homeland.$B$BIt seems that fate smiles upon you, for no one shall concern themselves with your past if you are willing to contribute to the greater cause. But I, who remember you, am interested in your change of heart.$B$BFear not, for my anger has subsided, and I am interested in your ability to endure the darkest aspects of Silvermoon. Join me, and together let us embrace these shadows, for you will never be wealthy, but your hunger will never again consume you.$B$BYou will find me to the left of the Golden Ranger.”
update item_template set description = '', page_text = 50689 where entry = 41175;
-- Item Plain Letter should be readable with text:
-- Anger can become your most powerful weapon as long as you do not let it eat away at you. Despite our losses, do you not perceive that many of the others have simply accepted their despair instead of channeling their willpower to reclaim and avenge?$B$BMy blade swirls with grace and poise, akin to how the leaves dance amid autumn. So too shall yours, if you join me for a lesson or two in mastering it. Perceive your anger as a tool. Tame it so that those who perish at your hands will be awed by your craft. I will be waiting for you in the smaller building to the left of the Golden Ranger.
update item_template set description = '', page_text = 50690 where entry = 41176;
-- Item Blessed Elegant Letter should be readable with text:
-- Blessings of the Sun.$B$BI am pleased to learn that another devotee of faith has joined our cause. Many of our people were not previously eager to embrace the Light, even before the Scourge's attack. Some believers even abandoned their faith after the loss of our homeland.$B$BNonetheless, the Light's smallest glimmer shines even in the darkest cave. Thus, you and I are tasked with guiding our people back to their faith and helping them through these times of adversity. Though the Sunwell is gone, the Sun continues to shine brightly. Don't forget we are here to aid, heal, and support our people, which is precisely what they need now. If you seek my guidance or instruction, you shall locate me on the lower level of the main building.
update item_template set description = '', page_text = 50688 where entry = 41174;
-- Item Feathered Letter should be readable with text:
-- I greet you, fellow ranger-in-training. I appreciate the way you carry yourself and the determination you demonstrate in following the footsteps of our renowned brethren.$B$BBefore the fall of Quel'Thalas, I was a freshly inducted member of the Farstriders, a contingent of skilled rangers who ventured beyond our borders to guard our lands and honor. The legacy of the Farstriders has been diminished during these trying times. However, I believe we can restore it, albeit gradually, together. Meet with me; I will be somewhere in the outskirts of Brinthilien.
update item_template set description = '', page_text = 50691 where entry = 41177;

-- Add gossip flag and gossip text to npc Tenris Mirkblood:
update creature_template set npc_flags = 1 where entry = 61772;
-- Remove gossip flag from npc Ka\'zmir Somberwind:
delete from gossip_menu where entry = 41574 and text_id = 60961;
update creature_template set npc_flags = 2, gossip_menu_id = 0 where entry = 61852;

-- Add gossip text to Magister Sylvus Silkspinner:
set @gossip_menu_id = 41595; set @magic_number = 61822;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Enchanting is a noble art. Can you handle it?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set npc_flags = 17, gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Npc Brindel Morningsun should have a trainer flag and teach Mining rank 1.
update creature_template set npc_flags = 16, trainer_type = 2 where entry = 61882;
-- Npc Verrus Trueshine should have a trainer flag and teach cooking rank 1 and all journeyman recipes.
update creature_template set npc_flags = 16, trainer_type = 2 where entry = 61883;
 
-- Change main description of quest Kingsbane to:
update quest_template set details = 'Ah, an adventurer...$B$B<Astalor\'s face contorts with disdain.>$B$BThere is a delicate matter at hand, and I require assistance in a manner that leaves no trace leading back to me. I\'ve recently discovered that one of the distant cousins to the traitorous Prince Kael\'thas still lives and commands the forces of Felstrider Retreat.$B$BAs you can undoubtedly surmise, having a Sunstrider alive poses a considerable issue, as many may perceive his claim to the throne as legitimate. I require him eliminated. Assemble a formidable party, dispatch him, and dispose of his body in a lake.$B$BOnce the grim task is accomplished, present his signet as proof to Melathe Shadesong. Ensure that no one discovers it was I who... suggested this undertaking.' where entry = 41252;

-- Create gobject using display id 218 named "Memorial Plaque" that on interactiong opens a text window:
replace INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50693, 'To the fallen of Quel\'Thalas, whose courage faced death unflinchingly, we pledge eternal honor. May the radiant embrace of the Eternal Sun guide your journey beyond, where your valor echoes among the stars. Your legacy, woven into the fabric of time, remains an undying flame in our hearts. In twilight\'s embrace, we declare that the fallen of Quel\'Thalas shall forever be remembered for their unyielding spirit and sacrifice.', 0);

replace INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020085, 9, 218, 'Memorial Plaque', 0, 0, 1, 50693, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Create gobject using display id 29624 named "Magister Translocation Orb" that on interacting moves the player to X:4314 Y:-3089 Z:37 Eastern Kingdoms.
replace INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020086, 2, 29624, 'Magister Translocation Orb', 0, 32, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_magister_translocation_orb'),
-- Create gobject using display id 29624 named "Council Translocation Orb" that on interacting moves the player to X:4310 Y:-3046 Z: 148 Eastern Kingdoms.
(2020087, 2, 29624, 'Council Translocation Orb', 0, 32, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_council_translocation_orb');

replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30167, 'Teleportation', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Blackstone trainers: trainer types fix.
update creature_template set trainer_type = 0 where entry in (80104, 80105, 80107, 80108, 80106);

-- Change main description of quest Thalassian Goulash to:
update quest_template set details = 'Hey there! New face, right? Pleasure\'s mine – I\'m Dalicia, but you can just call me Dal! Been part of Alah\'Thalas since its very beginnings, and let me tell you, I\'ve been putting my culinary skills to work around here. I\'m the resident cook, and if I do say so myself, the rations these refugees are getting are downright laughable. Dry meat, and Elwynn\'s rotting grain? Not exactly fit for the Quel\'dorei palate.$B$BNow, here\'s the thing: I\'m itching to whip up my famous goulash, but they\'re not letting me get my hands on the right ingredients. If you could do me a solid and gather some Forest Hawkstrider legs and Lynx steaks, we\'ll have a feast fit for our people in no time! Let\'s turn this drab menu into something worth savoring!' where entry = 41190;