drop table if exists shop_categories;
create table shop_categories (
  id int(11) unsigned not null auto_increment,
  name text,
  name_loc4 text,
  icon text,
  primary key (id)
) engine=innodb default charset=utf8;

drop table if exists shop_items;
create table shop_items  (
  id int(11) unsigned not null auto_increment,
  category tinyint(3) unsigned not null default 0,
  item int(11) unsigned not null default 0,
  model_id int(10) unsigned not null default 0,
  item_id int(10) unsigned not null default 0,
  description text character set utf8mb3 collate utf8mb3_general_ci null default null,
  description_loc4 text character set utf8mb3 collate utf8mb3_general_ci null default null,
  price int(11) unsigned null default 0,
  region_locked tinyint(3) unsigned not null default 0,
  position_x FLOAT null default 0,
  position_y FLOAT null default 0,
  position_z FLOAT null default 0,
  rotation FLOAT null default 0,
  scale FLOAT null default 1,
  primary key (id) using btree
) engine = innodb auto_increment = 457 character set = utf8mb3 collate = utf8mb3_general_ci row_format = dynamic;

-- === SALE % === --

SET @discount = 0.5;

-- ============== --

replace into shop_categories (id, name, name_loc4, icon) values 

(1,  'Miscellaneous', '杂项', 'default'),
(2,  'Skins', '外观', 'ticket'),
(3,  'Gameplay', '玩法玩具', 'toys'),
(4,  'Glyphs', '雕文', 'service'),
(5,  'Mounts', '坐骑', 'mount'),
(6,  'Companions', '小宠物', 'pet'),
(7,  'Fashion', '时尚', 'tabard'),
(8,  'Illusions', '幻象', 'scroll');

