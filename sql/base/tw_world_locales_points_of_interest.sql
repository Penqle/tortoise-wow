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
-- Table structure for locales_points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `icon_name_loc0` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc7` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_name_loc8` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locales_points_of_interest
-- ----------------------------
INSERT INTO `locales_points_of_interest` VALUES (658, 'Lion\'s Pride Inn', NULL, 'L\'auberge de la Fierté du Lion', 'Gasthaus Zur H?hle des L?wen', '狮王之傲旅店', NULL, NULL, NULL, 'Таверна \"Гордость льва\"');
INSERT INTO `locales_points_of_interest` VALUES (652, 'Zaldimar Wefhellt', NULL, 'Zaldimar Wefhellt', 'Zaldimar Wefhellt', '札尔迪玛·维夫希尔特', NULL, NULL, NULL, 'Залдимар Вефхеллт');
INSERT INTO `locales_points_of_interest` VALUES (660, 'Brother Wilhelm', NULL, 'Frère Wilhelm', 'Bruder Wilhelm', '维尔海姆修士', NULL, NULL, NULL, 'Брат Вильгельм');
INSERT INTO `locales_points_of_interest` VALUES (653, 'Priestess Josetta', NULL, 'Prêtresse Josetta', 'Priesterin Josetta', '女牧师洁塞塔', NULL, NULL, NULL, 'Жрица Жозетта');
INSERT INTO `locales_points_of_interest` VALUES (657, 'Keryn Sylvius', NULL, 'Keryn Sylvius', 'Keryn Sylvius', '科瑞恩·塞尔留斯', NULL, NULL, NULL, 'Керин Сильвиус');
INSERT INTO `locales_points_of_interest` VALUES (656, 'Maximillian Crowe', NULL, 'Maximillian Crowe', 'Maximillian Raab', '玛克西米利安·克洛文', NULL, NULL, NULL, 'Максимилиан Кроу');
INSERT INTO `locales_points_of_interest` VALUES (661, 'Lyria Du Lac', NULL, 'Lyria Du Lac', 'Lyria Du Lac', '里瑞亚·杜拉克', NULL, NULL, NULL, 'Лирия дю Лак');
INSERT INTO `locales_points_of_interest` VALUES (663, 'Alchemist Mallory', NULL, 'Alchimiste Mallory', 'Alchemist Mallory', '炼金术士玛洛瑞', NULL, NULL, NULL, 'Алхимик Маллори');
INSERT INTO `locales_points_of_interest` VALUES (659, 'Smith Argus', NULL, 'Argus le forgeron', 'Schmied Argus', '铁匠阿古斯', NULL, NULL, NULL, 'Кузнец Аргус');
INSERT INTO `locales_points_of_interest` VALUES (655, 'Tomas', NULL, 'Tomas', 'Tomas', '汤马斯', NULL, NULL, NULL, 'Томас');
INSERT INTO `locales_points_of_interest` VALUES (654, 'Michelle Belle', NULL, 'Michelle Belle', 'Michelle Belle', '密雪儿·贝莉', NULL, NULL, NULL, 'Мишель Белль');
INSERT INTO `locales_points_of_interest` VALUES (649, 'Lee Brown', NULL, 'Lee Brown', 'Lee Braun', '李·布朗', NULL, NULL, NULL, 'Ли Браун');
INSERT INTO `locales_points_of_interest` VALUES (650, 'Adele Fielder', NULL, 'Adele Fielder', 'Adele F?dler', '艾德勒·费欧德', NULL, NULL, NULL, 'Адель Филдер');
INSERT INTO `locales_points_of_interest` VALUES (651, 'Helene Peltskinner', NULL, 'Helene Tannepeau', 'Helene Pelzschneider', '海伦尼·派特斯金纳', NULL, NULL, NULL, 'Хелена Меховяз');
INSERT INTO `locales_points_of_interest` VALUES (647, 'Eldrin', NULL, 'Eldrin', 'Eldrin', '艾尔丁', NULL, NULL, NULL, 'Элдрин');
INSERT INTO `locales_points_of_interest` VALUES (869, 'Erma', NULL, 'Erma', 'Erma', '艾玛', NULL, NULL, NULL, 'Ирма');
INSERT INTO `locales_points_of_interest` VALUES (527, 'Stormwind Auction House', NULL, 'Autel des ventes de Hurlevent', 'Auktionshaus von Sturmwind', '暴风城拍卖行', NULL, NULL, NULL, 'Штормград: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (47, 'Stormwind Bank', NULL, 'Banque de Hurlevent', 'Bank von Sturmwind', '暴风城银行', NULL, NULL, NULL, 'Штормград: банк');
INSERT INTO `locales_points_of_interest` VALUES (532, 'The Deeprun Tram', NULL, 'Le Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, NULL, NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (529, 'The Gilded Rose', NULL, 'La Rose dorée', 'Die güldene Rose', '镶金玫瑰', NULL, NULL, NULL, 'Позолоченная роза');
INSERT INTO `locales_points_of_interest` VALUES (535, 'Stormwind Gryphon Master', NULL, 'Maître des griffons de Hurlevent', 'Greifenmeister von Sturmwind', '暴风城狮鹫管理员', NULL, NULL, NULL, 'Штормград: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (87, 'Stormwind Vistor\'s Center', NULL, 'Centre d\'accueil des visiteurs de Hurlevent', 'Besucherzentrum von Sturmwind', '暴风城接待中心', NULL, NULL, NULL, 'Гостевые покои Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (870, 'Jenova Stoneshield', NULL, 'Jenova Targe-pierre', 'Jenova Steinschild', '耶诺瓦·石盾', NULL, NULL, NULL, 'Дженова Камнещит');
INSERT INTO `locales_points_of_interest` VALUES (808, 'Woo Ping', NULL, 'Woo Ping', 'Woo Ping', '吴平', NULL, NULL, NULL, 'Ву Пинг');
INSERT INTO `locales_points_of_interest` VALUES (1467, 'Champions\' Hall', NULL, 'Hall des Champions', 'Die Halle der Champions', '勇士大厅', NULL, NULL, NULL, 'Зал Защитника');
INSERT INTO `locales_points_of_interest` VALUES (72, 'The Park', NULL, 'Le Parc', 'Der Park', '花园', NULL, NULL, NULL, 'Парк');
INSERT INTO `locales_points_of_interest` VALUES (74, 'Hunter Lodge', NULL, 'Gîte des chasseurs', 'J?gerlodge', '猎人大厅', NULL, NULL, NULL, 'Охотничья Избушка');
INSERT INTO `locales_points_of_interest` VALUES (71, 'Wizard\'s Sanctum', NULL, 'Sanctum des sorciers', 'Magiersanktum', '精灵圣殿', NULL, NULL, NULL, 'Башня магов');
INSERT INTO `locales_points_of_interest` VALUES (73, 'Cathedral Of Light', NULL, 'Chapelle de la Lumière', 'Kathedrale des Lichts', '圣光大教堂', NULL, NULL, NULL, 'Собор Света');
INSERT INTO `locales_points_of_interest` VALUES (69, 'Stormwind - Rogue House', NULL, 'Hurlevent - Maison des voleurs', 'Schurkenhaus von Sturmwind', '暴风城 - 盗贼之家', NULL, NULL, NULL, 'Штормград: дом разбойников');
INSERT INTO `locales_points_of_interest` VALUES (75, 'The Slaughtered Lamb', NULL, 'L\'Agneau assassiné', 'Zum geschlachteten Lamm', '已宰的羔羊', NULL, NULL, NULL, 'Таверна \"Забитый ягненок\"');
INSERT INTO `locales_points_of_interest` VALUES (70, 'Stormwind Barracks', NULL, 'Caserne de Hurlevent', 'Kaserne von Sturmwind', '暴风城军营', NULL, NULL, NULL, 'Казармы Штормграда');
INSERT INTO `locales_points_of_interest` VALUES (91, 'Alchemy Needs', NULL, 'Tout pour l\'alchimiste', 'Alchemiebedarf', '炼金材料店', NULL, NULL, NULL, 'Все для алхимика');
INSERT INTO `locales_points_of_interest` VALUES (94, 'Therum Deepforge', NULL, 'Therum Forge-profonde', 'Therum Tiefenschmied', '瑟鲁姆·深炉', NULL, NULL, NULL, 'Терум Подземная Кузня');
INSERT INTO `locales_points_of_interest` VALUES (68, 'Pig and Whistle Tavern', NULL, 'Taverne du Cochon siffleur', 'Taverne Zum pfeifenden Schwein', '猪与哨声旅店', NULL, NULL, NULL, 'Таверна \"Свинья и свисток\"');
INSERT INTO `locales_points_of_interest` VALUES (108, 'Lucan Cordell', NULL, 'Lucan Cordell', 'Lucan Cordell', '鲁坎·考迪尔', NULL, NULL, NULL, 'Лукан Корделл');
INSERT INTO `locales_points_of_interest` VALUES (93, 'Lilliam Sparkspindle', NULL, 'Lilliam Fusétincelle', 'Lilliam Spindelfunks', '廉姆·火轴', NULL, NULL, NULL, 'Лилиам Шпиндель');
INSERT INTO `locales_points_of_interest` VALUES (1427, 'Shaina Fuller', NULL, 'Shaina Fuller', 'Shaina Fuller', '珊娜·费勒', NULL, NULL, NULL, 'Шайна Корпия');
INSERT INTO `locales_points_of_interest` VALUES (107, 'Arnold Leland', NULL, 'Arnold Leland', 'Arnold Leland', '阿诺德·利兰', NULL, NULL, NULL, 'Арнольд Лиланд');
INSERT INTO `locales_points_of_interest` VALUES (90, 'The Protective Hide', NULL, 'Au cuir protecteur', 'Der schützende Balg', '护体皮甲', NULL, NULL, NULL, 'Прочная шкура');
INSERT INTO `locales_points_of_interest` VALUES (95, 'Gelman Stonehand', NULL, 'Gelman Main-de-pierre', 'Gelman Steinhand', '吉尔曼·石手', NULL, NULL, NULL, 'Гельман Камнерук');
INSERT INTO `locales_points_of_interest` VALUES (92, 'Duncan\'s Textiles', NULL, 'Textiles Duncan', 'Duncans Textilien', '邓肯布料店', NULL, NULL, NULL, 'Ткани Дункана');
INSERT INTO `locales_points_of_interest` VALUES (418, 'Ironforge Auction House', NULL, 'Hôtel des ventes de Forgefer', 'Auktionshaus von Eisenschmiede', '铁炉堡拍卖行', NULL, NULL, NULL, 'Стальгорн: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (415, 'The Vault', NULL, 'Le Caveau', 'Das Gew?lbe', '平民区', NULL, NULL, NULL, 'Свод');
INSERT INTO `locales_points_of_interest` VALUES (547, 'Deeprun Tram', NULL, 'Tram des profondeurs', 'Die Tiefenbahn', '矿道地铁', NULL, NULL, NULL, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES (407, 'Ironforge Gryphon Master', NULL, 'Maître des griffons de Forgefer', 'Greifenmeister von Eisenschmiede', '铁炉堡狮鹫管理员', NULL, NULL, NULL, 'Стальгорн: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (424, 'Ironforge Visitor\'s Center', NULL, 'Centre des Visiteurs de Forgefer', 'Besucherzentrum von Eisenschmiede', '铁炉堡访客中心', NULL, NULL, NULL, 'Гостевые покои Стальгорна');
INSERT INTO `locales_points_of_interest` VALUES (417, 'Stonefire Tavern', NULL, 'La taverne de Brûlepierre', 'Steinfeuertaverne', '石火旅店', NULL, NULL, NULL, 'Таверна \"Горючий камень\"');
INSERT INTO `locales_points_of_interest` VALUES (416, 'Ironforge Mailbox', NULL, 'Boîte aux lettres de Forgefer', 'Briefkasten von Eisenschmiede', '铁炉堡邮箱', NULL, NULL, NULL, 'Стальгорн: почта');
INSERT INTO `locales_points_of_interest` VALUES (867, 'Ulbrek Firehand', NULL, 'Ulbrek Brasemain', 'Ulbrek Feuerhand', '乌布雷克·火拳', NULL, NULL, NULL, 'Ульбрек Огненная Длань');
INSERT INTO `locales_points_of_interest` VALUES (928, 'Bixi and Buliwyf', NULL, 'Bixi et Buliwyf', 'Bixi und Buliwyf', '密林武器店', NULL, NULL, NULL, 'Бикси и Бульвайф');
INSERT INTO `locales_points_of_interest` VALUES (413, 'Hall of Arms', NULL, 'Hall des Armes', 'Halle der Waffen', '武器大厅', NULL, NULL, NULL, 'Оружейная');
INSERT INTO `locales_points_of_interest` VALUES (412, 'Hall of Mysteries', NULL, 'Hall des Mystères', 'Halle der Mysterien', '谜之大厅', NULL, NULL, NULL, 'Зал Тайн');
INSERT INTO `locales_points_of_interest` VALUES (427, 'Ironforge Rogue Trainer', NULL, 'Maître des voleurs de Forgefer', 'Schurkenlehrer von Eisenschmiede', '铁炉堡盗贼训练师', NULL, NULL, NULL, 'Стальгорн: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (426, 'Ironforge Warlock Trainer', NULL, 'Maître des démonistes de Forgefer', 'Hexenmeisterlehrer von Eisenschmiede', '铁炉堡术士训练师', NULL, NULL, NULL, 'Стальгорн: наставник чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (419, 'Berryfizz\'s Potions and Mixed Drinks', NULL, 'Potions et mixtures de Baiedesbulles', 'Brausefitz\' Tr?nke und Mischgetr?nke', '浆泡的药水饮料店', NULL, NULL, NULL, 'Снадобья и микстуры от Гонобобельзз');
INSERT INTO `locales_points_of_interest` VALUES (423, 'The Great Forge', NULL, 'La Grande Forge', 'Die gro?e Schmiede', '大锻炉', NULL, NULL, NULL, 'Великая Кузня');
INSERT INTO `locales_points_of_interest` VALUES (410, 'The Bronze Kettle', NULL, 'La Bouilloire de bronze', 'Zum Bronzekessel', '铜壶铁罐店', NULL, NULL, NULL, 'Бронзовый котелок');
INSERT INTO `locales_points_of_interest` VALUES (409, 'Thistlefuzz Arcanery', NULL, 'Arcanes de Duvechardon', 'Arkanarien Distelflaum', '草须魔法用品店', NULL, NULL, NULL, 'Колдовские штучки Чертополуша');
INSERT INTO `locales_points_of_interest` VALUES (408, 'Ironforge Physician', NULL, 'Médecin de Forgefer', 'Heiler von Eisenschmiede', '铁炉堡医师协会', NULL, NULL, NULL, 'Стальгорн: целитель');
INSERT INTO `locales_points_of_interest` VALUES (425, 'Traveling Fisherman', NULL, 'Pêcheur itinérant', 'Reisender Angler', '旅行渔具店', NULL, NULL, NULL, 'Странствующий рыбак');
INSERT INTO `locales_points_of_interest` VALUES (987, 'Finespindle\'s Leather Goods', NULL, 'Cuirs de Finfuseau', 'Lederwaren Feinspindel', '皮甲用品店', NULL, NULL, NULL, 'Кожевенная лавка Остроигла');
INSERT INTO `locales_points_of_interest` VALUES (411, 'Deepmountain Mining Guild', NULL, 'Guilde des mineurs de la montagne profonde', 'Tiefenbergbaugilde', '深山矿工协会', NULL, NULL, NULL, 'Гильдия рудокопов Темной Горы');
INSERT INTO `locales_points_of_interest` VALUES (422, 'Stonebrow\'s Clothier', NULL, 'Vêtements de Front-de-pierre', 'Tuchmacherei Steinbraue', '石眉布衣店', NULL, NULL, NULL, 'Лавка одежды Камнелоба');
INSERT INTO `locales_points_of_interest` VALUES (671, 'Thunderbrew Distillery', NULL, 'Distillerie de Tonnebière', 'Brauerei Donnerbr?u', '雷酒酿制厂', NULL, NULL, NULL, 'Таверна \"Громоварка\"');
INSERT INTO `locales_points_of_interest` VALUES (868, 'Shelby Stoneflint', NULL, 'Shelby Pierre-à-feu', 'Shelby Steinsplint', '谢尔比·石火', NULL, NULL, NULL, 'Шелби Щебенка');
INSERT INTO `locales_points_of_interest` VALUES (674, 'Grif Wildheart', NULL, 'Grif Cœur-sauvage', 'Grif Wildherz', '格瑞夫', NULL, NULL, NULL, 'Гриф Дикое Сердце');
INSERT INTO `locales_points_of_interest` VALUES (664, 'Magis Sparkmantle', NULL, 'Magis Mantincelle', 'Magis Funkelmantel', '玛济斯·石衣', NULL, NULL, NULL, 'Магис Искроплащ');
INSERT INTO `locales_points_of_interest` VALUES (665, 'Azar Stronghammer', NULL, 'Azar Fortmartel', 'Azar Hammerkraft', '阿札尔·战锤', NULL, NULL, NULL, 'Азар Мощный Молот');
INSERT INTO `locales_points_of_interest` VALUES (666, 'Maxan Anvol', NULL, 'Maxan Anvol', 'Maxan Anvol', '马克萨恩', NULL, NULL, NULL, 'Максан Анвол');
INSERT INTO `locales_points_of_interest` VALUES (669, 'Hogral Bakkan', NULL, 'Hogral Bakkan', 'Hogral Bakkan', '霍格拉尔·巴坎', NULL, NULL, NULL, 'Хограл Баккан');
INSERT INTO `locales_points_of_interest` VALUES (677, 'Gimrizz Shadowcog', NULL, 'Gimrizz Sombrouage', 'Gimrizz Schattenrad', '吉姆瑞兹', NULL, NULL, NULL, 'Гимризз Которышка');
INSERT INTO `locales_points_of_interest` VALUES (667, 'Granis Swiftaxe', NULL, 'Granis Vivehache', 'Granis Flinkaxt', '兰尼斯·快斧', NULL, NULL, NULL, 'Гранис Свист Топора');
INSERT INTO `locales_points_of_interest` VALUES (672, 'Tognus Flintfire', NULL, 'Tognus Flammesilex', 'Tognus Funkenfeuer', '托格努斯', NULL, NULL, NULL, 'Тогнус Огниво');
INSERT INTO `locales_points_of_interest` VALUES (670, 'Gremlock Pilsnor', NULL, 'Gremlock Pilsnor', 'Gremlock Pilsnor', '格雷姆罗克', NULL, NULL, NULL, 'Гремлок Пилзнор');
INSERT INTO `locales_points_of_interest` VALUES (668, 'Thamner Pol', NULL, 'Thamner Pol', 'Thamner Pol', '萨姆诺·普尔', NULL, NULL, NULL, 'Тамнер Пол');
INSERT INTO `locales_points_of_interest` VALUES (747, 'Paxton Ganter', NULL, 'Paxton Ganter', 'Paxton Ganter', '帕克斯顿·冈特', NULL, NULL, NULL, 'Пакстон Гантер');
INSERT INTO `locales_points_of_interest` VALUES (1693, 'Darnassus Auction House', NULL, 'Autel des ventes de Darnassus', 'Auktionshaus Darnassus', '达纳苏斯拍卖行', NULL, NULL, NULL, 'Аукционный дом Дарнаса');
INSERT INTO `locales_points_of_interest` VALUES (465, 'Darnassus Bank', NULL, 'Banque de Darnassus', 'Bank von Darnassus', '达纳苏斯银行', NULL, NULL, NULL, 'Дарнас: банк');
INSERT INTO `locales_points_of_interest` VALUES (467, 'Rut\'theran Village', NULL, 'Maître des hippogriffes de Darnassus', 'Rut\'theran', '达纳苏斯角鹰兽管理员', NULL, NULL, NULL, 'Дарнас: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES (490, 'Darnassus Guild Master', NULL, 'Maître des guildes de Darnassus', 'Gildenmeister von Darnassus', '达纳苏斯公会', NULL, NULL, NULL, 'Дарнас: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (468, 'Darnassus Inn', NULL, 'Auberge de Darnassus', 'Gasthaus von Darnassus', '达纳苏斯旅馆', NULL, NULL, NULL, 'Дарнасская таверна');
INSERT INTO `locales_points_of_interest` VALUES (1474, 'Darnassus Mailbox', NULL, 'Boîte aux lettres de Darnassus', 'Briefkasten von Darnassus', '达纳苏斯邮箱', NULL, NULL, NULL, 'Дарнас: почта');
INSERT INTO `locales_points_of_interest` VALUES (872, 'Alassin', NULL, 'Alassin', 'Alassin', '阿拉辛', NULL, NULL, NULL, 'Алассин');
INSERT INTO `locales_points_of_interest` VALUES (750, 'Ilyenia Moonfire', NULL, 'Ilyenia Lunéclat', 'Ilyenia Mondfeuer', '伊琳尼雅·月火', NULL, NULL, NULL, 'Илиения Лунное Пламя');
INSERT INTO `locales_points_of_interest` VALUES (486, 'Darnassus Druid Trainer', NULL, 'Maître des druides de Darnassus', 'Druidenlehrer von Darnassus', '达纳苏斯德鲁训练师', NULL, NULL, NULL, 'Дарнас: наставник друидов');
INSERT INTO `locales_points_of_interest` VALUES (479, 'Darnassus Hunter Trainer', NULL, 'Maître des chasseurs de Darnassus', 'J?gerlehrer von Darnassus', '达纳苏斯猎人训练师', NULL, NULL, NULL, 'Дарнас: наставник охотников');
INSERT INTO `locales_points_of_interest` VALUES (507, 'Darnassus Rogue Trainer', NULL, 'Maître des voleurs de Darnassus', 'Schurkenlehrer von Darnassus', '达纳苏斯盗贼训练师', NULL, NULL, NULL, 'Дарнас: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (461, 'Warrior\'s Terrace', NULL, 'La terrasse des guerriers', 'Die Terrasse der Krieger', '战士区', NULL, NULL, NULL, 'Терраса Воинов');
INSERT INTO `locales_points_of_interest` VALUES (476, 'Darnassus Alchemy Trainer', NULL, 'Maître des alchimistes de Darnassus', 'Alchemielehrer von Darnassus', '达纳苏斯炼金术师', NULL, NULL, NULL, 'Дарнасский учитель алхимии');
INSERT INTO `locales_points_of_interest` VALUES (478, 'Darnassus Cooking Trainer', NULL, 'Maître des cuisiniers de Darnassus', 'Kochkunstlehrer von Darnassus', '达纳苏斯烹饪训练师', NULL, NULL, NULL, 'Дарнас: Учитель кулинарии');
INSERT INTO `locales_points_of_interest` VALUES (473, 'Darnassus Enchanting Trainer', NULL, 'Maître des enchanteurs de Darnassus', 'Verzauberkunstlehrer von Darnassus', '达纳苏斯附魔训练师', NULL, NULL, NULL, 'Дарнасский учитель наложения чар');
INSERT INTO `locales_points_of_interest` VALUES (474, 'Darnassus First Aid Trainer', NULL, 'Maître des secouristes de Darnassus', 'Lehrer für Erste Hilfe von Darnassus', '达纳苏斯急救训练师', NULL, NULL, NULL, 'Дарнас: учитель первой помощи');
INSERT INTO `locales_points_of_interest` VALUES (489, 'Darnassus Fishing Trainer', NULL, 'Maître des pêcheurs de Darnassus', 'Angellehrer von Darnassus', '达纳苏斯钓鱼训练师', NULL, NULL, NULL, 'Дарнасский учитель рыбной ловли');
INSERT INTO `locales_points_of_interest` VALUES (471, 'Darnassus Leatherworking Trainer', NULL, 'Maître des travailleurs du cuir de Darnassus', 'Lederverarbeitungslehrer von Darnassus', '达纳苏斯制皮训练师', NULL, NULL, NULL, 'Дарнасский учитель кожевничества');
INSERT INTO `locales_points_of_interest` VALUES (472, 'Darnassus Skinning Trainer', NULL, 'Maître des dépeceurs de Darnassus', 'Kürschnerlehrer von Darnassus', '达纳苏斯剥皮训练师', NULL, NULL, NULL, 'Дарнасский учитель снятия шкур');
INSERT INTO `locales_points_of_interest` VALUES (470, 'Darnassus Tailor', NULL, 'Tailleur de Darnassus', 'Schneider von Darnassus', '达纳苏斯裁缝', NULL, NULL, NULL, 'Дарнасский портной');
INSERT INTO `locales_points_of_interest` VALUES (698, 'Dolanaar Inn', NULL, 'Auberge de Dolanaar', 'Gasthaus Dolanaar', '多兰纳尔旅店', NULL, NULL, NULL, 'Таверна Доланаара');
INSERT INTO `locales_points_of_interest` VALUES (871, 'Seriadne', NULL, 'Seriadne', 'Seriadne', '瑟里亚迪', NULL, NULL, NULL, 'Сериадна');
INSERT INTO `locales_points_of_interest` VALUES (697, 'Kal', NULL, 'Kal', 'Kal', '卡尔', NULL, NULL, NULL, 'Каль');
INSERT INTO `locales_points_of_interest` VALUES (693, 'Dazalar', NULL, 'Dazalar', 'Dazalar', '达札拉', NULL, NULL, NULL, 'Дазалар');
INSERT INTO `locales_points_of_interest` VALUES (690, 'Laurna Morninglight', NULL, 'Laurna Clairematin', 'Laurna Morgenglanz', '露娜·晨光', NULL, NULL, NULL, 'Лорна Утренний Свет');
INSERT INTO `locales_points_of_interest` VALUES (692, 'Jannok Breezesong', NULL, 'Jannok Chantebrise', 'Jannok Windsang', '詹诺克·柔歌', NULL, NULL, NULL, 'Джаннок Поющий Ветерок');
INSERT INTO `locales_points_of_interest` VALUES (691, 'Kyra Windblade', NULL, 'Kyra Lamevent', 'Kyra Windklinge', '凯拉·风刃', NULL, NULL, NULL, 'Кайра Ветрорез');
INSERT INTO `locales_points_of_interest` VALUES (696, 'Cyndra Kindwhisper', NULL, 'Cyndra Murmegent', 'Cyndra Samtwisper', '塞恩德拉·细语者', NULL, NULL, NULL, 'Циндра Ласковый Шепот');
INSERT INTO `locales_points_of_interest` VALUES (694, 'Zarrin', NULL, 'Zarrin', 'Zarrin', '札瑞恩', NULL, NULL, NULL, 'Заррин');
INSERT INTO `locales_points_of_interest` VALUES (699, 'Alanna Raveneye', NULL, 'Alanna Oeil-de-corbeau', 'Alanna Rabenauge', '奥兰纳·鸦眼', NULL, NULL, NULL, 'Аланна Око Ворона');
INSERT INTO `locales_points_of_interest` VALUES (689, 'Byancie', NULL, 'Byancie', 'Byancie', '拜恩希', NULL, NULL, NULL, 'Бьянси');
INSERT INTO `locales_points_of_interest` VALUES (695, 'Malorne Bladeleaf', NULL, 'Malorne Feuillelame', 'Malorne Messerblatt', '玛洛尼·刃叶', NULL, NULL, NULL, 'Малорн Остролист');
INSERT INTO `locales_points_of_interest` VALUES (688, 'Nadyia Maneweaver', NULL, 'Nadyia Tissecrin', 'Nadyia Schopfweber', '纳迪娅·织发', NULL, NULL, NULL, 'Надайя Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (687, 'Radnaal Maneweaver', NULL, 'Radnaal Tissecrin', 'Radnaal Schopfweber', '拉德纳尔·织发', NULL, NULL, NULL, 'Раднаал Гривопряд');
INSERT INTO `locales_points_of_interest` VALUES (267, 'Bank of Orgrimmar', NULL, 'Banque d\'Orgrimmar', 'Bank von Orgrimmar', '奥格玛银行', NULL, NULL, NULL, 'Банк Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (268, 'The Sky Tower', NULL, 'Tour des Cieux', 'Der Himmelsturm', '飞行塔', NULL, NULL, NULL, 'Башня Небес');
INSERT INTO `locales_points_of_interest` VALUES (269, 'Horde Embassy', NULL, 'Ambassade de la Horde', 'Botschaft der Horde', '部落大使馆', NULL, NULL, NULL, 'Посольство Орды');
INSERT INTO `locales_points_of_interest` VALUES (270, 'Orgrimmar Inn', NULL, 'Auberge d\'Orgrimmar', 'Gasthaus von Orgrimmar', '奥格玛旅馆', NULL, NULL, NULL, 'Таверна Оргриммара');
INSERT INTO `locales_points_of_interest` VALUES (271, 'Orgrimmar Mailbox', NULL, 'Boîte aux lettres d\'Orgrimmar', 'Briefkasten von Orgrimmar', '奥格玛邮箱', NULL, NULL, NULL, 'Оргриммар: почта');
INSERT INTO `locales_points_of_interest` VALUES (347, 'Orgrimmar Auction House', NULL, 'Autel des ventes d\'Orgrimmar', 'Auktionshaus von Orgrimmar', '奥格玛拍卖行', NULL, NULL, NULL, 'Оргриммар: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES (809, 'Sayoc & Hanashi', NULL, 'Sayoc & Hanashi', 'Sayoc und Hanashi', '塞尤克和哈纳什', NULL, NULL, NULL, 'Сайок и Ханаши');
INSERT INTO `locales_points_of_interest` VALUES (848, 'Xon\'cha', NULL, 'Xon\'cha', 'Xon\'cha', '克苏卡', NULL, NULL, NULL, 'Ксон\'ча');
INSERT INTO `locales_points_of_interest` VALUES (1468, 'Hall of Legends', NULL, 'Hall des Légendes', 'Die Halle der Legenden', '传说大厅', NULL, NULL, NULL, 'Зал Легенд');
INSERT INTO `locales_points_of_interest` VALUES (604, 'Bloodhoof Village Inn', NULL, NULL, NULL, '血蹄村旅馆', NULL, NULL, NULL, 'Безделушки Пружиннера');
INSERT INTO `locales_points_of_interest` VALUES (601, 'Krunn', NULL, NULL, NULL, '克鲁恩', NULL, NULL, NULL, 'Вилла Салтерила: портной');
INSERT INTO `locales_points_of_interest` VALUES (475, 'Undercity Enchanting Trainer', NULL, NULL, NULL, '幽暗城的附魔训练师', NULL, NULL, NULL, 'Ярр Камнедроб');
INSERT INTO `locales_points_of_interest` VALUES (460, 'Undercity Cooking Trainer', NULL, NULL, NULL, '幽暗城烹饪训练师', NULL, NULL, NULL, 'Таверна в Деревне Кровавого Копыта');
INSERT INTO `locales_points_of_interest` VALUES (458, 'Undercity Blacksmithing Trainer', NULL, NULL, NULL, '幽暗城锻造训练师', NULL, NULL, NULL, 'Сейква');
INSERT INTO `locales_points_of_interest` VALUES (455, 'Undercity Warrior Trainers', NULL, NULL, NULL, '幽暗城W战士训练师', NULL, NULL, NULL, 'Йо Колкая Грива');
INSERT INTO `locales_points_of_interest` VALUES (457, 'The Apothecarium', NULL, NULL, NULL, '药剂师', NULL, NULL, NULL, 'Генния Рунический Тотем');
INSERT INTO `locales_points_of_interest` VALUES (453, 'Undercity Warlock Trainers', NULL, NULL, NULL, '幽暗城术士训练师', NULL, NULL, NULL, 'Нарм Небесный Охотник');
INSERT INTO `locales_points_of_interest` VALUES (454, 'Undercity Priest Trainers', NULL, NULL, NULL, '幽暗城牧师训练师', NULL, NULL, NULL, 'Кранг Каменное Копыто');
INSERT INTO `locales_points_of_interest` VALUES (452, 'Undercity Mage Trainers', NULL, NULL, NULL, '幽暗城法师训练师', NULL, NULL, NULL, 'Пиалл Тихая Поступь');
INSERT INTO `locales_points_of_interest` VALUES (451, 'Undercity Zeppelin', NULL, NULL, NULL, '幽暗城飞艇', NULL, NULL, NULL, 'Утан Тихая Заводь');
INSERT INTO `locales_points_of_interest` VALUES (852, 'Anya Maulray', NULL, NULL, NULL, '安雅·玛尔雷', NULL, NULL, NULL, 'Чоу Толстая Шкура');
INSERT INTO `locales_points_of_interest` VALUES (450, 'Undercity Mailbox', NULL, NULL, NULL, '幽暗城邮箱', NULL, NULL, NULL, 'Йонн Глубокий Надрез');
INSERT INTO `locales_points_of_interest` VALUES (449, 'Undercity Inn', NULL, NULL, NULL, '幽暗城旅馆', NULL, NULL, NULL, 'Гнездо ветрокрылов');
INSERT INTO `locales_points_of_interest` VALUES (448, 'Undercity Guild Master', NULL, NULL, NULL, '幽暗城工会管理员', NULL, NULL, NULL, 'Громовой Утес: городская информация');
INSERT INTO `locales_points_of_interest` VALUES (447, 'Undercity Bat Handler', NULL, NULL, NULL, '幽暗城蝙蝠训练师', NULL, NULL, NULL, 'Громовой Утес: почта');
INSERT INTO `locales_points_of_interest` VALUES (488, 'Undercity Bank', NULL, NULL, NULL, '幽暗城银行', NULL, NULL, NULL, 'Ансеква');
INSERT INTO `locales_points_of_interest` VALUES (1691, 'Undercity Auction House', NULL, NULL, NULL, '幽暗城拍卖行', NULL, NULL, NULL, 'Балруг');
INSERT INTO `locales_points_of_interest` VALUES (289, 'Magar\'s Cloth Goods', NULL, NULL, NULL, '玛加尔布品店', NULL, NULL, NULL, 'Громовой Утес: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (287, 'Kodohide Leatherworkers', NULL, NULL, NULL, '科多兽皮工店', NULL, NULL, NULL, 'Зал Старейшин');
INSERT INTO `locales_points_of_interest` VALUES (288, 'Red Canyon Mining', NULL, NULL, NULL, '红石谷矿业工会', NULL, NULL, NULL, 'Пруды Видений');
INSERT INTO `locales_points_of_interest` VALUES (285, 'Jandi\'s Arboretum', NULL, NULL, NULL, '加迪植物园', NULL, NULL, NULL, 'Зал Духов');
INSERT INTO `locales_points_of_interest` VALUES (284, 'Lumak\'s Fishing', NULL, NULL, NULL, '鲁玛克渔具店', NULL, NULL, NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (283, 'Survival of the Fittest', NULL, NULL, NULL, '适者生存', NULL, NULL, NULL, 'Лаборатория Бены');
INSERT INTO `locales_points_of_interest` VALUES (307, 'Nogg\'s Machine Shop', NULL, NULL, NULL, '诺格机械店', NULL, NULL, NULL, 'Кузня Карна');
INSERT INTO `locales_points_of_interest` VALUES (282, 'Godan\'s Runeworks', NULL, NULL, NULL, '古丹的符文工艺店', NULL, NULL, NULL, 'Кухня Аски');
INSERT INTO `locales_points_of_interest` VALUES (281, 'Borstan\'s Firepit', NULL, NULL, NULL, '博斯坦的火坑', NULL, NULL, NULL, 'Чародеи Утренних Путников');
INSERT INTO `locales_points_of_interest` VALUES (280, 'The Burning Anvil', NULL, NULL, NULL, '燃烧的铁砧', NULL, NULL, NULL, 'Духовное исцеление');
INSERT INTO `locales_points_of_interest` VALUES (279, 'Yelmak\'s Alchemy and Potions', NULL, NULL, NULL, '耶尔玛克药剂店', NULL, NULL, NULL, 'Снасти и наживка с горных вершин');
INSERT INTO `locales_points_of_interest` VALUES (275, 'Hall of the Brave', NULL, NULL, NULL, '勇者大厅', NULL, NULL, NULL, 'Общее травничество');
INSERT INTO `locales_points_of_interest` VALUES (277, 'Shadowswift Brotherhood', NULL, NULL, NULL, '迅影兄弟会', NULL, NULL, NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (274, 'Spirit Lodge', NULL, NULL, NULL, '灵魂小屋', NULL, NULL, NULL, 'Муранта');
INSERT INTO `locales_points_of_interest` VALUES (276, 'Thrall\'s Fortress', NULL, NULL, NULL, '萨尔的要塞', NULL, NULL, NULL, 'Лавка Геолога');
INSERT INTO `locales_points_of_interest` VALUES (273, 'Darkbriar Lodge', NULL, NULL, NULL, '黑石南小屋', NULL, NULL, NULL, 'Громовой Утес: оружейники');
INSERT INTO `locales_points_of_interest` VALUES (567, 'Mooranta', NULL, NULL, NULL, '莫兰塔', NULL, NULL, NULL, 'Таверна \"Петля висельника\"');
INSERT INTO `locales_points_of_interest` VALUES (157, 'Stonehoof Geology', NULL, NULL, NULL, '石蹄地质学会', NULL, NULL, NULL, 'Кейн Песнь Пламени');
INSERT INTO `locales_points_of_interest` VALUES (154, 'Thunder Bluff Armorers', NULL, NULL, NULL, '雷霆崖防具店', NULL, NULL, NULL, 'Темный священник Берил');
INSERT INTO `locales_points_of_interest` VALUES (151, 'Holistic Herbalism', NULL, NULL, NULL, '雷霆崖防具店', NULL, NULL, NULL, 'Марион Зов');
INSERT INTO `locales_points_of_interest` VALUES (160, 'Mountaintop Bait & Tackle', NULL, NULL, NULL, '山顶渔具店', NULL, NULL, NULL, 'Руперт Бош');
INSERT INTO `locales_points_of_interest` VALUES (153, 'Dawnstrider Enchanters', NULL, NULL, NULL, '附魔店', NULL, NULL, NULL, 'Каролай Аниса');
INSERT INTO `locales_points_of_interest` VALUES (162, 'Spiritual Healing', NULL, NULL, NULL, '精神治疗', NULL, NULL, NULL, 'Остил де Мон');
INSERT INTO `locales_points_of_interest` VALUES (187, 'Aska\'s Kitchen', NULL, NULL, NULL, '阿丝卡的厨房', NULL, NULL, NULL, 'Ванс Мрачнейший');
INSERT INTO `locales_points_of_interest` VALUES (155, 'Karn\'s Smithy', NULL, NULL, NULL, '卡恩铁匠铺', NULL, NULL, NULL, 'Сиделка Нила');
INSERT INTO `locales_points_of_interest` VALUES (152, 'Bena\'s Alchemy', NULL, NULL, NULL, '本娜的炼金店', NULL, NULL, NULL, 'Клайд Келлен');
INSERT INTO `locales_points_of_interest` VALUES (148, 'Hall of Spirits', NULL, NULL, NULL, '灵魂大厅', NULL, NULL, NULL, 'Фаруза');
INSERT INTO `locales_points_of_interest` VALUES (161, 'Pools of Vision', NULL, NULL, NULL, '幻想之池', NULL, NULL, NULL, 'Шелена Робарт');
INSERT INTO `locales_points_of_interest` VALUES (149, 'Hunter\'s Hall', NULL, NULL, NULL, '猎手大厅', NULL, NULL, NULL, 'Рэнд Робарт');
INSERT INTO `locales_points_of_interest` VALUES (150, 'Hall of Elders', NULL, NULL, NULL, '长者大厅', NULL, NULL, NULL, 'Боуэн Брисбойс');
INSERT INTO `locales_points_of_interest` VALUES (810, 'Ansekhwa', NULL, NULL, NULL, '安塞瓦 ', NULL, NULL, NULL, 'Подгород: дрессировщик нетопырей');
INSERT INTO `locales_points_of_interest` VALUES (1692, 'Thunder Bluff Auction house', NULL, NULL, NULL, '雷霆崖拍卖行', NULL, NULL, NULL, 'Подгород: военачальники');
INSERT INTO `locales_points_of_interest` VALUES (368, 'Thunder Bluff Mailbox', NULL, NULL, NULL, '雷霆崖邮箱', NULL, NULL, NULL, 'Подгород: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES (367, 'Thunder Bluff Inn', NULL, NULL, NULL, '雷霆崖旅馆', NULL, NULL, NULL, 'Подгородская таверна');
INSERT INTO `locales_points_of_interest` VALUES (167, 'Wind Rider Roost', NULL, NULL, NULL, '驭风者栖息地', NULL, NULL, NULL, 'Подгород: почта');
INSERT INTO `locales_points_of_interest` VALUES (168, 'Thunder Bluff Bank', NULL, NULL, NULL, '雷霆崖银行', NULL, NULL, NULL, 'Аня Молрэ');
INSERT INTO `locales_points_of_interest` VALUES (662, 'Herbalist Pomeroy', NULL, NULL, NULL, '草药师博米洛伊', NULL, NULL, NULL, 'Подгород: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES (463, 'Darnassus Herbalism Trainer', NULL, NULL, NULL, '达纳苏斯草药训练师', NULL, NULL, NULL, 'Подгород: наставники чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES (464, 'Temple of the Moon', NULL, NULL, NULL, '月亮神庙', NULL, NULL, NULL, 'Подгород: наставник воинов');
INSERT INTO `locales_points_of_interest` VALUES (849, 'Seikwa', NULL, NULL, NULL, '希克瓦', NULL, NULL, NULL, 'Зал Охотников');
INSERT INTO `locales_points_of_interest` VALUES (606, 'Gennia Runetotem', NULL, NULL, NULL, '洁妮亚·符文图腾', NULL, NULL, NULL, 'Пристанище Темнотерна');
INSERT INTO `locales_points_of_interest` VALUES (608, 'Yaw Sharpmane', NULL, NULL, NULL, '雅文·刺鬃', NULL, NULL, NULL, 'Обитель Духов');
INSERT INTO `locales_points_of_interest` VALUES (607, 'Narm Skychaser', NULL, NULL, NULL, '纳姆·逐星', NULL, NULL, NULL, 'Крепость Тралла');
INSERT INTO `locales_points_of_interest` VALUES (609, 'Krang Stonehoof', NULL, NULL, NULL, '克朗·石蹄', NULL, NULL, NULL, 'Братство Теней');
INSERT INTO `locales_points_of_interest` VALUES (610, 'Pyall Silentstride', NULL, NULL, NULL, '派尔·沉默行者', NULL, NULL, NULL, 'Анклав Темного Пламени');
INSERT INTO `locales_points_of_interest` VALUES (605, 'Vira Younghoof', NULL, NULL, NULL, '维尔拉·幼蹄', NULL, NULL, NULL, 'Зал Отважных');
INSERT INTO `locales_points_of_interest` VALUES (613, 'Uthan Stillwater', NULL, NULL, NULL, '尤萨恩·静水', NULL, NULL, NULL, 'Алхимия и Эликсиры Йелмака');
INSERT INTO `locales_points_of_interest` VALUES (611, 'Chaw Stronghide', NULL, NULL, NULL, '查尔·硬皮', NULL, NULL, NULL, 'Пылающая наковальня');
INSERT INTO `locales_points_of_interest` VALUES (612, 'Yonn Deepcut', NULL, NULL, NULL, '姚恩·深刺', NULL, NULL, NULL, 'Жаровня Борстана');
INSERT INTO `locales_points_of_interest` VALUES (615, 'Gallows\' End Tavern', NULL, NULL, NULL, '绞刑架末日酒馆', NULL, NULL, NULL, 'Чародейские товары Годана');
INSERT INTO `locales_points_of_interest` VALUES (851, 'Morganus', NULL, NULL, NULL, '莫加努斯', NULL, NULL, NULL, 'Естественный отбор');
INSERT INTO `locales_points_of_interest` VALUES (616, 'Cain Firesong', NULL, NULL, NULL, '凯恩·火歌', NULL, NULL, NULL, 'Рыбное место Лумака');
INSERT INTO `locales_points_of_interest` VALUES (617, 'Dark Cleric Beryl', NULL, NULL, NULL, '黑暗教士贝里尔', NULL, NULL, NULL, 'Дендрарий Джанди');
INSERT INTO `locales_points_of_interest` VALUES (618, 'Marion Call', NULL, NULL, NULL, '马里恩·考尔', NULL, NULL, NULL, 'Рудник Ржавого каньона');
INSERT INTO `locales_points_of_interest` VALUES (619, 'Rupert Boch', NULL, NULL, NULL, '鲁伯特·鲍什', NULL, NULL, NULL, 'Выделка шкур кодо');
INSERT INTO `locales_points_of_interest` VALUES (620, 'Austil de Mon', NULL, NULL, NULL, '奥斯蒂尔·德·蒙', NULL, NULL, NULL, 'Портняжное ателье Магара');
INSERT INTO `locales_points_of_interest` VALUES (623, 'Nurse Neela', NULL, NULL, NULL, '妮拉', NULL, NULL, NULL, 'Дарнасский учитель травничества');
INSERT INTO `locales_points_of_interest` VALUES (272, 'Orgrimmar Hunter\'s Hall', NULL, NULL, NULL, '奥格瑞玛猎人大厅', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (278, 'Darkfire Enclave', NULL, NULL, NULL, '暗火营地', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (588, 'Thotar', NULL, NULL, NULL, '索塔尔', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (589, 'Un\'Thuwa', NULL, NULL, NULL, '安苏瓦', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (590, 'Tai\'jin', NULL, NULL, NULL, '泰金', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (591, 'Kaplak', NULL, NULL, NULL, '卡普拉克', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (592, 'Swart', NULL, NULL, NULL, '巡山人斯瓦尔斯', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (594, 'Dhugru Gorelust', NULL, NULL, NULL, '杜格鲁·血怒', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (593, 'Tarshaw Jaggedscar', NULL, NULL, NULL, '塔绍尔·锯痕', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (595, 'Miao\'zan', NULL, NULL, NULL, '米奥赞', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (597, 'Dwukk', NULL, NULL, NULL, '杜克', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (602, 'Mukdrak', NULL, NULL, NULL, '穆德拉克', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (598, 'Rawrk', NULL, NULL, NULL, '拉乌克', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (801, 'Lau\'Tiki', NULL, NULL, NULL, '劳迪克', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (596, 'Mishiki', NULL, NULL, NULL, '米什基', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (621, 'Carolai Anise', NULL, NULL, NULL, '卡罗莱·大茴香', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (622, 'Vance Undergloom', NULL, NULL, NULL, '范斯·安德格鲁姆', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (624, 'Clyde Kellen', NULL, NULL, NULL, '克莱德·凯林', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (625, 'Faruza', NULL, NULL, NULL, '法鲁萨', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (626, 'Shelene Rhobart', NULL, NULL, NULL, '舍伦尼·洛巴尔特', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (627, 'Rand Rhobart', NULL, NULL, NULL, '兰德·洛巴尔特', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (628, 'Bowen Brisboise', NULL, NULL, NULL, '博文·布里斯博埃斯', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (158, 'Thunder Bluff Civic Information', NULL, NULL, NULL, '雷霆崖咨询处', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (850, 'Bulrug', NULL, NULL, NULL, '布尔鲁格', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (729, 'Archibald', NULL, NULL, NULL, '阿奇博尔德', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (456, 'Undercity Rogue Trainers', NULL, NULL, NULL, '幽暗城盗贼训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (485, 'Undercity Engineering Trainer', NULL, NULL, NULL, '幽暗城工程训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (483, 'Undercity First Aid Trainer', NULL, NULL, NULL, '幽暗城急救训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (487, 'Undercity Fishing Trainer', NULL, NULL, NULL, '幽暗城钓鱼训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (477, 'Undercity Herbalism Trainer', NULL, NULL, NULL, '幽暗城草药教练', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (480, 'Undercity Leatherworking Trainer', NULL, NULL, NULL, '幽暗城皮革加工训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (481, 'Undercity Skinning Trainer', NULL, NULL, NULL, '幽暗城剥皮训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (459, 'Undercity Mining Trainer', NULL, NULL, NULL, '幽暗城M采矿训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (462, 'Undercity Tailoring Trainer', NULL, NULL, NULL, '幽暗城裁缝训练师', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (420, 'Springspindle\'s Gadgets', NULL, NULL, NULL, '宾斯匹德器具店', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (676, 'Yarr Hammerstone', NULL, NULL, NULL, '亚尔·锤石', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (587, 'Razor Hill Inn', NULL, NULL, NULL, '剃刀高地旅馆', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (847, 'Shoja\'my', NULL, NULL, NULL, '苏亚米', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (528, 'Stormwind Mailbox', NULL, NULL, NULL, '暴风城邮箱', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1674, 'Thelman Slatefist', NULL, NULL, NULL, '塞尔曼·岩拳', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1679, 'Lady Hoteshem', NULL, NULL, NULL, '赫塔希姆女士', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1675, 'Elfarran', NULL, NULL, NULL, '艾弗拉兰', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1672, 'Glordrum Steelbeard', NULL, NULL, NULL, '格罗杜姆·钢须', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1678, 'Donal Osgood', NULL, NULL, NULL, '杜纳尔·奥斯古', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1673, 'Lylandris', NULL, NULL, NULL, '莱兰迪斯', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1667, 'Brogun Stoneshield', NULL, NULL, NULL, '布洛冈·石盾', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1680, 'Keras Wolfheart', NULL, NULL, NULL, '克拉斯·狼心', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1647, 'Aethalas', NULL, NULL, NULL, '艾萨拉斯·克罗维尔', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1668, 'Taim Ragetotem', NULL, NULL, NULL, '泰姆·狂暴图腾', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1677, 'Martin Lindsey', NULL, NULL, NULL, '马丁·林塞', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1669, 'Kergul Bloodaxe', NULL, NULL, NULL, '克古尔·血斧', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (827, 'Orgrimmar Zeppelin Tower', NULL, NULL, NULL, '奥格瑞玛飞艇塔', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1671, 'Grizzle Halfmane', NULL, NULL, NULL, '格里兹尔·半鬃', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1676, 'Sir Malory Wheeler', NULL, NULL, NULL, '玛洛维尔爵士', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (1670, 'Kurden Bloodclaw', NULL, NULL, NULL, '库尔丁·血爪', NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10001, 'Warrior Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10002, 'Priest Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10003, 'Paladin Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10004, 'Fishing Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10005, 'Enchanting Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10006, 'Mage Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10007, 'Engineering Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10008, 'Innkeeper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10009, 'Cooking Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10010, 'Alchemy Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10011, 'Auctioneer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10012, 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10013, 'Rogue Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10014, 'Leatherworking Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10015, 'Skinning Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10016, 'Tailoring Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10017, 'Herbalism Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10018, 'Silvermoon Quartermaster', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10019, 'Hunter Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `locales_points_of_interest` VALUES (10020, 'Mining Trainer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


SET FOREIGN_KEY_CHECKS = 1;
