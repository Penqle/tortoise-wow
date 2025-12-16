/*
 Navicat MySQL Data Transfer

 Source Server         : _localhost
 Source Server Type    : MariaDB
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tw_world

 Target Server Type    : MariaDB
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 11/01/2024 13:18:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for locales_faction
-- ----------------------------
DROP TABLE IF EXISTS `locales_faction`;
CREATE TABLE `locales_faction`  (
  `entry` int(10) UNSIGNED NOT NULL,
  `name_loc0` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc1` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc2` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc3` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc4` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc5` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_loc6` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc0` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc1` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc2` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc3` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc4` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc5` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_loc6` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_faction
-- ----------------------------
INSERT INTO `locales_faction` VALUES (1, 'PLAYER, Human', '', '', '', '人类(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (2, 'PLAYER, Orc', '', '', '', '兽人(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (3, 'PLAYER, Dwarf', '', '', '', '矮人(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (4, 'PLAYER, Night Elf', '', '', '', '暗夜精灵(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (5, 'PLAYER, Undead', '', '', '', '亡灵(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (6, 'PLAYER, Tauren ', '', '', '', '牛头人(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (7, 'Creature', '', '', '', '生物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (8, 'PLAYER, Gnome', '', '', '', '侏儒(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (9, 'PLAYER, Troll', '', '', '', '巨魔(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (14, 'Monster', '', '', '', '怪物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (15, 'Defias Brotherhood', '', '', '', '迪菲亚盗贼', '', '', 'The Defias Brotherhood is a criminal organization seeking to tear down the Stormwind ruling class and establish a new society through revolution. The Defias are not beyond working with dangerous beings to achieve their goals.', '', '', '', '迪菲亚兄弟会是一个犯罪组织，旨在通过革命推翻暴风城的统治阶级，并建立一个新的社会秩序。迪菲亚兄弟会为了实现自己的目标，不惜与危险的存在合作。', '', '');
INSERT INTO `locales_faction` VALUES (16, 'Riverpaw Gnolls', '', '', '', '河爪豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (17, 'Gnoll - Redridge', '', '', '', '赤脊山豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (18, 'Gnoll - Shadowhide', '', '', '', '暗皮豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (19, 'Murloc', '', '', '', '鱼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (20, 'Undead', '', '', '', '亡灵(天灾军团)', '', '', 'Undead', '', '', '', '亡灵', '', '');
INSERT INTO `locales_faction` VALUES (21, 'Booty Bay', '', '', '', '藏宝海湾', '', '', 'This booming coastal city is run by Baron Revilgaz of the Blackwater Raiders.  Mortal enemies of the Bloodsail Buccaneers and part of the Steamwheedle Cartel.', '', '', '', '一个由黑水海盗的头目，大财主里维加兹经营的繁荣的海港城市。它也是热砂集团的一部分，主要仇敌是血帆海盗。', '', '');
INSERT INTO `locales_faction` VALUES (22, 'Beast - Spider', '', '', '', '蜘蛛', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (23, 'Beast - Boar', '', '', '', '野猪', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (24, 'Worgen', '', '', '', '狼人', '', '', 'The Worgen are mysterious beings summoned from another dimension. Their intentions and purpose is unknown.', '', '', '', '狼人是从另一个维度召唤而来的神秘存在。它们的意图和目的至今仍然未知。', '', '');
INSERT INTO `locales_faction` VALUES (25, 'Kobold', '', '', '', '狗头人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (26, 'Troll, Bloodscalp', '', '', '', '血顶巨魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (27, 'Troll, Skullsplitter', '', '', '', '劈颅巨魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (28, 'Prey', '', '', '', '猎物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (29, 'Beast - Wolf', '', '', '', '狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (30, 'Defias Brotherhood Traitor', '', '', '', '叛变的迪菲亚盗贼(艾泽拉斯)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (31, 'Friendly', '', '', '', '友方', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (32, 'Trogg', '', '', '', '石腭怪', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (33, 'Frostmane Tribe', '', '', '', '霜鬃部落', '', '', 'The Frostmane is a tribe of Ice Trolls making a meager living within Dun Morogh at odds with the Dwarven and Gnomish inhabitants of the region.', '', '', '', '霜鬃部族是一群冰巨魔，居住在丹莫罗，与该地区的矮人和侏儒居民之间存在着冲突。在这里，霜鬃部族勉强维持生计。', '', '');
INSERT INTO `locales_faction` VALUES (34, 'Orc, Blackrock', '', '', '', '黑石氏族兽人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (35, 'Villian', '', '', '', '恶徒', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (36, 'Victim', '', '', '', '牺牲品', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (37, 'Beast - Bear', '', '', '', '熊', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (38, 'Ogre', '', '', '', '食人魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (39, 'Kurzen\'s Mercenaries', '', '', '', '库森的雇佣兵', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (40, 'Escortee', '', '', '', '卫队', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (41, 'Venture Company', '', '', '', '荆棘谷地精', '', '', 'The Venture Company is a Goblin-run cutthroat organization that seeks to attain profit at any cost. The Venture Company will employ anyone they find useful and treat it\'s workers fairly in order to gain the greatest profit possible.', '', '', '', '风险投资公司是由地精经营的残忍组织，不惜一切代价追求利润。该公司雇佣任何他们认为有用的人，并公平对待他们的工人，以获得最大的利润。', '', '');
INSERT INTO `locales_faction` VALUES (42, 'Beast - Raptor', '', '', '', '迅猛龙', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (43, 'Basilisk', '', '', '', '石化蜥蜴', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (44, 'Trash', '', '', '', '绿龙', '', '', 'Ass', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (45, 'Lost Ones', '', '', '', '失落者', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (46, ' Blacksmithing - Armorsmithing', '', '', '', '斯通纳德兽人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (47, 'Ironforge', '', '', '', '铁炉堡', '', '', 'This Alliance capital is the pride of the Dun Morogh dwarves.  Home to King Magni.', '', '', '', '这座联盟的大都市是丹莫罗矮人们的骄傲，也是麦格尼国王的家。', '', '');
INSERT INTO `locales_faction` VALUES (48, 'Dark Iron Dwarves', '', '', '', '黑铁矮人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (49, 'Human, Night Watch', '', '', '', '暮色森林守夜人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (50, 'Rubbish', '', '', '', '红龙', '', '', 'Ass', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (51, 'Gnoll - Mosshide', '', '', '', '藓皮豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (52, 'Orc, Dragonmaw', '', '', '', '龙喉氏族兽人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (53, 'Gnome - Leper', '', '', '', '疯狂侏儒', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (54, 'Gnomeregan Exiles', '', '', '', '诺莫瑞根流亡者', '', '', 'The former denizens of Gnomeregan, now living in exile within the Gnomeregan Reclamation Facility in Dun Morogh, trying to reclaim their home.', '', '', '', '诺莫瑞根以前的居民，现在流亡到了铁炉堡并居住在此，联盟方的重要成员。', '', '');
INSERT INTO `locales_faction` VALUES (55, 'Leopard', '', '', '', '豹', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (56, 'Scarlet Crusade', '', '', '', '血色十字军', '', '', 'The Scarlet Crusade is a religious organization dedicated to the eradication of the undead. They seldom trust outsiders, believing them to carry the Plague of Undeath.', '', '', '', '血色十字军是一个宗教组织，致力于根除亡灵。他们很少信任外来者，认为他们携带着亡灵瘟疫。', '', '');
INSERT INTO `locales_faction` VALUES (57, 'Gnoll - Rothide', '', '', '', '烂皮豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (58, 'Beast - Gorilla', '', '', '', '猩猩', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (59, 'Thorium Brotherhood', '', '', '', '瑟银兄弟会', '', '', 'The dwarves of the Thorium Brotherhood epitomize excellence in craftsmanship and are bent on unlocking the secrets of Blackrock Mountain.', '', '', '', '瑟银兄弟会的矮人有着无与伦比的制造技术，并致力于解开黑石山中的全部秘密。', '', '');
INSERT INTO `locales_faction` VALUES (60, 'Naga', '', '', '', '纳迦', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (61, 'Dalaran', '', '', '', '达拉然', '', '', 'The once mighty magical citystate of Dalaran was destroyed by the Burning Legion. Today its surviving inhabitants struggle to rebuild their home and defend their territories from the Horde and the Scourge.', '', '', '', '曾经强大的魔法城市达拉然被燃烧军团摧毁。如今，幸存的居民们努力重建他们的家园，并从部落和天灾军团手中保卫自己的领土。', '', '');
INSERT INTO `locales_faction` VALUES (62, 'Forlorn Spirit', '', '', '', '弃灵', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (63, 'Darkhowl', '', '', '', '暗吼', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (64, 'Grell', '', '', '', '劣魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (65, 'Furbolg', '', '', '', '熊怪', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (66, 'Horde Affiliates', '', '', '', '部落友军', '', '', 'Individuals, groups, and settlements affiliated with the Horde.', '', '', '', '与部落有关的个人、团队和定居点。', '', '');
INSERT INTO `locales_faction` VALUES (67, 'Horde', '', '', '', '部落', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (68, 'Undercity', '', '', '', '幽暗城', '', '', 'Led by Sylvanas Windrunner, the Forsaken have joined a tenuous alliance with the Horde and established this capital in the vast depths under the Ruins of Lordaeron.', '', '', '', '希尔瓦娜斯·风行者领导下的被遗忘者与部落之间建立起了微弱的同盟关系，并在洛丹伦地下遗迹的深处建立起了这座城市。', '', '');
INSERT INTO `locales_faction` VALUES (69, 'Darnassus', '', '', '', '达纳苏斯', '', '', 'The Alliance capital is populated by Night Elves and is located in the island of Teldrassil.  Ruled by the Priestess of the Moon, Tyrande Whisperwind.', '', '', '', '坐落在泰达希尔岛上的联盟城市，暗夜精灵的首都，由月女祭司泰兰德·语风统治。', '', '');
INSERT INTO `locales_faction` VALUES (70, 'Syndicate', '', '', '', '辛迪加', '', '', 'A primarily human criminal organization that operates mostly out of the Alterac Mountains and Hillsbrad Foothills.', '', '', '', '一个主要由人类组成的犯罪组织，目前占据着奥特兰克山脉与希尔斯布莱德丘陵的部分地区。', '', '');
INSERT INTO `locales_faction` VALUES (71, 'Hillsbrad Militia', '', '', '', '希尔斯布莱德民兵', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (72, 'Stormwind', '', '', '', '暴风城', '', '', 'One of the last bastions of human power, this Alliance capital is ruled by the child king, Anduin Wrynn.', '', '', '', '这座人类势力的最后堡垒目前由年轻的国王安度因·乌瑞恩统治着。', '', '');
INSERT INTO `locales_faction` VALUES (73, 'Demon', '', '', '', '恶魔', '', '', 'Demon', '', '', '', 'Demon', '', '');
INSERT INTO `locales_faction` VALUES (74, 'Elemental', '', '', '', '元素生物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (75, 'Spirit', '', '', '', '灵魂', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (76, 'Orgrimmar', '', '', '', '奥格瑞玛', '', '', 'Founded by Thrall, this Horde capital city is home to many of the proud orc clans of Durotar.', '', '', '', '这座由萨尔建立的部落城市是许多兽人氏族的家园。', '', '');
INSERT INTO `locales_faction` VALUES (77, 'Treasure', '', '', '', '宝物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (78, 'Gnoll - Mudsnout', '', '', '', '泥嘴豺狼人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (79, 'HIllsbrad, Southshore Mayor', '', '', '', '希尔斯布莱德，南海镇', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (80, 'Brood of Deathwing', '', '', '', '黑龙', '', '', 'The children of what was once Neltharion, the Earth Warder. The Black Dragonflight only seeks to consume and corrupt the world while serving their insane dark master.', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (81, 'Thunder Bluff', '', '', '', '雷霆崖', '', '', 'Cairne Bloodhoof leads his people, the Proud Tauren, from this mighty Horde capital.', '', '', '', '凯恩·血蹄及其领导下的牛头人的家园，壮丽而伟大的部落城市。', '', '');
INSERT INTO `locales_faction` VALUES (82, 'Troll, Witherbark', '', '', '', '枯木巨魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (83, ' Leatherworking - Elemental', '', '', '', '怪物 - 无组织', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (84, 'Quilboar, Razormane', '', '', '', '钢鬃野猪人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (85, 'Quilboar, Bristleback', '', '', '', '刺背野猪人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (86, ' Leatherworking - Dragonscale', '', '', '', '怪物 - 有组织', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (87, 'Bloodsail Buccaneers', '', '', '', '血帆海盗', '', '', 'These bloodthirsty corsairs are the bane of many a merchant in the high seas.  Sworn enemies of Booty Bay.', '', '', '', '一群嗜血的海盗，所有海上商人的公敌。藏宝海湾的死敌。', '', '');
INSERT INTO `locales_faction` VALUES (88, 'Blackfathom', '', '', '', '黑暗深渊', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (89, 'Makrura', '', '', '', '龙虾人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (90, 'Kolkar Clan Centaur', '', '', '', '科卡尔半人马', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (91, 'Galak Clan Centaur', '', '', '', '加拉克半人马', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (92, 'Gelkis Clan Centaur', '', '', '', '吉尔吉斯半人马', '', '', 'These centaur have made their home in the southern region of Desolace.  Mortal enemies of the Magram Centaur.', '', '', '', '一群居住在凄凉之地南方的半人马，玛格拉姆半人马的仇敌。', '', '');
INSERT INTO `locales_faction` VALUES (93, 'Magram Clan Centaur', '', '', '', '玛格拉姆半人马', '', '', 'These centaur have made their home in the eastern region of Desolace.  Mortal enemies of the Gelkis Centaur.', '', '', '', '一群居住在凄凉之地东部的半人马，吉尔吉斯半人马的仇敌。', '', '');
INSERT INTO `locales_faction` VALUES (94, 'Maraudine Clan Centaur', '', '', '', '玛洛迪', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (108, 'Theramore', '', '', '', '塞拉摩', '', '', 'Theramore Isle was settled by Jaina Proudmoore and the refugees who fled from Lordaeron and its neighboring kingdoms. Following the Battle at Mount Hyjal, Theramore has maintained cordial ties with the Horde and sought peace. ', '', '', '', '塞拉摩岛是由吉安娜·普罗德摩尔和那些逃离洛丹伦及其周边王国的难民所建立的。在海加尔山之战后，塞拉摩与部落保持友好关系并寻求和平。', '', '');
INSERT INTO `locales_faction` VALUES (109, 'Quilboar, Razorfen', '', '', '', '剃刀沼泽野猪人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (110, 'Quilboar, Razormane 2', '', '', '', '钢鬃野猪人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (111, 'Quilboar, Deathshead', '', '', '', '骷髅野猪人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (128, 'Enemy', '', '', '', '敌人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (148, 'Ambient', '', '', '', '小动物', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (168, 'Nethergarde Caravan', '', '', '', '奈瑟加德商队', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (169, 'Steamwheedle Cartel', '', '', '', '热砂港', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (189, 'Alliance Affiliates', '', '', '', '联盟', '', '', 'Individuals, groups, and settlements affiliated with the Alliance.', '', '', '', '与联盟有关的个人、团队和定居点。', '', '');
INSERT INTO `locales_faction` VALUES (209, 'Nethergarde', '', '', '', '守望堡', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (229, 'Wailing Caverns', '', '', '', '哀嚎洞穴', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (249, 'Silithid', '', '', '', '异种蝎', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (269, 'Silvermoon Remnant', '', '', '', '银月幸存者', '', '', 'The remaining high elves are reeling from the loss of their homeland and the Sunwell. They have rallied behind the Alliance as their people struggle to survive.', '', '', '', '剩余的高等精灵因失去家园和太阳之井而备受打击。他们团结在联盟旗下，为了生存而奋斗。', '', '');
INSERT INTO `locales_faction` VALUES (270, 'Zandalar Tribe', '', '', '', '赞达拉部族', '', '', 'These trolls have come to Yojamba Isle in an effort to recruit help against the resurrected Blood God and his Atal\'ai Priests in Zul\'Gurub.', '', '', '', '这群居住在尤亚姆巴岛的巨魔正在努力招募全世界的勇士，希望他们能够帮助自己对抗祖尔格拉布中的邪神哈卡以及他的阿塔莱祭司们。', '', '');
INSERT INTO `locales_faction` VALUES (289, ' Blacksmithing - Weaponsmithing', '', '', '', '黑水海盗', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (309, 'Scorpid', '', '', '', '蝎子', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (310, 'Beast - Bat', '', '', '', '蝙蝠', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (311, 'Titan', '', '', '', '泰坦', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (329, 'Taskmaster Fizzule', '', '', '', '工头费苏勒', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (349, 'Ravenholdt', '', '', '', '拉文霍德', '', '', 'This guild of thieves and assassins welcomes only those of extraordinary prowess into its fold.  Sworn rivals of the Syndicate.', '', '', '', '这个由盗贼与刺客组成的行会只欢迎那些有着出色实力的人进入他们的领地。他们也是辛迪加的仇敌。', '', '');
INSERT INTO `locales_faction` VALUES (369, 'Gadgetzan', '', '', '', '加基森', '', '', 'Capital of the Steamwheedle Cartel and home to goblinhood\'s finest engineers, alchemists and merchants.', '', '', '', '热砂集团的首府，诸多优秀地精技师、炼金师和商人的家乡。', '', '');
INSERT INTO `locales_faction` VALUES (389, 'Gnomeregan Bug', '', '', '', '诺莫瑞根虫子', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (409, 'Harpy', '', '', '', '鹰身人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (429, 'Burning Blade', '', '', '', '火刃氏族', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (449, 'Shadowsilk Poacher', '', '', '', '暗影蛛丝偷猎者', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (450, 'Searing Spider', '', '', '', '灼热蜘蛛', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (469, 'Alliance', '', '', '', '联盟', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (470, 'Ratchet', '', '', '', '棘齿城', '', '', 'Part of the Steamwheedle Cartel, this goblin city provides a neutral haven for those that wish to trade goods and services in the Barrens.', '', '', '', '热砂集团的成员，这座城市给许多希望在贫瘠之地做生意的人提供了一个开放和中立的天堂。', '', '');
INSERT INTO `locales_faction` VALUES (471, 'Wildhammer Clan', '', '', '', '蛮锤部族', '', '', 'Though not a part of the Alliance, the dwarves of Aerie Peak have opened their doors to it and hold the Horde as enemies.', '', '', '', '尽管并非是联盟的一份子，但鹰巢山的矮人还是将联盟视为他们的朋友，并与部落保持着交战关系。', '', '');
INSERT INTO `locales_faction` VALUES (489, 'Goblin, Dark Iron Bar Patron', '', '', '', '黑铁酒吧地精老板', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (509, 'The League of Arathor', '', '', '', '阿拉索联军', '', '', 'The League of Arathor seeks to reclaim lost land of Arathi Basin for their benefactors in Stormwind.', '', '', '', '阿拉索联军正试图为暴风城夺回阿拉希盆地。', '', '');
INSERT INTO `locales_faction` VALUES (510, 'The Defilers', '', '', '', '污染者', '', '', 'The Defilers seek to claim Arathi Basin\'s valuable resources for the Horde.', '', '', '', '污染者试图为部落夺取阿拉希盆地的重要资源。', '', '');
INSERT INTO `locales_faction` VALUES (511, 'Giant', '', '', '', '巨人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (529, 'Argent Dawn', '', '', '', '银色黎明', '', '', 'An organization focused on protecting Azeroth from the threat of the Scourge.  Strongholds of the Argent Dawn can be found in the Eastern and Western Plaguelands.', '', '', '', '一个致力于从亡灵天灾军团的威胁下拯救艾泽拉斯世界的组织。银色黎明的据点遍布东西瘟疫之地。', '', '');
INSERT INTO `locales_faction` VALUES (530, 'Darkspear Trolls', '', '', '', '暗矛巨魔', '', '', 'This tribe of exiled trolls has joined forces with Thrall and the Horde.  They now call Durotar their home, which they share with their orc allies.', '', '', '', '一群被放逐的巨魔，加入了萨尔领导下的部落。他们现在将杜隆塔尔当作自己的新家，并与兽人盟友们一起生活在那里。', '', '');
INSERT INTO `locales_faction` VALUES (531, 'Dragonflight, Bronze', '', '', '', '青铜龙军团', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (532, 'Garbage', '', '', '', '蓝龙军团', '', '', 'Shit', '', '', '', 'Shit', '', '');
INSERT INTO `locales_faction` VALUES (549, ' Leatherworking - Tribal', '', '', '', '制皮 - 部落', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (550, ' Engineering - Goblin', '', '', '', '工程学 - 地精', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (551, ' Engineering - Gnome', '', '', '', '工程学 - 侏儒', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (569, ' Blacksmithing - Hammersmithing', '', '', '', '锻造- 锤类锻造', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (570, ' Blacksmithing - Axesmithing', '', '', '', '锻造- 斧类锻造', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (571, ' Blacksmithing - Swordsmithing', '', '', '', '锻造- 剑类锻造', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (572, 'Troll, Vilebranch', '', '', '', '邪枝巨魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (573, 'Southsea Freebooters', '', '', '', '南海海盗', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (574, 'Caer Darrow', '', '', '', '凯尔达隆', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (575, 'Furbolg, Uncorrupted', '', '', '', '未堕落的熊怪', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (576, 'Timbermaw Hold', '', '', '', '木喉要塞', '', '', 'As the last uncorrupted furbolg tribe, the Timbermaw seek to preserve their spiritual ways and end the suffering of their brethren.', '', '', '', '作为最后一支尚未堕落的熊怪部族，木喉部族正致力于保留他们那种独特的精神修行之道，并试图终结其他熊怪部族的痛苦。', '', '');
INSERT INTO `locales_faction` VALUES (577, 'Everlook', '', '', '', '永望镇', '', '', 'This trading post is run by the goblins of the Steamwheedle Cartel and it sits in the crossroads of Winterspring\'s main trade routes.', '', '', '', '热砂集团经营之下的一座贸易城市，坐落于冬泉谷的两条主要干道的交叉处。', '', '');
INSERT INTO `locales_faction` VALUES (589, 'Wintersaber Trainers', '', '', '', '冬刃豹训练师', '', '', 'This small group of reclusive night elves raises and trains wintersabers in the Winterspring area.', '', '', '', '这是一些专门在冬泉谷地区驯养冬泉霜刃豹的暗夜精灵。', '', '');
INSERT INTO `locales_faction` VALUES (609, 'Cenarion Circle', '', '', '', '塞纳里奥议会', '', '', 'The druids of Cenarion Circle are guardians of nature and make their home in tranquil Moonglade.', '', '', '', '塞纳里奥议会的德鲁伊是自然的守卫者，他们定居于宁静的月光林地。', '', '');
INSERT INTO `locales_faction` VALUES (629, 'Shatterspear Trolls', '', '', '', '断矛巨魔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (630, 'Ravasaur Trainers', '', '', '', '暴掠龙训练师', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (649, 'Majordomo Executus', '', '', '', '管理者埃克索图斯', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (669, 'Beast - Carrion Bird', '', '', '', '野兽 - 秃鹫', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (670, 'Beast - Cat', '', '', '', '野兽 - 猫', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (671, 'Beast - Crab', '', '', '', '野兽 - 螃蟹', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (672, 'Beast - Crocilisk', '', '', '', '野兽 - 鳄鱼', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (673, 'Beast - Hyena', '', '', '', '野兽 - 鬣狗', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (674, 'Beast - Owl', '', '', '', '野兽 - 猫头鹰', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (675, 'Beast - Scorpid', '', '', '', '野兽 - 蝎子', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (676, 'Beast - Tallstrider', '', '', '', '野兽 - 陆行鸟', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (677, 'Beast - Turtle', '', '', '', '野兽 - 乌龟', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (678, 'Beast - Wind Serpent', '', '', '', '野兽 - 风蛇', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (679, 'Training Dummy', '', '', '', '训练假人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (689, 'Dragonflight, Black - Bait', '', '', '', '黑龙军团 - 诱饵', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (709, 'Battleground Neutral', '', '', '', '战场中立单位', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (729, 'Frostwolf Clan', '', '', '', '霜狼氏族', '', '', 'The Frostwolf Clan seeks to drive out the dwarves of the Stormpike Expedition from Alterac Valley.', '', '', '', '霜狼氏族正在努力将雷矛探险队赶出奥特兰克山谷。', '', '');
INSERT INTO `locales_faction` VALUES (730, 'Stormpike Guard', '', '', '', '雷矛卫队', '', '', 'The Stormpike Dwarves have set up residence in Alterac Valley, where they\'re locked in battle with the Frostwolf Orcs.', '', '', '', '一群在奥特兰克山谷建立了永久居所的矮人，正与霜狼氏族的兽人激烈交战中。', '', '');
INSERT INTO `locales_faction` VALUES (749, 'Hydraxian Waterlords', '', '', '', '海达希亚水元素', '', '', 'These elementals have made their home on the islands east of Azshara.  Sworn enemies of the armies of Ragnaros.', '', '', '', '这些元素生物定居于艾萨拉的东部的一座小岛上，是拉格纳罗斯及其军团的死敌。', '', '');
INSERT INTO `locales_faction` VALUES (750, 'Sulfuron Firelords', '', '', '', '萨弗隆火元素', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (769, 'Gizlock\'s Dummy', '', '', '', '吉兹洛克的假人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (770, 'Gizlock\'s Charm', '', '', '', '吉兹洛克的护符', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (771, 'Gizlock', '', '', '', '吉兹洛克', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (789, 'Moro\'gai', '', '', '', '莫洛加', '', '', 'This faction of Draenei from across the Dark portal is trying to make a new home in the Swamps of Sorrow while beset by strife and the madness of their kin.', '', '', '', '这支来自黑暗之门的德莱尼阵营正试图在悲伤沼泽中建立新的家园，然而他们不仅面临着内部纷争，还要应对族人的疯狂。', '', '');
INSERT INTO `locales_faction` VALUES (790, 'Spirit Guide - Alliance', '', '', '', '灵魂向导 - 联盟', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (809, 'Shen\'dralar', '', '', '', '辛德拉', '', '', 'A remnant of the once powerful elves living in Dire Maul, yet still wise and knowledgeable about great secrets. ', '', '', '', '一群居住在厄运之槌的精灵后裔，他们仍然具有着相当渊博的智慧与学识，并保守着一些伟大的秘密。', '', '');
INSERT INTO `locales_faction` VALUES (829, 'Ogre (Captain Kromcrush)', '', '', '', '食人魔（克罗姆克鲁什队长）', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (849, 'Spirit Guide - Horde', '', '', '', '灵魂向导 - 部落', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (869, 'Jaedenar', '', '', '', '加德纳尔', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (889, 'Warsong Outriders', '', '', '', '战歌氏族', '', '', 'Fierce orcs of the Warsong Clan, locked in battle against the Silverwing Sentinels in Warsong Gulch.', '', '', '', '战歌氏族是最具攻击性的兽人氏族，目前正与暗夜精灵的银翼哨兵部队在战歌峡谷激烈地交战中。', '', '');
INSERT INTO `locales_faction` VALUES (890, 'Silverwing Sentinels', '', '', '', '银翼要塞', '', '', 'Staunch defenders of Ashenvale, locked in battle against the Warsong Outriders in Warsong Gulch.', '', '', '', '灰谷地区坚定的守卫者，目前正与战歌氏族在战歌峡谷中激烈交战。', '', '');
INSERT INTO `locales_faction` VALUES (891, 'Alliance Forces', '', '', '', '联盟部队', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (892, 'Horde Forces', '', '', '', '部落军队', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (893, 'Revantusk Trolls', '', '', '', '恶齿巨魔', '', '', 'The Revantusk Trolls are a tribe of Forest Trolls in the Hinterlands seeking closer ties to the Horde.', '', '', '', '恶齿巨魔是一支生活在辛特兰的森林巨魔部族，他们渴望与部落建立更紧密的联系。', '', '');
INSERT INTO `locales_faction` VALUES (909, 'Darkmoon Faire', '', '', '', '暗月马戏团', '', '', 'A traveling fair that showcases the weird and the extraordinary.  Often spotted in Elwynn Forest and Mulgore.', '', '', '', '一个向全世界展示着各类珍奇异宝的旅行马戏团。他们经常会访问艾尔文森林和莫高雷。', '', '');
INSERT INTO `locales_faction` VALUES (910, 'Brood of Nozdormu', '', '', '', '诺兹多姆的子嗣', '', '', 'The descendants of the Bronze Dragonflight are the guardians of time and care little for the mortal races.', '', '', '', '青铜龙军团的后代，时间的守卫者，对凡人种族漠不关心。', '', '');
INSERT INTO `locales_faction` VALUES (912, 'Might of Kalimdor', '', '', '', '卡利姆多联军', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (914, 'PLAYER, High Elf', '', '', '', '高等精灵(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (915, 'Armies of C\'Thun', '', '', '', '克苏恩的军队', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (916, 'Silithid Attackers', '', '', '', '异种虫类', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (917, 'The Ironforge Brigade', '', '', '', '铁炉堡军团', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (918, 'RC Enemies', '', '', '', 'RC敌人', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (919, 'RC Objects', '', '', '', 'RC物体', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (920, 'Red', '', '', '', '红', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (921, 'Blue', '', '', '', '蓝', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (927, 'PLAYER, Goblin', '', '', '', '地精(玩家)', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (928, 'Scourge Invaders', '', '', '', '天灾入侵者', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (931, 'Test Faction (not a real faction)', '', '', '', '测试阵营（虚构阵营）', '', '', 'This faction only exists to test the editing of faction names and descriptions...', '', '', '', '这个阵营只是为了测试阵营名称和描述的编辑而存在...', '', '');
INSERT INTO `locales_faction` VALUES (950, 'ToWoW - Flag', '', '', '', 'ToWoW - 旗帜', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (951, 'ToWoW - Flag Trigger Alliance (DND)', '', '', '', 'ToWoW - 联盟旗帜触发器（DND）', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (954, 'ToWoW - Flag Trigger Horde (DND)', '', '', '', 'ToWoW - 部落旗帜触发器（DND）', '', '', '', '', '', '', '', '', '');
INSERT INTO `locales_faction` VALUES (1001, 'Durotar Labor Union', '', '', '', '杜隆塔尔工会', '', '', 'The Durotar Labor Union is a group of Goblins that joined the Horde after defecting from the Venture Co. They\'re eager to prove themselves as capable members of the Horde.', '', '', '', '杜隆塔尔工会是一群地精组成的团体，他们在背叛风险投资公司后加入了部落。他们渴望证明自己是部落中有能力的成员。', '', '');
INSERT INTO `locales_faction` VALUES (1004, 'Brotherhood of the Horse', '', '', '', '半人马兄弟会', '', '', 'The Gallant Knights of Azeroth ride into battle upon their armored steeds to prevent the invasion of their homeland.', '', '', '', '艾泽拉斯英勇的骑士们骑着装甲战马冲向战场，阻止对他们家园的入侵。', '', '');
INSERT INTO `locales_faction` VALUES (1005, 'Sythegore Arm', '', '', '', '赛斯戈尔之臂', '', '', 'Elite raiders of the Blackrock Clan, now unleashed upon Elwynn Forest to see it burn.', '', '', '', '黑石氏族的精英袭击者被释放到艾尔文森林，看着它燃烧吧。', '', '');
INSERT INTO `locales_faction` VALUES (1006, 'Keepers of Outerend', '', '', '', '外域守护者', '', '', 'These stalwart servants have kept the relic Outerend save for a dozen millenia. With the coming darkness, they now seek to guide mortals to fight for Azeroth.', '', '', '', '这些坚定的仆人已经守护着古老的圣地“外域”数千年之久。随着黑暗的降临，他们现在希望引导凡人为了艾泽拉斯而战。', '', '');
INSERT INTO `locales_faction` VALUES (1007, 'Wardens of Time', '', '', '', '时光守护者', '', '', 'This specific group of the Bronze Dragonflight will accept the aid of any mortal that have earned access to the Caverns of Time. Their goal is to undo the mysterious time anomalies that have recently begun to appear across the timeways.', '', '', '', '这个特定的青铜龙族团体将接受任何凡人的帮助，只要他们获得了进入时光之穴的权限。他们的目标是解开最近在时间之道上开始出现的神秘时间异常。', '', '');
INSERT INTO `locales_faction` VALUES (1008, 'Steamwheedle Blood Ring', '', '', '', '热砂港血环', '', '', 'A grand arena tournament organized by the Steamwheedle Cartel. The strongest fighters are invited to compete in the bloody sands for fame and great rewards provided by the Arena masters of the Cartel', '', '', '', '由热砂港组织的一场盛大的竞技场锦标赛。最强大的战士被邀请在血腥的沙地上竞争，争取由血环竞技场大师提供的声望和丰厚奖励。', '', '');
INSERT INTO `locales_faction` VALUES (1009, 'Infinite Dragonflight', '', '', '', '无尽龙族', '', '', 'Mysterious corrupted Dragons bent on corrupting the timeways.', '', '', '', '神秘的被腐化的龙族，意图腐化时间之道', '', '');
INSERT INTO `locales_faction` VALUES (1011, 'Kul Tiras', '', '', '', '库尔提拉斯', '', '', 'Kul Tiras is an island chain located in the Great Sea, west of the Eastern Kingdoms, and is home to the human nation of the same name. The navy of Kul Tiras has been aligned with the Alliance since its founding, but has yet to reaffirm these loyalties after the fall of Lordaeron.', '', '', '', '戴林·普罗德摩尔上将的探险舰队的残余，这些幸存者中还有一些没有被部落杀死的人们过着危险的生活。', '', '');
INSERT INTO `locales_faction` VALUES (1012, 'Stonemaul Tribe', '', '', '', '石槌部落', '', '', 'The Stonemaul Ogres joined the Horde under the auspices of the Mok\'nathal Rexxar. They have since been welcoming and friendly to the Horde.', '', '', '', '石槌食人魔在魔兽世界中加入了部落，得到了莫克纳萨雷克萨的支持。自此以后，他们对部落友好热情。', '', '');
INSERT INTO `locales_faction` VALUES (1013, 'Beast - Fox', '', '', '', '野兽-狐狸', '', '', 'Kon', '', '', '', 'kon', '', '');


SET FOREIGN_KEY_CHECKS = 1;