replace into shop_items (id, category, item, model_id, item_id, description, description_loc4, price, region_locked, position_x, position_y, position_z, rotation, scale) values 
(1, 1, 50000, 0, 0, 'Token: Character Name Change', '代币：角色名称变更', 160, 0, 0, 0, 0, 0, 1),
(2, 1, 80499, 0, 0, 'Token: Guild Name Change', '代币：公会名称变更', 300, 0, 0, 0, 0, 0, 1),
(3, 1, 80699, 0, 0, 'Token: Appearance Change', '代币：外观变更', 160, 0, 0, 0, 0, 0, 1),
(4, 1, 80555, 0, 0, 'Token: Pet Rename', '代币:宠物重命名', 100, 0, 0, 0, 0, 0, 1),
(5, 1, 51306, 0, 0, 'Pouch of Fashion Coins', '大袋时尚硬币', 200, 0, 0, 0, 0, 0, 1),
(6,  1, 50603, 0, 0, 'Change Race: Human', '种族转换：人类', 300, 0, 0, 0, 0, 0, 1),
(7,  1, 50604, 0, 0, 'Change Race: Gnome', '种族转换：侏儒', 300, 0, 0, 0, 0, 0, 1),
(8,  1, 50605, 0, 0, 'Change Race: Dwarf', '种族转换：矮人', 300, 0, 0, 0, 0, 0, 1),
(9,  1, 50606, 0, 0, 'Change Race: Night Elf', '种族转换：暗夜精灵', 300, 0, 0, 0, 0, 0, 1),
(10, 1, 50607, 0, 0, 'Change Race: Orc', '种族转换：兽人', 300, 0, 0, 0, 0, 0, 1),
(11, 1, 50608, 0, 0, 'Change Race: Troll', '种族转换：巨魔', 300, 0, 0, 0, 0, 0, 1),
(12, 1, 50609, 0, 0, 'Change Race: Tauren', '种族转换：牛头人', 300, 0, 0, 0, 0, 0, 1),
(13, 1, 50610, 0, 0, 'Change Race: Undead', '种族转换：亡灵', 300, 0, 0, 0, 0, 0, 1),
(14, 1, 50613, 0, 0, 'Change Race: Goblin', '种族转换：高等精灵', 300, 0, 0, 0, 0, 0, 1),
(15, 1, 50612, 0, 0, 'Change Race: High Elf', '种族转换：地精', 300, 0, 0, 0, 0, 0, 1),
(17, 2, 51920, 0, 0, 'Touch of Darkness - Undead, male', '猩红 - 人类，仅限女性', 160, 0, 0, 0, 0, 0, 1),
(18, 2, 51921, 0, 0, 'Blood Widow - Undead, female', '猩红 - 人类，仅限女性', 160, 0, 0, 0, 0, 0, 1),
(20, 2, 50105, 0, 0, 'Scarlet - Human, female only', '猩红 - 人类，仅限女性', 160, 0, 0, 0, 0, 0, 1),
(21, 2, 50106, 0, 0, 'Necromancer I - Human', '死灵法师 I - 人类', 160, 0, 0, 0, 0, 0, 1),
(22, 2, 61106, 0, 0, 'Necromancer II - Night Elf, male only', '死灵法师 II - 人类，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(23, 2, 50292, 0, 0, 'Arcane - Human', '奥术【人类】', 160, 0, 0, 0, 0, 0, 1),
(24, 2, 50290, 0, 0, 'Azotha - Human, female only', '阿索拉 - 人类，仅限女性', 160, 0, 0, 0, 0, 0, 1),
(25, 2, 50291, 0, 0, 'Fel - Human, male only', '邪能 - 人类，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(26, 2, 83090, 0, 0, 'Dalaran Magi - Human, male only', '达拉然法师 - 人类', 160, 0, 0, 0, 0, 0, 1),
(27, 2, 83091, 0, 0, 'Frost Affinity - Human, male only', '冰霜亲和【人类，仅限男性】', 160, 0, 0, 0, 0, 0, 1),
(28, 2, 81210, 0, 0, 'Death Knight - Human, male only', '死亡骑士- 人类，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(29, 2, 50204, 0, 0, 'Wildhammer I - Dwarf', '蛮锤 I - 矮人', 160, 0, 0, 0, 0, 0, 1),
(30, 2, 50250, 0, 0, 'Wildhammer II - Dwarf', '蛮锤 II - 矮人', 160, 0, 0, 0, 0, 0, 1),
(31, 2, 50251, 0, 0, 'Wildhammer III - Dwarf', '蛮锤 III - 矮人', 160, 0, 0, 0, 0, 0, 1),
(32, 2, 50252, 0, 0, 'Wildhammer IV - Dwarf', '蛮锤 IV - 矮人', 160, 0, 0, 0, 0, 0, 1),
(33, 2, 50205, 0, 0, 'Dark Iron - Dwarf', '黑铁- 矮人', 160, 0, 0, 0, 0, 0, 1),
(34, 2, 50206, 0, 0, 'Earthern - Dwarf, male only', '土灵- 矮人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(35, 2, 81229, 0, 0, 'Death Knight - Dwarf, male only', '死亡骑士- 矮人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(36, 2, 61105, 0, 0, 'Demon Hunter - Night Elf', '恶魔猎手【暗夜精灵】', 160, 0, 0, 0, 0, 0, 1),
(37, 2, 61104, 0, 0, 'Demon - Night Elf', '恶魔【暗夜精灵，仅限男性】', 160, 0, 0, 0, 0, 0, 1),
(38, 2, 83092, 0, 0, 'Naturalist I - Night Elf', '自然学家 I - 暗夜精灵，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(39, 2, 83099, 0, 0, 'Naturalist II - Night Elf', '自然学家 II - 暗夜精灵', 160, 0, 0, 0, 0, 0, 1),
(40, 2, 83100, 0, 0, 'Naturalist III - Night Elf, male only', '自然学家III - 暗夜精灵，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(41, 2, 50212, 0, 0, 'Leper - Gnome', '麻风 - 侏儒', 160, 0, 0, 0, 0, 0, 1),
(42, 2, 81230, 0, 0, 'Necromancer III - Gnome', '死灵法师 III - 侏儒', 160, 0, 0, 0, 0, 0, 1),
(43, 2, 81206, 0, 0, 'Dark Ranger - High Elf', '黑暗游侠- 高等精灵', 160, 0, 0, 0, 0, 0, 1),
(44, 2, 81209, 0, 0, 'Blood Elf - High Elf', '血精灵【高等精灵】', 160, 0, 0, 0, 0, 0, 1),
(45, 2, 50207, 0, 0, 'Blackrock I - Orc', '黑石 I - 兽人', 160, 0, 0, 0, 0, 0, 1),
(46, 2, 50208, 0, 0, 'Chaos - Orc', '混沌- 兽人', 160, 0, 0, 0, 0, 0, 1),
(47, 2, 50209, 0, 0, 'Mag\'Har - Orc, male only', '玛格哈- 兽人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(48, 2, 50220, 0, 0, 'Blackrock II - Orc', '黑石 II - 兽人', 160, 0, 0, 0, 0, 0, 1),
(49, 2, 50221, 0, 0, 'Blackrock III - Orc', '黑石 III - 兽人', 160, 0, 0, 0, 0, 0, 1),
(50, 2, 50223, 0, 0, 'Dreadskull II - Orc, male only', '恐怖骷髅 II - 兽人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(51, 2, 50224, 0, 0, 'Dreadskull III - Orc, male only', '恐怖骷髅 III - 兽人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(52, 2, 81255, 0, 0, 'Dreadskull - Orc, male only', '恐怖骷髅 - 兽人，仅限男性', 160, 0, 0, 0, 0, 0, 1),
(56, 2, 51010, 0, 0, 'Dark - Troll', '黑暗- 巨魔', 160, 0, 0, 0, 0, 0, 1),
(57, 2, 51011, 0, 0, 'Ice - Troll', '冰霜- 巨魔', 160, 0, 0, 0, 0, 0, 1),
(58, 2, 81208, 0, 0, 'Zombie - Troll', '僵尸- 巨魔', 160, 0, 0, 0, 0, 0, 1),
(59, 2, 81228, 0, 0, 'Tauren Spirit Walker - Tauren', '牛头人灵魂行者- 牛头人', 160, 0, 0, 0, 0, 0, 1),
(61, 3, 50003, 0, 0, 'Backpack: 28 slots', '背包：28格', 200, 0, 0, 0, 0, 0, 1),
(62, 3, 50004, 0, 0, 'Backpack: 36 slots', '背包：36格', 300, 0, 0, 0, 0, 0, 1),
(63, 3, 50011, 0, 0, 'Mailbox', '召唤：邮箱', 200, 0, 0, 0, 0, 0, 1),
(64, 3, 51715, 0, 0, 'Brainwashing Device', '召唤：洗脑装置', 200, 0, 0, 0, 0, 0, 1),
(65, 3, 50602, 7993, 0, 'Auctioneer Drezbit', '召唤：拍卖师', 200, 0, 0, 0, 0, 0, 1),
(66, 3, 50009, 6909, 0, 'Mechanical Auctioneer', '召唤：机械拍卖师', 200, 0, 0, 0, 0, 0, 1),
(67, 3, 50005, 1097, 0, 'Repair Bot', '召唤：修理机器人75B', 200, 0, 0, 0, 0, 0, 1),
(68, 3, 50007, 16075, 0, 'Forworn Mule', '召唤：银行（骡子）', 250, 0, 0, 0, 0, 0, 1),
(69, 3, 51421, 7933, 0, 'Caravan Kodo', '召唤：银行（科多兽）', 250, 0, 0, 0, 0, 0, 1),
(70, 3, 31825, 0, 0, 'Blazing Forge Kit', 'PLACEHOLDER', 250, 0, 0, 0, 0, 0, 1),
(71, 3, 31826, 0, 0, 'Tome of Tactical Escape I', 'PLACEHOLDER', 250, 0, 0, 0, 0, 0, 1),
(86, 4, 51057, 11444, 0, 'Druid: Glyph of the Frostsaber', '德鲁伊：霜刃豹雕文', 150, 0, 0, 0, 0, 0, 1),
(87, 4, 51266, 19168, 0, 'Druid: Glyph of the Ice Bear', '德鲁伊：冰熊雕文', 150, 0, 0, 0, 0, 0, 1),
(88, 4, 51431, 12237, 0, 'Druid: Glyph of the Frostkin', '德鲁伊：寒霜枭雕文', 150, 0, 0, 0, 0, 0, 1),
(89, 4, 51830, 4591, 0, 'Druid: Glyph of the Orca', '德鲁伊：虎鲸雕文', 150, 0, 0, 0, 0, 0, 1),
(90, 4, 51432, 5745, 0, 'Druid: Glyph of the Moon', '德鲁伊：星辰雕文', 150, 0, 0, 0, 0, 0, 1),
(94, 4, 51056, 1992, 0, 'Druid: Glyph of the Stag', '德鲁伊：雄鹿雕文', 150, 0, 0, 0, 0, 0, 1),
(95, 4, 92042, 18030, 0, 'Druid: Glyph of the Autumn Treant', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(96, 4, 92043, 18029, 0, 'Druid: Glyph of the Golden Treant', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(97, 4, 92044, 6351, 0, 'Druid: Glyph of the Withered Treant', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(101, 5, 50071, 4807, 0, 'Ivory Tallstrider', '象牙陆行鸟', 100, 0, -0.112, 1.104, 0.1, -0.311, 1.1),
(102, 5, 50072, 6474, 0, 'Brown Tallstrider', '棕色陆行鸟', 100, 0, 1.778, -0.949, 0.1, -0.263, 1.5),
(103, 5, 50073, 6475, 0, 'Gray Tallstrider', '灰色陆行鸟', 100, 0, -0.539, -2.763, -0.101, -0.311, 2.299),
(104, 5, 50076, 6478, 0, 'Turquoise Tallstrider', '绿松石陆行鸟', 100, 0, 1.81, -0.822, 0.1, -0.242, 1.5),
(105, 5, 50074, 6476, 0, 'Pink Tallstrider', '粉红高陆行鸟', 100, 0, 1.778, -0.822, 0.1, -0.263, 1.5),
(106, 5, 81100, 18180, 0, 'Swift Raven Lord', '迅捷乌鸦领主', 500, 0, 0.223, 2.159, 1.299, -0.263, 0.599),
(107, 5, 81120, 18295, 0, 'Frayfeather Hippogryph', '乱羽角鹰兽', 500, 0, 0.204, -0.315, 0, -0.269, 1.7),
(108, 5, 81121, 18299, 0, 'Cenarion Hippogryph', '塞纳里奥角鹰兽', 500, 0, 0.379, -0.413, 0, -0.337, 1.8),
(109, 5, 81242, 18298, 0, 'Viridian Hippogryph', '翠绿角鹰兽', 300, 0, 1.189, 0.084, 0.5, -0.347, 1.3),
(110, 5, 80431, 18094, 0, 'Swift Magic Rooster', '迅捷魔法公鸡', 300, 0, -0.319, -0.82, -0.301, -0.231, 1.2),
(121, 5, 12325, 4805, 0, 'Spotted Leopard', '斑点刃豹', 200, 0, 0.057, 0.724, 0, -0.334, 1.399),
(122, 5, 12326, 6442, 0, 'Tawny Leopard', '褐色刃豹', 200, 0, 0.041, 0.771, 0, -0.317, 1.399),
(123, 5, 12327, 9714, 0, 'Golden Leopard', '黄金刃豹', 200, 0, 0.051, 1.195, 1.2, -0.342, 1.2),
(124, 5, 8630, 6443, 0, 'Stranglethorn Tiger', '荆棘谷老虎', 200, 0, 0.004, 1.132, 1.1, -0.301, 1.2),
(125, 5, 81227, 18255, 0, 'Striped Dawnsaber', '虎纹黎明刃豹', 200, 0, 0.083, 1.132, 1.1, -0.342, 1.2),
(126, 5, 12302, 9695, 0, 'Ancient Frostsaber', '远古霜刃剑', 200, 0, 0.045, 0.739, 0, -0.331, 1.299),
(127, 5, 8635, 9991, 0, 'Ancient Nightsaber', '远古夜刃豹', 200, 0, 0.004, 1.148, 1.2, -0.342, 1.2),
(128, 5, 81232, 18435, 0, 'Azure Frostsaber', '蔚蓝霜刃剑', 160, 0, 0.079, 0.805, 0, -0.272, 1.5),
(129, 5, 18768, 14329, 0, 'Armored Dawnsaber', '装甲黎明刃豹', 260, 0, 0.051, 1.353, 1.299, -0.342, 1.2),
(130, 5, 80430, 18143, 0, 'Armored Spectral Tiger', '装甲幽灵虎', 2000, 0, 0.32, 1.953, 1.549, -0.321, 1.1),
(131, 5, 12303, 9991, 0, 'Black Zulian Panther', '黑色祖利安刃豹', 200, 0, 0.051, 1.306, 1.2, -0.342, 1.2),
(132, 5, 81231, 18436, 0, 'Tamed Rak\'Shiri', '驯服的拉克希里', 200, 0, 0.063, 0.774, 0, -0.314, 1.5),
(141, 5, 50399, 2186, 0, 'Ancient Quel\'dorei Steed', '上古奎尔多雷战马', 200, 0, -0.406, -0.158, -0.401, -0.242, 1),
(142, 5, 80449, 18259, 0, 'Armored Alliance Steed', '装甲联盟战马', 300, 0, -0.731, 1.712, 1.1, -0.101, 0.799),
(143, 5, 81236, 18260, 0, 'Armored Gray Steed', '装甲灰骏马', 200, 0, -0.87, 1.295, -0.401, -0.105, 1),
(144, 5, 23193, 10718, 0, 'Armored Black Deathcharger', '装甲黑色死亡战马', 300, 0, -1.427, -0.001, -0.7, -0.347, 0.799),
(145, 5, 81235, 18262, 0, 'Armored Vermilion Deathcharger', '装甲绯红死亡战马', 300, 0, 0.091, 0.14, 0.4, -0.311, 0.2),
(146, 5, 50407, 2185, 0, 'Nightmare Dreamrunner', '噩梦行者', 200, 0, -0.106, -0.506, -0.301, -0.201, 1.1),
(147, 5, 50400, 18243, 0, 'Riding Zhevra', '骑乘斑纹斑马', 200, 0, -1.027, 0.158, -0.101, 0.61, 0.2),
(148, 5, 81234, 18252, 0, 'Brewfest Ram', '美酒节公羊', 200, 0, -0.831, 1.862, 1.2, -0.201, 0.799),
(149, 5, 80443, 18253, 0, 'Armored Brewfest Ram', '装甲美酒节公羊', 360, 0, -0.759, 1.722, 0, -0.126, 0.899),
(150, 5, 13328, 2784, 0, 'Ancient Black Ram', '远古黑色公羊', 200, 0, -0.815, 1.784, 1.2, -0.18, 0.799),
(151, 5, 50406, 19101, 0, 'Shadowhorn Stag', '暗角雄鹿', 200, 0, 0.06, 1.021, -0.801, -0.268, 0.899),
(162, 5, 80455, 18265, 0, 'Armored Brewfest Kodo', '装甲美酒节科多兽', 400, 0, -0.064, 1.69, -0.401, -0.356, 0.499),
(163, 5, 1041, 207, 0, 'Ancient Black Wolf', '远古黑色巨狼', 200, 0, -0.159, 0.158, 0, -0.272, 1.3),
(164, 5, 5663, 2326, 0, 'Ancient Red Wolf', '远古红色巨狼', 200, 0, -0.08, 0.403, 0.3, -0.347, 1.1),
(165, 5, 80447, 18257, 0, 'Armored Horde Wolf', '装甲部落战狼', 300, 0, -0.159, 0.158, 0, -0.335, 1.2),
(181, 5, 50401, 14345, 0, 'Armored Ivory Raptor', '装甲象牙迅猛龙', 360, 0, 0.166, 1.976, 0.599, -0.347, 0.699),
(182, 5, 50402, 14343, 0, 'Armored Violet Raptor', '装甲紫罗兰迅猛龙', 360, 0, 0.221, 1.829, -0.401, -0.331, 0.699),
(183, 5, 50403, 14341, 0, 'Armored Red Raptor', '装甲红色迅猛龙', 360, 0, 0.134, 1.976, 0.599, -0.347, 0.699),
(184, 5, 50404, 14340, 0, 'Armored Obsidian Raptor', '装甲黑曜石迅猛龙', 360, 0, 0.14, 1.843, -0.401, -0.332, 0.699),
(185, 5, 81154, 18481, 0, 'Armored Black Bear', '装甲黑色战熊', 400, 0, -0.985, -0.106, -0.5, -0.347, 1),
(186, 5, 81153, 18488, 0, 'Armored Purple Bear', '装甲紫色战熊', 400, 0, 0.015, -0.253, 0, -0.314, 0.899),
(187, 5, 81155, 18484, 0, 'Armored Red Bear', '装甲红色战熊', 400, 0, -0.969, -0.222, -0.601, -0.326, 1),
(188, 5, 81158, 18491, 0, 'Armored Frostmane Bear', '装甲霜鬃战熊', 400, 0, -1, -0.285, -0.601, -0.242, 1),
(189, 5, 81091, 18492, 0, 'Big Blizzard Bear', '暴雪大战熊', 500, 0, -0.332, -0.285, -0.201, -0.242, 1.1),
(190, 5, 81102, 18090, 0, 'Darkmoon Dancing Bear', '暗月跳舞熊', 300, 0, -0.08, -0.206, 0, -0.314, 1.1),
(225, 5, 83150, 20416, 0, 'Big Turtle WoW Bear', '巨龟战熊', 360, 0, -0.332, -0.285, -0.201, -0.242, 1.1),
(226, 5, 83151, 20417, 0, 'Black Spectral Tiger', '黑色幽灵虎', 2000, 0, 0.336, 1.969, 1.75, -0.301, 1.1),
(227, 5, 83152, 20419, 0, 'Green Spectral Tiger', '绿色幽灵虎', 2000, 0, 0.304, 1.969, 1.75, -0.301, 1.1),
(228, 5, 83154, 20421, 0, 'Armored Ice Raptor', '装甲冰霜迅猛龙', 360, 0, 0.198, 1.944, 0.599, -0.263, 0.699),
(229, 5, 83155, 20422, 0, 'Scarlet Charger', '猩红战马', 360, 0, -1.121, -0.232, -0.801, -0.201, 1),
(230, 5, 83158, 20425, 0, 'Brown Zhevra', '棕色斑马', 360, 0, -2.212, 0.159, -0.401, 0.709, 0.4),
(231, 5, 50536, 19170, 0, 'Twilight', '恐怖图腾科多兽', 1000, 0, 0.283, -0.622, 0.3, -0.311, 1),
(232, 5, 81239, 0, 0, 'Happy Dalaran Cloud', '开心的云朵', 300, 0, 0, 0, 0, 0, 1),
(233, 5, 81238, 0, 0, 'Turbo-Charged Flying Machine', '涡轮增压飞行器', 500, 0, 0, 0, 0, 0, 1),
(234, 5, 92050, 0, 0, 'Celestial Steed', 'PH', 500, 0, 0, 0, 0, 0, 1),
(235, 5, 92051, 0, 0, 'Invincible', 'PH', 500, 0, 0, 0, 0, 0, 1),
(236, 5, 92052, 20418, 0, 'Red Spectral Tiger', 'PH', 2000, 0, 0.304, 1.969, 1.75, -0.301, 1.1),
(241, 6, 13584, 10992, 0, 'Diablo Stone', '破坏神之石', 80, 0, 0, 0, 0, 0, 1),
(242, 6, 13583, 10990, 0, 'Panda Cub', '熊猫项圈', 80, 0, 0, 0, 0, 0, 1),
(243, 6, 20371, 15369, 0, 'Murky', '奔波尔霸', 80, 0, 0, 0, 0, 0, 1),
(246, 6, 50013, 12074, 0, 'Bone Golem', '骸骨魔像', 80, 0, 0, 0, 0, 0, 1),
(247, 6, 50019, 18926, 0, 'Moonkin Hatchling', '枭兽宝宝', 80, 0, 0, 0, 0, 0, 1),
(248, 6, 50083, 6293, 0, 'Azure Whelpling', '蓝龙雏龙', 80, 0, 0, 0, 0, 0, 1),
(249, 6, 50084, 14432, 0, 'Kirin Tor Familiar', '肯瑞托魔仆', 80, 0, 0, 0, 0, 0, 1),
(250, 6, 22781, 16189, 0, 'Poley', '波利', 80, 0, 0, 0, 0, 0, 1),
(251, 6, 50085, 1236, 0, 'Frostwolf Ghostpup', '霜狼幽灵幼崽', 80, 0, 0, 0, 0, 0, 1),
(252, 6, 51007, 9590, 0, 'Teldrassil Sproutling', '泰达希尔树苗', 80, 0, 0, 0, 0, 0, 1),
(253, 6, 81150, 18176, 0, 'Phoenix Hatchling', '凤凰雏鸟', 150, 0, 0, 0, 0, 0, 1),
(254, 6, 81151, 18425, 0, 'Spirit Darter', '幽灵飞蜥', 80, 0, 0, 0, 0, 0, 1),
(255, 6, 81207, 18523, 0, 'Whimsyshire Cloud', '奇思妙想云', 150, 0, 0, 0, 0, 0, 1),
(256, 6, 81258, 18730, 0, 'Spectral Cub', '幽灵虎幼崽', 200, 0, 0, 0, 0, 0, 1),
(257, 6, 69004, 18627, 0, 'Pengu', '小潘', 200, 0, 0, 0, 0, 0, 1),
(258, 6, 69006, 18476, 0, 'Glitterwing', '闪翼', 200, 0, 0, 0, 0, 0, 1),
(259, 6, 83300, 18925, 0, 'Lil\' K.T', '小克', 300, 0, 0, 0, 0, 0, 1),
(260, 6, 83301, 18928, 0, 'Core Hound Pet', '熔火恶犬小宠物', 300, 0, 0, 0, 0, 0, 1),
(261, 6, 83302, 18927, 0, 'Lil\' Ragnaros', '小拉格纳罗斯', 300, 0, 0, 0, 0, 0, 1),
(262, 6, 36500, 19106, 0, 'Sunfire Fox', 'PLACEHOLDER', 150, 0, -1, 0, -0.3, 0, 1),
(263, 6, 36501, 19127, 0, 'Tangerine Wind Serpent', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(264, 6, 36502, 19128, 0, 'Dark Wind Serpent', 'PLACEHOLDER', 150, 0, -2, 0, -0.4, 0, 1),
(265, 6, 36503, 19130, 0, 'Emerald Wind Serpent', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(266, 6, 36504, 19131, 0, 'Azure Wind Serpent', 'PLACEHOLDER', 150, 0, -2, 0, -0.4, 0, 1),
(267, 6, 36505, 20369, 0, 'Crimson Sabercat Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(268, 6, 36506, 20370, 0, 'Alliance Lion Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(269, 6, 36507, 20371, 0, 'Spot', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(270, 6, 36508, 20372, 0, 'Twilight Paws', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(271, 6, 36509, 20374, 0, 'Black Panther Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(272, 6, 36510, 20377, 0, 'Tawny', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(273, 6, 36511, 20376, 0, 'Nightsaber Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(274, 6, 36512, 20379, 0, 'Snow Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(275, 6, 36513, 20380, 0, 'Stangletorn Tiger Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(276, 6, 36514, 20382, 0, 'Frostsaber Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(277, 6, 36515, 20383, 0, 'Cheetah Cub', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(278, 6, 36516, 20506, 0, 'Chestnut', 'PLACEHOLDER', 150, 0, 0, 0, 0, 0, 1),
(291, 8, 51201, 522, 0, 'Illusion: Worgen', '幻象：狼人', 160, 0, 0, 0, 0, 0, 1),
(292, 8, 51205, 14368, 0, 'Illusion: Ghost', '幻象：幽灵', 160, 0, 0, 0, 0, 0, 1),
(293, 8, 51206, 8782, 0, 'Illusion: Banshee', '幻象：女妖', 160, 0, 0, 0, 0, 0, 1),
(294, 8, 51208, 10923, 0, 'Illusion: Succubus', '幻象：魅魔', 160, 0, 0, 0, 0, 0, 1),
(295, 8, 51065, 4629, 0, 'Illusion: Shadow', '幻象：暗影', 160, 0, 0, 0, 0, 0, 1),
(296, 8, 80648, 487, 0, 'Illusion: Gnoll', '幻象：豺狼人', 160, 0, 0, 0, 0, 0, 1),
(297, 8, 51253, 6746, 0, 'Illusion: Furbolg', '幻象：熊怪', 160, 0, 0, 0, 0, 0, 1),
(298, 8, 81145, 18251, 0, 'Illusion: Pandaren', '幻象：熊猫人', 160, 0, 0, 0, 0, 0, 1),
(299, 8, 80694, 158, 0, 'Illusion: Scourge', '幻象：天灾军团', 160, 0, 0, 0, 0, 0, 1),
(300, 8, 51215, 2012, 0, 'Illusion: Satyr', '幻象：萨特', 160, 0, 0, 0, 0, 0, 1),
(301, 8, 53008, 18065, 0, 'Illusion: Ogre', '幻象：食人魔', 160, 0, 0, 0, 0, 0, 1),
(302, 8, 92030, 7970, 0, 'Illusion: Felguard', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(303, 8, 92031, 18121, 0, 'Illusion: Prismatic Dragonkin', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(304, 8, 92032, 18122, 0, 'Illusion: Chromatic Dragonkin', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(305, 8, 92033, 18042, 0, 'Illusion: Infinite Dragonkin', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(306, 8, 92034, 18120, 0, 'Illusion: Bronze Dragonkin', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(307, 8, 92035, 20490, 0, 'Illusion: Blue Dragonkin', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(308, 8, 92036, 20498, 0, 'Illusion: Murloc', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(309, 8, 92037, 20494, 0, 'Illusion: Gilnean Worgen', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(310, 8, 92038, 1201, 0, 'Illusion: Zombie', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(311, 8, 92039, 1065, 0, 'Illusion: Ghoul', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(312, 8, 92040, 11396, 0, 'Illusion: Scourge Mage', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(313, 8, 50408, 12350, 0, 'Illusion: Dryad', 'PLACEHOLDER', 160, 0, 0, 0, 0, 0, 1),
(314, 8, 92041, 18778, 0, 'Illusion: Incubus', 'PLACEHOLDER', 160, 2, 0, 0, 0, 0, 1),
(401, 7, 81088, 0, 81088, 'Tabard of Summer Skies', '夏日天空战袍', 180, 0, 0, 0, 0, 0, 1),
(402, 7, 81087, 0, 81087, 'Tabard of Summer Flames', '夏日烈焰战袍', 180, 0, 0, 0, 0, 0, 1),
(403, 7, 23709, 0, 23709, 'Tabard of Frost', '冰霜战袍', 200, 0, 0, 0, 0, 0, 1),
(404, 7, 23705, 0, 23705, 'Tabard of Flame', '烈焰战袍', 200, 0, 0, 0, 0, 0, 1),
(405, 7, 81083, 0, 81083, 'Tabard of the Void', '虚空战袍', 200, 0, 0, 0, 0, 0, 1),
(406, 7, 81085, 0, 81085, 'Tabard of Nature', '自然战袍', 200, 0, 0, 0, 0, 0, 1),
(407, 7, 81084, 0, 81084, 'Tabard of the Arcane', '奥术战袍', 200, 0, 0, 0, 0, 0, 1),
(408, 7, 81082, 0, 81082, 'Tabard of Brilliance', '光辉战袍', 200, 0, 0, 0, 0, 0, 1),
(409, 7, 81081, 0, 81081, 'Tabard of Fury', '愤怒战袍', 200, 0, 0, 0, 0, 0, 1),
(410, 7, 23710, 0, 23710, 'Darkmoon Faire Tabard', '暗月马戏团战袍', 200, 0, 0, 0, 0, 0, 1),
(411, 7, 80314, 0, 80314, 'Undead Scourge Tabard', '天灾军团战袍', 200, 0, 0, 0, 0, 0, 1),
(412, 7, 50086, 0, 50086, 'Stromgarde Tabard', '激流堡战袍', 160, 0, 0, 0, 0, 0, 1),
(413, 7, 50092, 0, 50092, 'Crimson Legion Tabard', '猩红军团战袍', 160, 0, 0, 0, 0, 0, 1),
(415, 7, 50376, 0, 50376, 'Hillsbrad Tabard', '希尔斯布莱德战袍', 160, 0, 0, 0, 0, 0, 1),
(416, 7, 50091, 0, 50091, 'Black Mageweave Tabard', '黑色魔纹战袍', 160, 0, 0, 0, 0, 0, 1),
(417, 7, 50038, 0, 50038, 'Red Mageweave Tabard', '红色魔纹战袍', 160, 0, 0, 0, 0, 0, 1),
(419, 7, 50044, 0, 50044, 'Gold Mageweave Tabard', '金色魔纹战袍', 160, 0, 0, 0, 0, 0, 1),
(420, 7, 80310, 0, 80310, 'Sin\'dorei Tabard', '辛多雷战袍', 180, 0, 0, 0, 0, 0, 1),
(421, 7, 81203, 0, 81203, 'Violet Eye Tabard', '紫罗兰战袍', 180, 0, 0, 0, 0, 0, 1),
(422, 7, 81204, 0, 81204, 'Illidari Tabard', '伊利达雷战袍', 180, 0, 0, 0, 0, 0, 1),
(423, 7, 69117, 0, 69117, 'Jaina Proudmoore Robe', '吉安娜·普罗德摩尔的长袍', 180, 0, 0, 0, 0, 0, 1),
(424, 7, 69118, 0, 69118, 'Gilnean Archmage Robe', '吉尔尼斯法师长袍', 180, 0, 0, 0, 0, 0, 1),
(425, 7, 69119, 0, 69119, 'Stormwind Archmage Robe', '暴风城法师长袍', 180, 0, 0, 0, 0, 0, 1),
(426, 7, 69120, 0, 69120, 'Tirisfal Archmage Robe', '提瑞斯法守护者长袍', 180, 0, 0, 0, 0, 0, 1),
(427, 7, 69121, 0, 69121, 'Scarlet Archmage Robe', '血色法师长袍', 180, 0, 0, 0, 0, 0, 1),
(428, 7, 69122, 0, 69122, 'Kul Tiras Archmage Robe', '库尔提拉斯法师长袍', 180, 0, 0, 0, 0, 0, 1),
(429, 7, 69123, 0, 69123, 'Dalaran Archmage Robe', '达拉然法师长袍', 180, 0, 0, 0, 0, 0, 1),
(430, 7, 69124, 0, 69124, 'Lordaeron Archmage Robe', '洛丹伦法师长袍', 180, 0, 0, 0, 0, 0, 1),
(431, 7, 69125, 0, 69125, 'Theramore Archmage Robe', '塞拉摩法师长袍', 180, 0, 0, 0, 0, 0, 1),
(433, 7, 69127, 0, 69127, 'Robes of the Lotus Pond', '莲花长袍', 180, 0, 0, 0, 0, 0, 1),
(434, 7, 69128, 0, 69128, 'Robes of Spring', '春日长袍', 200, 0, 0, 0, 0, 0, 1),
(435, 7, 69129, 0, 69129, 'Year of the Dragon Robes', '龙年纪念长袍', 200, 0, 0, 0, 0, 0, 1),
(436, 7, 69130, 0, 69130, 'Traditional New Year Robes', '传统新年长袍', 200, 0, 0, 0, 0, 0, 1),
(437, 7, 69131, 0, 69131, 'Peach Garden Robes', '桃园长袍', 200, 0, 0, 0, 0, 0, 1),
(438, 7, 69132, 0, 69132, 'Blooming Wisteria Robes', '绽放的紫藤花长袍', 200, 0, 0, 0, 0, 0, 1),
(439, 7, 69146, 0, 69146, 'Midnight Star Gown', '深夜之星礼服', 200, 0, 0, 0, 0, 0, 1),
(440, 7, 69147, 0, 69147, 'Evening Star Gown', '夜晚之星礼服', 200, 0, 0, 0, 0, 0, 1),
(441, 7, 69148, 0, 69148, 'Twilight star Gown', '暮光之星礼服', 200, 0, 0, 0, 0, 0, 1),
(442, 7, 69149, 0, 69149, 'Dusk Star Gown', '黄昏之星长袍', 200, 0, 0, 0, 0, 0, 1),
(443, 7, 69150, 0, 69150, 'Dawn Star Gown', '拂晓之星长袍', 200, 0, 0, 0, 0, 0, 1),
(444, 7, 69151, 0, 69151, 'Morning Star Gown', '清晨之星礼服', 160, 0, 0, 0, 0, 0, 1),
(445, 7, 69152, 0, 69152, 'Silver Star Sandals', '银星凉鞋', 160, 0, 0, 0, 0, 0, 1),
(446, 7, 69100, 0, 69100, 'Illidari Tattoos', '伊利达雷纹身', 200, 0, 0, 0, 0, 0, 1),
(447, 7, 69101, 0, 69101, 'Blood Illidari Tattoos', '血色伊利达雷纹身', 200, 0, 0, 0, 0, 0, 1),
(448, 7, 69102, 0, 69102, 'Void Illidari Tattoos', '虚空伊利达雷纹身', 200, 0, 0, 0, 0, 0, 1),
(449, 7, 69103, 0, 69103, 'Nether Illidari Tattoos', '阴暗伊利达雷纹身', 200, 0, 0, 0, 0, 0, 1),
(450, 7, 83478, 0, 83478, 'Romantic Red Corset Dress', '浪漫红色连衣裙', 250, 0, 0, 0, 0, 0, 1),
(451, 7, 83479, 0, 83479, 'Romantic Pink Corset Dress', '浪漫粉色连衣裙', 250, 0, 0, 0, 0, 0, 1),
(452, 7, 41091, 0, 41091, 'Jingle Belle Frock', '冬幕节连衣裙', 200, 0, 0, 0, 0, 0, 1),
(453, 7, 41092, 0, 41092, 'Apparel of the Bells', '冬幕节正装', 200, 0, 0, 0, 0, 0, 1),
(456, 7, 68070, 0, 68070, 'Robes of the Moonless Night', '', 200, 2, 0, 0, 0, 0, 1);

UPDATE shop_items SET price = price * @discount;

-- Exclude Spectral Tigers:

UPDATE shop_items SET price = 2000 where item in (80430, 83151, 83152, 92052);

UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 1;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 2;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 3;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 4;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 5;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 6;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 7;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 8;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 9;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 10;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 11;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 12;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 13;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 14;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 15;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 17;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 18;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 20;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 21;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 22;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 23;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 24;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 25;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 26;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 27;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 28;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 29;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 30;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 31;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 32;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 33;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 34;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 35;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 36;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 37;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 38;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 39;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 40;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 41;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 42;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 43;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 44;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 45;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 46;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 47;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 48;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 49;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 50;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 51;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 52;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 56;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 57;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 58;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 59;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 61;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 62;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 63;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 64;
UPDATE `shop_items` SET `model_id` = 7993, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 65;
UPDATE `shop_items` SET `model_id` = 6909, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 66;
UPDATE `shop_items` SET `model_id` = 1097, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 67;
UPDATE `shop_items` SET `model_id` = 16075, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 68;
UPDATE `shop_items` SET `model_id` = 7933, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 69;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 70;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 71;
UPDATE `shop_items` SET `model_id` = 11444, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 86;
UPDATE `shop_items` SET `model_id` = 19168, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 87;
UPDATE `shop_items` SET `model_id` = 12237, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 88;
UPDATE `shop_items` SET `model_id` = 4591, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 89;
UPDATE `shop_items` SET `model_id` = 5745, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 90;
UPDATE `shop_items` SET `model_id` = 1992, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 94;
UPDATE `shop_items` SET `model_id` = 18030, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 95;
UPDATE `shop_items` SET `model_id` = 18029, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 96;
UPDATE `shop_items` SET `model_id` = 6351, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 97;
UPDATE `shop_items` SET `model_id` = 4807, `position_x` = -0.112, `position_y` = 1.104, `position_z` = 0.1, `scale` = 1.1 WHERE `id` = 101;
UPDATE `shop_items` SET `model_id` = 6474, `position_x` = 1.778, `position_y` = -0.949, `position_z` = 0.1, `scale` = 1.5 WHERE `id` = 102;
UPDATE `shop_items` SET `model_id` = 6475, `position_x` = -0.539, `position_y` = -2.763, `position_z` = -0.101, `scale` = 2.299 WHERE `id` = 103;
UPDATE `shop_items` SET `model_id` = 6478, `position_x` = 1.81, `position_y` = -0.822, `position_z` = 0.1, `scale` = 1.5 WHERE `id` = 104;
UPDATE `shop_items` SET `model_id` = 6476, `position_x` = 1.778, `position_y` = -0.822, `position_z` = 0.1, `scale` = 1.5 WHERE `id` = 105;
UPDATE `shop_items` SET `model_id` = 18180, `position_x` = 0.223, `position_y` = 2.159, `position_z` = 1.299, `scale` = 0.599 WHERE `id` = 106;
UPDATE `shop_items` SET `model_id` = 18295, `position_x` = 0.626, `position_y` = -0.848, `position_z` = 0, `scale` = 2.488 WHERE `id` = 107;
UPDATE `shop_items` SET `model_id` = 18299, `position_x` = 0.379, `position_y` = -0.413, `position_z` = 0, `scale` = 1.8 WHERE `id` = 108;
UPDATE `shop_items` SET `model_id` = 18298, `position_x` = 1.189, `position_y` = 0.084, `position_z` = 0.5, `scale` = 1.3 WHERE `id` = 109;
UPDATE `shop_items` SET `model_id` = 18094, `position_x` = -0.463, `position_y` = -1.405, `position_z` = -0.301, `scale` = 1.433 WHERE `id` = 110;
UPDATE `shop_items` SET `model_id` = 4805, `position_x` = 0.107, `position_y` = 0.482, `position_z` = 0, `scale` = 1.155 WHERE `id` = 121;
UPDATE `shop_items` SET `model_id` = 6442, `position_x` = 0.119, `position_y` = 0.532, `position_z` = 0, `scale` = 1.155 WHERE `id` = 122;
UPDATE `shop_items` SET `model_id` = 9714, `position_x` = 0.051, `position_y` = 1.195, `position_z` = 1.2, `scale` = 1.2 WHERE `id` = 123;
UPDATE `shop_items` SET `model_id` = 6443, `position_x` = 0.004, `position_y` = 1.132, `position_z` = 1.1, `scale` = 1.2 WHERE `id` = 124;
UPDATE `shop_items` SET `model_id` = 18255, `position_x` = 0.083, `position_y` = 1.132, `position_z` = 1.1, `scale` = 1.2 WHERE `id` = 125;
UPDATE `shop_items` SET `model_id` = 9695, `position_x` = 0.045, `position_y` = 0.739, `position_z` = 0, `scale` = 1.299 WHERE `id` = 126;
UPDATE `shop_items` SET `model_id` = 9991, `position_x` = 0.004, `position_y` = 1.148, `position_z` = 1.2, `scale` = 1.2 WHERE `id` = 127;
UPDATE `shop_items` SET `model_id` = 18435, `position_x` = 0.079, `position_y` = 0.805, `position_z` = 0, `scale` = 1.5 WHERE `id` = 128;
UPDATE `shop_items` SET `model_id` = 14329, `position_x` = 0.051, `position_y` = 1.353, `position_z` = 1.299, `scale` = 1.2 WHERE `id` = 129;
UPDATE `shop_items` SET `model_id` = 18143, `position_x` = 0.32, `position_y` = 1.953, `position_z` = 1.549, `scale` = 1.1 WHERE `id` = 130;
UPDATE `shop_items` SET `model_id` = 9991, `position_x` = 0.051, `position_y` = 1.306, `position_z` = 1.2, `scale` = 1.2 WHERE `id` = 131;
UPDATE `shop_items` SET `model_id` = 18436, `position_x` = 0.063, `position_y` = 0.774, `position_z` = 0, `scale` = 1.5 WHERE `id` = 132;
UPDATE `shop_items` SET `model_id` = 2186, `position_x` = -0.406, `position_y` = -0.158, `position_z` = -0.401, `scale` = 1 WHERE `id` = 141;
UPDATE `shop_items` SET `model_id` = 18259, `position_x` = -0.731, `position_y` = 1.712, `position_z` = 1.1, `scale` = 0.799 WHERE `id` = 142;
UPDATE `shop_items` SET `model_id` = 18260, `position_x` = -0.87, `position_y` = 1.295, `position_z` = -0.401, `scale` = 1 WHERE `id` = 143;
UPDATE `shop_items` SET `model_id` = 10718, `position_x` = -1.427, `position_y` = -0.001, `position_z` = -0.7, `scale` = 0.799 WHERE `id` = 144;
UPDATE `shop_items` SET `model_id` = 18262, `position_x` = 0.091, `position_y` = 0.14, `position_z` = 0.4, `scale` = 0.2 WHERE `id` = 145;
UPDATE `shop_items` SET `model_id` = 2185, `position_x` = -0.106, `position_y` = -0.506, `position_z` = -0.301, `scale` = 1.1 WHERE `id` = 146;
UPDATE `shop_items` SET `model_id` = 18243, `position_x` = -1.027, `position_y` = 0.158, `position_z` = -0.101, `scale` = 0.2 WHERE `id` = 147;
UPDATE `shop_items` SET `model_id` = 18252, `position_x` = -0.831, `position_y` = 1.862, `position_z` = 1.2, `scale` = 0.799 WHERE `id` = 148;
UPDATE `shop_items` SET `model_id` = 18253, `position_x` = -0.508, `position_y` = 1.198, `position_z` = 0, `scale` = 0.699 WHERE `id` = 149;
UPDATE `shop_items` SET `model_id` = 2784, `position_x` = -0.815, `position_y` = 1.784, `position_z` = 1.2, `scale` = 0.799 WHERE `id` = 150;
UPDATE `shop_items` SET `model_id` = 19101, `position_x` = 0.06, `position_y` = 1.021, `position_z` = -0.801, `scale` = 0.899 WHERE `id` = 151;
UPDATE `shop_items` SET `model_id` = 18265, `position_x` = 0.019, `position_y` = 1.01, `position_z` = -0.901, `scale` = 0.455 WHERE `id` = 162;
UPDATE `shop_items` SET `model_id` = 207, `position_x` = -0.066, `position_y` = 0.191, `position_z` = 0.2, `scale` = 0.944 WHERE `id` = 163;
UPDATE `shop_items` SET `model_id` = 2326, `position_x` = -0.08, `position_y` = 0.403, `position_z` = 0.3, `scale` = 1.1 WHERE `id` = 164;
UPDATE `shop_items` SET `model_id` = 18257, `position_x` = -0.066, `position_y` = 0.08, `position_z` = 0, `scale` = 0.933 WHERE `id` = 165;
UPDATE `shop_items` SET `model_id` = 14345, `position_x` = 0.166, `position_y` = 1.976, `position_z` = 0.599, `scale` = 0.699 WHERE `id` = 181;
UPDATE `shop_items` SET `model_id` = 14343, `position_x` = 0.221, `position_y` = 1.829, `position_z` = -0.401, `scale` = 0.699 WHERE `id` = 182;
UPDATE `shop_items` SET `model_id` = 14341, `position_x` = 0.134, `position_y` = 1.976, `position_z` = 0.599, `scale` = 0.699 WHERE `id` = 183;
UPDATE `shop_items` SET `model_id` = 14340, `position_x` = 0.14, `position_y` = 1.843, `position_z` = -0.401, `scale` = 0.699 WHERE `id` = 184;
UPDATE `shop_items` SET `model_id` = 18481, `position_x` = -0.985, `position_y` = -0.106, `position_z` = -0.5, `scale` = 1 WHERE `id` = 185;
UPDATE `shop_items` SET `model_id` = 18488, `position_x` = 0.015, `position_y` = -0.253, `position_z` = 0, `scale` = 0.899 WHERE `id` = 186;
UPDATE `shop_items` SET `model_id` = 18484, `position_x` = -0.969, `position_y` = -0.222, `position_z` = -0.601, `scale` = 1 WHERE `id` = 187;
UPDATE `shop_items` SET `model_id` = 18491, `position_x` = -1, `position_y` = -0.285, `position_z` = -0.601, `scale` = 1 WHERE `id` = 188;
UPDATE `shop_items` SET `model_id` = 18492, `position_x` = -0.332, `position_y` = -0.285, `position_z` = -0.201, `scale` = 1.1 WHERE `id` = 189;
UPDATE `shop_items` SET `model_id` = 18090, `position_x` = -0.08, `position_y` = -0.206, `position_z` = 0, `scale` = 1.1 WHERE `id` = 190;
UPDATE `shop_items` SET `model_id` = 20416, `position_x` = -0.332, `position_y` = -0.285, `position_z` = -0.201, `scale` = 1.1 WHERE `id` = 225;
UPDATE `shop_items` SET `model_id` = 20417, `position_x` = 0.336, `position_y` = 1.969, `position_z` = 1.75, `scale` = 1.1 WHERE `id` = 226;
UPDATE `shop_items` SET `model_id` = 20419, `position_x` = 0.304, `position_y` = 1.969, `position_z` = 1.75, `scale` = 1.1 WHERE `id` = 227;
UPDATE `shop_items` SET `model_id` = 20421, `position_x` = 0.198, `position_y` = 1.944, `position_z` = 0.599, `scale` = 0.699 WHERE `id` = 228;
UPDATE `shop_items` SET `model_id` = 20422, `position_x` = -1.121, `position_y` = -0.232, `position_z` = -0.801, `scale` = 1 WHERE `id` = 229;
UPDATE `shop_items` SET `model_id` = 20425, `position_x` = -2.212, `position_y` = 0.159, `position_z` = -0.401, `scale` = 0.4 WHERE `id` = 230;
UPDATE `shop_items` SET `model_id` = 19170, `position_x` = 0.283, `position_y` = -0.622, `position_z` = 0.3, `scale` = 1 WHERE `id` = 231;
UPDATE `shop_items` SET `model_id` = 10992, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 241;
UPDATE `shop_items` SET `model_id` = 10990, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 242;
UPDATE `shop_items` SET `model_id` = 15369, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 243;
UPDATE `shop_items` SET `model_id` = 12074, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 246;
UPDATE `shop_items` SET `model_id` = 18926, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 247;
UPDATE `shop_items` SET `model_id` = 6293, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 248;
UPDATE `shop_items` SET `model_id` = 14432, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 249;
UPDATE `shop_items` SET `model_id` = 16189, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 250;
UPDATE `shop_items` SET `model_id` = 1236, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 251;
UPDATE `shop_items` SET `model_id` = 9590, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 252;
UPDATE `shop_items` SET `model_id` = 18176, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 253;
UPDATE `shop_items` SET `model_id` = 18425, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 254;
UPDATE `shop_items` SET `model_id` = 18523, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 255;
UPDATE `shop_items` SET `model_id` = 18730, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 256;
UPDATE `shop_items` SET `model_id` = 18627, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 257;
UPDATE `shop_items` SET `model_id` = 18476, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 258;
UPDATE `shop_items` SET `model_id` = 18925, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 259;
UPDATE `shop_items` SET `model_id` = 18928, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 260;
UPDATE `shop_items` SET `model_id` = 18927, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 261;
UPDATE `shop_items` SET `model_id` = 19106, `position_x` = -1, `position_y` = 0, `position_z` = -0.3, `scale` = 1 WHERE `id` = 262;
UPDATE `shop_items` SET `model_id` = 19127, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 263;
UPDATE `shop_items` SET `model_id` = 19128, `position_x` = -2, `position_y` = 0, `position_z` = -0.4, `scale` = 1 WHERE `id` = 264;
UPDATE `shop_items` SET `model_id` = 19130, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 265;
UPDATE `shop_items` SET `model_id` = 19131, `position_x` = -2, `position_y` = 0, `position_z` = -0.4, `scale` = 1 WHERE `id` = 266;
UPDATE `shop_items` SET `model_id` = 20369, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 267;
UPDATE `shop_items` SET `model_id` = 20370, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 268;
UPDATE `shop_items` SET `model_id` = 20371, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 269;
UPDATE `shop_items` SET `model_id` = 20372, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 270;
UPDATE `shop_items` SET `model_id` = 20374, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 271;
UPDATE `shop_items` SET `model_id` = 20377, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 272;
UPDATE `shop_items` SET `model_id` = 20376, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 273;
UPDATE `shop_items` SET `model_id` = 20379, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 274;
UPDATE `shop_items` SET `model_id` = 20380, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 275;
UPDATE `shop_items` SET `model_id` = 20382, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 276;
UPDATE `shop_items` SET `model_id` = 20383, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 277;
UPDATE `shop_items` SET `model_id` = 20506, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 278;
UPDATE `shop_items` SET `model_id` = 522, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 291;
UPDATE `shop_items` SET `model_id` = 14368, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 292;
UPDATE `shop_items` SET `model_id` = 8782, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 293;
UPDATE `shop_items` SET `model_id` = 10923, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 294;
UPDATE `shop_items` SET `model_id` = 4629, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 295;
UPDATE `shop_items` SET `model_id` = 487, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 296;
UPDATE `shop_items` SET `model_id` = 6746, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 297;
UPDATE `shop_items` SET `model_id` = 18251, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 298;
UPDATE `shop_items` SET `model_id` = 158, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 299;
UPDATE `shop_items` SET `model_id` = 2012, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 300;
UPDATE `shop_items` SET `model_id` = 18065, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 301;
UPDATE `shop_items` SET `model_id` = 7970, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 302;
UPDATE `shop_items` SET `model_id` = 18121, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 303;
UPDATE `shop_items` SET `model_id` = 18122, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 304;
UPDATE `shop_items` SET `model_id` = 18042, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 305;
UPDATE `shop_items` SET `model_id` = 18120, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 306;
UPDATE `shop_items` SET `model_id` = 20490, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 307;
UPDATE `shop_items` SET `model_id` = 20498, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 308;
UPDATE `shop_items` SET `model_id` = 20494, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 309;
UPDATE `shop_items` SET `model_id` = 1201, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 310;
UPDATE `shop_items` SET `model_id` = 1065, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 311;
UPDATE `shop_items` SET `model_id` = 11396, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 312;
UPDATE `shop_items` SET `model_id` = 12350, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 313;
UPDATE `shop_items` SET `model_id` = 18778, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 314;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 401;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 402;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 403;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 404;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 405;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 406;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 407;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 408;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 409;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 410;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 411;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 412;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 413;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 415;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 416;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 417;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 419;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 420;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 421;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 422;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 423;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 424;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 425;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 426;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 427;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 428;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 429;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 430;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 431;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 433;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 434;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 435;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 436;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 437;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 438;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 439;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 440;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 441;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 442;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 443;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 444;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 445;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 446;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 447;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 448;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 449;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 450;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 451;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 452;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 453;
UPDATE `shop_items` SET `model_id` = 0, `position_x` = 0, `position_y` = 0, `position_z` = 0, `scale` = 1 WHERE `id` = 456;

UPDATE `shop_items` SET `position_x` = 0.047, `position_y` = 0.568, `position_z` = 0, `rotation` = -0.502, `scale` = 1 WHERE `id` = 121;
UPDATE `shop_items` SET `position_x` = 0.047, `position_y` = 0.568, `position_z` = 0, `rotation` = -0.502, `scale` = 1 WHERE `id` = 122;
UPDATE `shop_items` SET `position_x` = 0.158, `position_y` = -0.08, `position_z` = 0, `rotation` = -0.377, `scale` = 1.3 WHERE `id` = 107;
UPDATE `shop_items` SET `position_x` = -0.08, `position_y` = 1.09, `position_z` = -0.5, `rotation` = -0.419, `scale` = 0.399 WHERE `id` = 162;
UPDATE `shop_items` SET `position_x` = -1.597, `position_y` = 0.537, `position_z` = 0.1, `rotation` = 0.564, `scale` = 0.699 WHERE `id` = 147;
UPDATE `shop_items` SET `position_x` = -0.111, `position_y` = -0.885, `position_z` = 0, `rotation` = -0.335, `scale` = 1.4 WHERE `id` = 101;
UPDATE `shop_items` SET `position_x` = 0.142, `position_y` = 1.343, `position_z` = 0, `rotation` = -0.31, `scale` = 0.499 WHERE `id` = 184;

UPDATE `shop_items` SET `position_x` = 0.031, `position_y` = 0.489, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 121;
UPDATE `shop_items` SET `position_x` = 0.015, `position_y` = 0.505, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 122;
UPDATE `shop_items` SET `position_x` = 0.158, `position_y` = -0.159, `position_z` = 0, `rotation` = -0.231, `scale` = 1.4 WHERE `id` = 107;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = -0.396, `position_z` = 0, `rotation` = -0.168, `scale` = 1.1 WHERE `id` = 110;
UPDATE `shop_items` SET `position_x` = -0.522, `position_y` = 1.232, `position_z` = 0, `rotation` = -0.189, `scale` = 0.699 WHERE `id` = 149;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = 0.126, `position_z` = 0, `rotation` = -0.272, `scale` = 0.899 WHERE `id` = 165;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = 0.284, `position_z` = 0.3, `rotation` = -0.189, `scale` = 0.899 WHERE `id` = 163;
UPDATE `shop_items` SET `position_x` = -0.016, `position_y` = 1.153, `position_z` = -0.201, `rotation` = -0.231, `scale` = 0.399 WHERE `id` = 162;
UPDATE `shop_items` SET `position_x` = -0.143, `position_y` = -0.854, `position_z` = 0, `rotation` = -0.314, `scale` = 1.5 WHERE `id` = 101;
UPDATE `shop_items` SET `position_x` = -0.143, `position_y` = -0.806, `position_z` = 0, `rotation` = -0.272, `scale` = 1.5 WHERE `id` = 103;
UPDATE `shop_items` SET `position_x` = 0.173, `position_y` = -0.048, `position_z` = 0, `rotation` = -0.377, `scale` = 0.899 WHERE `id` = 145;
UPDATE `shop_items` SET `position_x` = 0.015, `position_y` = 0.505, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 126;
UPDATE `shop_items` SET `position_x` = 0.221, `position_y` = -0.08, `position_z` = 0, `rotation` = -0.398, `scale` = 1.4 WHERE `id` = 108;
UPDATE `shop_items` SET `position_x` = -1.739, `position_y` = 0.505, `position_z` = 0, `rotation` = 0.543, `scale` = 0.799 WHERE `id` = 147;
UPDATE `shop_items` SET `position_x` = 0.173, `position_y` = 1.232, `position_z` = -0.201, `rotation` = -0.419, `scale` = 0.599 WHERE `id` = 182;
UPDATE `shop_items` SET `position_x` = 0.158, `position_y` = 1.28, `position_z` = -0.201, `rotation` = -0.335, `scale` = 0.599 WHERE `id` = 184;

UPDATE `shop_items` SET `position_x` = 0.031, `position_y` = 0.489, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 121;
UPDATE `shop_items` SET `position_x` = 0.015, `position_y` = 0.505, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 122;
UPDATE `shop_items` SET `position_x` = 0.158, `position_y` = -0.159, `position_z` = 0, `rotation` = -0.231, `scale` = 1.4 WHERE `id` = 107;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = -0.396, `position_z` = 0, `rotation` = -0.168, `scale` = 1.1 WHERE `id` = 110;
UPDATE `shop_items` SET `position_x` = -0.522, `position_y` = 1.232, `position_z` = 0, `rotation` = -0.189, `scale` = 0.699 WHERE `id` = 149;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = 0.126, `position_z` = 0, `rotation` = -0.272, `scale` = 0.899 WHERE `id` = 165;
UPDATE `shop_items` SET `position_x` = -0.095, `position_y` = 0.284, `position_z` = 0.3, `rotation` = -0.189, `scale` = 0.899 WHERE `id` = 163;
UPDATE `shop_items` SET `position_x` = -0.016, `position_y` = 1.153, `position_z` = -0.201, `rotation` = -0.231, `scale` = 0.399 WHERE `id` = 162;
UPDATE `shop_items` SET `position_x` = -0.143, `position_y` = -0.854, `position_z` = 0, `rotation` = -0.314, `scale` = 1.5 WHERE `id` = 101;
UPDATE `shop_items` SET `position_x` = -0.143, `position_y` = -0.806, `position_z` = 0, `rotation` = -0.272, `scale` = 1.5 WHERE `id` = 103;
UPDATE `shop_items` SET `position_x` = 0.173, `position_y` = -0.048, `position_z` = 0, `rotation` = -0.377, `scale` = 0.899 WHERE `id` = 145;
UPDATE `shop_items` SET `position_x` = 0.015, `position_y` = 0.505, `position_z` = 0, `rotation` = -0.356, `scale` = 1.1 WHERE `id` = 126;
UPDATE `shop_items` SET `position_x` = 0.221, `position_y` = -0.08, `position_z` = 0, `rotation` = -0.398, `scale` = 1.4 WHERE `id` = 108;
UPDATE `shop_items` SET `position_x` = -1.739, `position_y` = 0.505, `position_z` = 0, `rotation` = 0.543, `scale` = 0.799 WHERE `id` = 147;
UPDATE `shop_items` SET `position_x` = 0.173, `position_y` = 1.232, `position_z` = -0.201, `rotation` = -0.419, `scale` = 0.599 WHERE `id` = 182;
UPDATE `shop_items` SET `position_x` = 0.158, `position_y` = 1.28, `position_z` = -0.201, `rotation` = -0.335, `scale` = 0.599 WHERE `id` = 184;

