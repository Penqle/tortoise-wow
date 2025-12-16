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
-- Table structure for spell_effect_mod
-- ----------------------------
DROP TABLE IF EXISTS `spell_effect_mod`;
CREATE TABLE `spell_effect_mod`  (
  `Id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectIndex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Effect` int(11) NOT NULL DEFAULT -1,
  `EffectDieSides` int(11) NOT NULL DEFAULT -1,
  `EffectBaseDice` int(11) NOT NULL DEFAULT -1,
  `EffectDicePerLevel` float NOT NULL DEFAULT -1,
  `EffectRealPointsPerLevel` float NOT NULL DEFAULT -1,
  `EffectBasePoints` int(11) NOT NULL DEFAULT -1,
  `EffectAmplitude` int(11) NOT NULL DEFAULT -1,
  `EffectPointsPerComboPoint` float NOT NULL DEFAULT -1,
  `EffectChainTarget` int(11) NOT NULL DEFAULT -1,
  `EffectMultipleValue` float NOT NULL DEFAULT -1,
  `EffectMechanic` int(11) NOT NULL DEFAULT -1,
  `EffectImplicitTargetA` int(11) NOT NULL DEFAULT -1,
  `EffectImplicitTargetB` int(11) NOT NULL DEFAULT -1,
  `EffectRadiusIndex` int(11) NOT NULL DEFAULT -1,
  `EffectApplyAuraName` int(11) NOT NULL DEFAULT -1,
  `EffectItemType` int(11) NOT NULL DEFAULT -1,
  `EffectMiscValue` int(11) NOT NULL DEFAULT -1,
  `EffectTriggerSpell` int(11) NOT NULL DEFAULT -1,
  `Comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`, `EffectIndex`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spell_effect_mod
-- ----------------------------
INSERT INTO `spell_effect_mod` VALUES (2, 0, 10, -1, -1, -1, -1, 100, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1, 0, -1, '');
INSERT INTO `spell_effect_mod` VALUES (2, 1, 6, -1, -1, -1, -1, 10, 100, -1, -1, -1, -1, 1, 1, -1, 3, -1, 0, -1, '');
INSERT INTO `spell_effect_mod` VALUES (2834, 0, 6, -1, -1, -1, -1, -1, 7000, -1, -1, -1, -1, -1, -1, -1, 23, -1, -1, 23931, 'Anubisath Thunderclap');
INSERT INTO `spell_effect_mod` VALUES (3827, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Ward of Laze : changement spelleffect summon wild');
INSERT INTO `spell_effect_mod` VALUES (647, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 3)');
INSERT INTO `spell_effect_mod` VALUES (6608, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 6, -1, -1, -1, -1, 0, -1, 'Dropped Weapon (trigger Shockwave) : changement de target');
INSERT INTO `spell_effect_mod` VALUES (7057, 0, -1, 1, 1, 0, 0, 0, 30000, 0, 0, 0, 0, 6, 0, 0, 23, 0, 1, 7067, 'Haunting Spirits: tick every 30 seconds.');
INSERT INTO `spell_effect_mod` VALUES (7487, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Call Bleak Worg (Wolf Master Nandos) : changement summon wild');
INSERT INTO `spell_effect_mod` VALUES (7488, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Call Slavering Worg (Wolf Master Nandos) : changement summon wild');
INSERT INTO `spell_effect_mod` VALUES (7489, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Call Slavering Worg (Wolf Master Nandos) : changement summon wild');
INSERT INTO `spell_effect_mod` VALUES (7993, 0, 42, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Summon Treant Ally : changement effect (summon guardian)');
INSERT INTO `spell_effect_mod` VALUES (8892, 1, 6, -1, -1, -1, -1, -1, 1000, -1, -1, -1, -1, 1, 0, -1, 23, -1, 0, 8897, 'Bottes fusees.');
INSERT INTO `spell_effect_mod` VALUES (8994, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 125, -1, 'Banish : modif immunity (physique + toutes les Ã©coles)');
INSERT INTO `spell_effect_mod` VALUES (9055, 0, 77, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, 0, -1, ' Script Effect pour spawn le Bolt Charged Bramble quÃªte Mage 1948 (Youfie).\r\n');
INSERT INTO `spell_effect_mod` VALUES (13278, 0, -1, -1, -1, -1, -1, -1, 900, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Gnomish Death Ray - fix Amplitude of periodic trigger');
INSERT INTO `spell_effect_mod` VALUES (13877, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 22482, 'Deluge de lames : Ajout d\'un effet Dummy.');
INSERT INTO `spell_effect_mod` VALUES (15125, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Scarshield Portal : wild et pas guardian');
INSERT INTO `spell_effect_mod` VALUES (15128, 0, -1, -1, -1, -1, -1, 49, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Curse of the Firebrand : fix dÃ©gÃ¢ts');
INSERT INTO `spell_effect_mod` VALUES (15746, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Hatch Rookery Egg : suppression effet');
INSERT INTO `spell_effect_mod` VALUES (16057, 1, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, 0, 0, 0, 12324, 0, 'UBRS : Quete acces');
INSERT INTO `spell_effect_mod` VALUES (16329, 1, 6, -1, -1, -1, -1, 40, -1, -1, -1, -1, -1, 21, 0, -1, 124, -1, 0, -1, 'Juju Might : +40 RAP en plus que PA cac (Youfie).');
INSERT INTO `spell_effect_mod` VALUES (16404, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 4, 0, 1, 0, 'Banishment of Scale (Victor Nefarius) : canalisation verte');
INSERT INTO `spell_effect_mod` VALUES (16424, 0, 2, 1, 1, -1, -1, 49, -1, -1, -1, -1, -1, 22, 15, 13, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (16468, 1, 6, 1, 1, 0, 0, 0, 11999, 0, 0, 0, 0, 6, 0, 0, 23, 0, 1, 15474, 'Mothers Milk : ajout trigger Web Explosion toutes les 12 sec');
INSERT INTO `spell_effect_mod` VALUES (16474, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 18, 0, 0, 0, 0, 10161, 0, 'UBRS : Invocation de dragonnets');
INSERT INTO `spell_effect_mod` VALUES (13278, 2, 6, 1, 0, 0, 0, 149, 1000, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 'Gnomish Death Ray - damage over time');
INSERT INTO `spell_effect_mod` VALUES (16809, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, -1, -1, -1, -1, 10697, -1, 'Spawn Bile Slimes : 1 spawn');
INSERT INTO `spell_effect_mod` VALUES (16865, 0, 41, -1, -1, -1, -1, 3, -1, -1, -1, -1, -1, 18, -1, -1, -1, -1, 10697, -1, 'Spawn Bile Slimes : 3 spawn');
INSERT INTO `spell_effect_mod` VALUES (33006, 0, 6, 1, 1, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 42, 0, 0, 20424, 'Seal of Command: Seal Twisting Helper');
INSERT INTO `spell_effect_mod` VALUES (17278, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, 0, -1, 'Cannon Fire : radius fix a 20yd');
INSERT INTO `spell_effect_mod` VALUES (14814, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 8, -1, -1, -1, -1, -1, -1, 'Throw Dark Iron Ale targetting');
INSERT INTO `spell_effect_mod` VALUES (17618, 0, 41, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10482, 0, 'Summon Risen Lackey : summon wild  sur soi-meme');
INSERT INTO `spell_effect_mod` VALUES (639, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 2)');
INSERT INTO `spell_effect_mod` VALUES (18392, 0, -1, 399, -1, -1, -1, 800, -1, -1, -1, -1, -1, 53, 16, 14, -1, -1, 0, 0, 'Onyxia: Fireball Eff[0] 1.2 damage values');
INSERT INTO `spell_effect_mod` VALUES (18153, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (18153, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (18153, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (18271, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 32, -1, 'Shadow Mastery, R1 (Talent Affliction) - Changement de l\'effect pour qu\'il concerne le Drain de Vie et le Siphon de vie (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (18272, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 32, -1, 'Shadow Mastery, R2 (Talent Affliction) - Changement de l\'effect pour qu\'il concerne le Drain de Vie et le Siphon de vie (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (18273, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 32, -1, 'Shadow Mastery, R3 (Talent Affliction) - Changement de l\'effect pour qu\'il concerne le Drain de Vie et le Siphon de vie (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (18274, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 32, -1, 'Shadow Mastery, R4 (Talent Affliction) - Changement de l\'effect pour qu\'il concerne le Drain de Vie et le Siphon de vie (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (18275, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 32, -1, 'Shadow Mastery, R5 (Talent Affliction) - Changement de l\'effect pour qu\'il concerne le Drain de Vie et le Siphon de vie (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (18987, 1, 77, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Ajout Script Effect');
INSERT INTO `spell_effect_mod` VALUES (19134, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 29544, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19134, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 15, 14, 7, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19134, 2, 6, 1, 1, 0, 0, 24, 0, 0, 0, 0, 0, 22, 15, 14, 31, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19628, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 8, -1, -1, -1, -1, 'Flames (au sol aprÃ¨s Throw Liquid Fire / Jeklik) : fix radius a 5yd');
INSERT INTO `spell_effect_mod` VALUES (19636, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 26, 0, 0, 0, 'FireBlossom');
INSERT INTO `spell_effect_mod` VALUES (19636, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'FireBlossom : trigger supprimÃ©');
INSERT INTO `spell_effect_mod` VALUES (19695, 0, 6, 1, 1, 0, 0, 999, 1000, 0, 0, 0, 0, 1, 0, 0, 23, 0, 0, 18947, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19695, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 26, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19695, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 25, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19780, 0, 98, 26, 1, 0, 0, 74, 0, 0, 0, 0, 0, 22, 15, 13, 0, 0, 75, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19780, 1, 2, 101, 1, 0, 0, 299, 0, 0, 0, 0, 0, 22, 15, 13, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19780, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 15, 13, 12, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (19832, 1, 6, 1, 1, 0, 0, -30, 0, 0, 0, 0, 0, 38, 0, 0, 61, 0, 0, -1, 'Spell Possess (Razorgore) : - 30% reduction taille');
INSERT INTO `spell_effect_mod` VALUES (19832, 2, -1, -1, -1, -1, -1, 10, -1, -1, -1, -1, -1, -1, -1, -1, 31, -1, -1, -1, 'Spell Possess (Razorgore) : + 20% vitesse');
INSERT INTO `spell_effect_mod` VALUES (19937, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 12129, -1, 'Illusion: Black Dragonkin : modif skin morph (Onyxian Warder)');
INSERT INTO `spell_effect_mod` VALUES (20479, 0, 2, 801, 1, 0, 0, 7599, 0, 0, 0, 0, 0, 18, 16, 9, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (20479, 1, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Armageddon : changement EFFECT + ImplicitTargetA');
INSERT INTO `spell_effect_mod` VALUES (20553, 0, 6, 1, 1, 0, 0, 499, 0, 0, 0, 0, 0, 22, 7, 10, 13, 0, 1, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (20553, 1, 6, 1, 1, 0, 0, 49, 0, 0, 0, 0, 0, 22, 7, 10, 138, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (20553, 2, 6, 1, 1, 0, 0, 19, 0, 0, 0, 0, 0, 22, 7, 10, 61, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (20594, 2, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 147, -1, 16384, -1, 'Racial nain : forme de pierre. Ajout d\'un effet pour dissiper les saignements.');
INSERT INTO `spell_effect_mod` VALUES (20741, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 54, -1, -1, -1, -1, -1, 'Shadow Bolt Volley 20741 : targetB large frontal cone');
INSERT INTO `spell_effect_mod` VALUES (21147, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, -1, -1, 0, -1, 'Azuregos - Arcane Vacum - range set to 30y');
INSERT INTO `spell_effect_mod` VALUES (21463, 1, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 6, -1, -1, 23, -1, -1, 25371, NULL);
INSERT INTO `spell_effect_mod` VALUES (21463, 2, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 23, -1, -1, 25374, NULL);
INSERT INTO `spell_effect_mod` VALUES (21740, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, 126, -1, '5/8 T1 Demonic Ally: +100 All Resist pet');
INSERT INTO `spell_effect_mod` VALUES (21921, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, 126, -1, '5/8 T2 Demonic Ally: +130 All Resist pet');
INSERT INTO `spell_effect_mod` VALUES (21925, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, 126, -1, '5/8 T1 Hunter : +40 All Resist pet');
INSERT INTO `spell_effect_mod` VALUES (21927, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, 126, -1, '5/8 T2 Hunter : +60 All Resist pet');
INSERT INTO `spell_effect_mod` VALUES (22311, 0, 58, 1, 1, 0, 0, 349, 0, 0, 0, 0, 0, 22, 7, 13, 0, 0, 0, 0, 'Brood Power: Bronze (trigger) changement targetB');
INSERT INTO `spell_effect_mod` VALUES (22436, 0, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Aura of Flames (Death Talon Captain) : changement spell_effect');
INSERT INTO `spell_effect_mod` VALUES (22563, 0, 77, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Fix TP: ALTERAC HORDE');
INSERT INTO `spell_effect_mod` VALUES (22564, 0, 77, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Fix TP: ALTERAC ALLY');
INSERT INTO `spell_effect_mod` VALUES (22661, 0, -1, -1, -1, -1, -1, 199, -1, -1, -1, -1, -1, -1, -1, -1, 64, -1, 0, -1, 'Enervate (Alzzin the Wildshaper, DM East) - Fix Mana Leech effect (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (22709, 0, -1, 453, -1, -1, -1, 2769, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'VOIDBOLT Kazzak');
INSERT INTO `spell_effect_mod` VALUES (22799, 2, 6, 1, 1, -1, -1, 3, -1, -1, -1, -1, -1, 25, -1, -1, 139, -1, 829, -1, 'King of the Gordok : ajout effect modif reput boss');
INSERT INTO `spell_effect_mod` VALUES (22812, 1, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 192, -1, 0, 22839, 'Ecorce : link avec le sort \"Ecorce (DND)\"');
INSERT INTO `spell_effect_mod` VALUES (22817, 1, 6, 1, -1, -1, -1, 200, -1, -1, -1, -1, -1, 21, 0, -1, 124, -1, 0, -1, 'Fengus\' Ferocity : +200 RAP en plus que PA cac (Youfie).');
INSERT INTO `spell_effect_mod` VALUES (22860, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 17, 0, -1, -1, -1, 11450, -1, 'Captain Kromcrush : Call Reavers - use spell_target_table for coords');
INSERT INTO `spell_effect_mod` VALUES (22865, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Summon Doomguard : changement effect');
INSERT INTO `spell_effect_mod` VALUES (22888, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 57, -1, 0, -1, 'Rallying Cry of the Dragonslayer - Fix crit ranged (Youfie).');
INSERT INTO `spell_effect_mod` VALUES (22904, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 179562, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (22904, 1, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 15, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (22904, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (22985, 0, -1, 1, -1, -1, -1, 999, -1, -1, -1, -1, -1, 18, 15, 22, -1, -1, 0, -1, 'Shadow Flame Initial Trigger (Nefarian) : fix degats + radius');
INSERT INTO `spell_effect_mod` VALUES (22985, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 15, 22, -1, -1, 0, -1, 'Shadow Flame Initial Trigger (Nefarian) : fix radius');
INSERT INTO `spell_effect_mod` VALUES (22992, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22985, 'Shadow Flame Initial (Nefarian) : changement trigger');
INSERT INTO `spell_effect_mod` VALUES (23183, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, 'Mark of Frost pulse - force all enemies in area select');
INSERT INTO `spell_effect_mod` VALUES (19497, 0, -1, 800, -1, -1, -1, 3500, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Firesworn: Eruption Eff[0] damage fix');
INSERT INTO `spell_effect_mod` VALUES (23009, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, 0, -1, 'Prince Thunderaan - Tendrils of Air radius Eff[0]');
INSERT INTO `spell_effect_mod` VALUES (23009, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, 0, -1, 'Prince Thunderaan - Tendrils of Air radius Eff[1]');
INSERT INTO `spell_effect_mod` VALUES (23364, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Tail Lash : dist fix Ã  20 yd');
INSERT INTO `spell_effect_mod` VALUES (23364, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Tail Lash : dist fix Ã  20 yd');
INSERT INTO `spell_effect_mod` VALUES (23398, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Involuntary Transformation (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23398, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Involuntary Transformation (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23401, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 112, 0, 3656, 0, 'Corrupted Healing (Nefarian)');
INSERT INTO `spell_effect_mod` VALUES (23410, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Wild Magic (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23414, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Paralyze (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23418, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, 0, -1, -1, 0, -1, 'Siphon Blessing (Nefarian) : changement target');
INSERT INTO `spell_effect_mod` VALUES (23420, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 48, -1, 8, -1, -1, -1, -1, 'Corrupted Stoneskin Totem : modif range');
INSERT INTO `spell_effect_mod` VALUES (23422, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 50, -1, 8, -1, -1, -1, -1, 'Corrupted Healing Stream Totem : modif range');
INSERT INTO `spell_effect_mod` VALUES (23423, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 49, -1, 8, -1, -1, -1, -1, 'Corrupted Windfury Totem : modif range');
INSERT INTO `spell_effect_mod` VALUES (23427, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Summon Infernals (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23436, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, -1, -1, -1, -1, 'Corrupt Weapon (Nefarian) : cible soi-meme');
INSERT INTO `spell_effect_mod` VALUES (23478, 0, -1, 1251, -1, -1, -1, 4374, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Burning Adrenaline, pre-nerf damage [1.6 DBC]');
INSERT INTO `spell_effect_mod` VALUES (23603, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, 0, -1, -1, -1, -1, 'Wild Polymorph (Nefarian) : target');
INSERT INTO `spell_effect_mod` VALUES (23603, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, 0, -1, -1, 3248, -1, 'Wild Polymorph (Nefarian) : target + changement misc');
INSERT INTO `spell_effect_mod` VALUES (23603, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, 0, -1, -1, -1, -1, 'Wild Polymorph (Nefarian) : target');
INSERT INTO `spell_effect_mod` VALUES (23187, 2, -1, 625, -1, -1, -1, 2187, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Frost Burn [1.6 DBC]');
INSERT INTO `spell_effect_mod` VALUES (23881, 1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 0, 0, 0, 0, 0, 23885, 'Sanguinaire rang 1 : Ajout d\'un effet de trigger de buff heal');
INSERT INTO `spell_effect_mod` VALUES (23892, 1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 0, 0, 0, 0, 0, 23886, 'Sanguinaire rang 2 : Ajout d\'un effet de trigger de buff heal');
INSERT INTO `spell_effect_mod` VALUES (23893, 1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 0, 0, 0, 0, 0, 23887, 'Sanguinaire rang 3 : Ajout d\'un effet de trigger de buff heal');
INSERT INTO `spell_effect_mod` VALUES (23894, 1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 0, 0, 0, 0, 0, 23888, 'Sanguinaire rang 4 : Ajout d\'un effet de trigger de buff heal');
INSERT INTO `spell_effect_mod` VALUES (23918, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, -1, -1, -1, -1, 'Sonic Burst : radius 30 yd');
INSERT INTO `spell_effect_mod` VALUES (23918, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, -1, -1, -1, -1, 'Sonic Burst : radius 30 yd');
INSERT INTO `spell_effect_mod` VALUES (24019, 0, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 22, 15, 8, 12, 0, 0, 0, 'Axe Flurry : ajout effet stun');
INSERT INTO `spell_effect_mod` VALUES (24236, 0, 77, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `spell_effect_mod` VALUES (24262, 0, 41, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Summon Brain Wash Totem : Wild et pas totem');
INSERT INTO `spell_effect_mod` VALUES (24320, 0, 27, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 23, -1, -1, 24321, 'Poisonous Blood (fils hakkar) : changement effet + trigger 24321');
INSERT INTO `spell_effect_mod` VALUES (24322, 0, 6, 1, 1, 0, 0, 199, 1000, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 'Blood Siphon (Rouge = heal) ajout aura periodic damage');
INSERT INTO `spell_effect_mod` VALUES (24322, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 12, 0, 0, 0, 'Blood Siphon (Rouge = heal) changement target + ajout stun');
INSERT INTO `spell_effect_mod` VALUES (24322, 2, 6, 1, 1, 0, 0, 999, 1000, 0, 0, 0, 0, 38, 0, 0, 8, 0, 0, 0, 'Blood Siphon (Rouge = heal) ajout aura periodic heal');
INSERT INTO `spell_effect_mod` VALUES (24323, 1, 6, 1, 1, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 12, 0, 0, 0, 'Blood Siphon (Vert = poison) pas d\'aura');
INSERT INTO `spell_effect_mod` VALUES (24323, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, 'Blood Siphon (Vert = poison) pas d\'aura');
INSERT INTO `spell_effect_mod` VALUES (24324, 2, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, 15, 12, 4, -1, -1, -1, 'Blood Siphon (Hakkar) : ajout spell aura dummy');
INSERT INTO `spell_effect_mod` VALUES (24347, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2174, -1, 'Master Angler : modif skin morph (Coastal Frenzy)');
INSERT INTO `spell_effect_mod` VALUES (24435, 0, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, -1, -1, 'Drain Life (Gurubashi Blood Drinker) : ajout script target');
INSERT INTO `spell_effect_mod` VALUES (24435, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 26, 0, 0, 0, 'Drain Life (Gurubashi Blood Drinker) : ajout effet root');
INSERT INTO `spell_effect_mod` VALUES (24435, 2, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 25, 0, 0, 0, 'Drain Life (Gurubashi Blood Drinker) : ajout effet pacify');
INSERT INTO `spell_effect_mod` VALUES (24617, 0, 6, 1, 1, 0, 0, 4499, 1000, 0, 0, 0, 0, 21, 0, -1, 8, -1, 0, -1, 'Blood Funnel 24617 : ajout aura periodic heal');
INSERT INTO `spell_effect_mod` VALUES (24617, 1, 6, 1, 1, 0, 0, 499, 1000, 0, 0, 0, 0, 1, -1, 0, 3, -1, 0, -1, 'Blood Funnel 24617 : ajout aura periodic damage');
INSERT INTO `spell_effect_mod` VALUES (24681, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Summon Nightmare Illusions : spelleffect > summon wild + changement radius');
INSERT INTO `spell_effect_mod` VALUES (24728, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Summon Nightmare Illusions : spelleffect > summon wild + changement radius');
INSERT INTO `spell_effect_mod` VALUES (24729, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Summon Nightmare Illusions : spelleffect > summon wild + changement radius');
INSERT INTO `spell_effect_mod` VALUES (24776, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, -1, -1, -1, -1, 'Summon Player - force summon to caster position');
INSERT INTO `spell_effect_mod` VALUES (24811, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 12, -1, -1, -1, -1, 'Lethon - Draw Spirit - missing effect radius');
INSERT INTO `spell_effect_mod` VALUES (25164, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, -1, -1, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (25164, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (25164, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, 0, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (25371, 2, -1, -1, -1, -1, -1, 499, 3000, -1, -1, -1, -1, -1, -1, -1, 53, -1, -1, -1, 'Consume 25371 : drain 450 hp');
INSERT INTO `spell_effect_mod` VALUES (25374, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 12, -1, 0, -1, 'Consume 25374 : stun');
INSERT INTO `spell_effect_mod` VALUES (25425, 0, 2, 375, 1, 0, 0, 1312, 0, 0, 0, 0, 0, 22, 15, 9, 0, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (25425, 1, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 22, 15, 9, 12, 0, 0, 0, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (25425, 2, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 15, 9, 0, 0, 0, 6608, 'Ajoute automatiquement');
INSERT INTO `spell_effect_mod` VALUES (25462, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, 30, -1, -1, -1, 1, -1, 'Enlarge (Colonel Zerran) : changement target');
INSERT INTO `spell_effect_mod` VALUES (25462, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, 30, -1, -1, -1, 1, -1, 'Enlarge (Colonel Zerran) : changement target');
INSERT INTO `spell_effect_mod` VALUES (25653, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Copy of Tail Sweep : dist fix Ã  20 yd');
INSERT INTO `spell_effect_mod` VALUES (25653, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 9, -1, -1, -1, -1, 'Copy of Tail Sweep : dist fix Ã  20 yd');
INSERT INTO `spell_effect_mod` VALUES (25755, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, -1, 'Drain Mana 25755 : multitarget');
INSERT INTO `spell_effect_mod` VALUES (25755, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, -1, 'Drain Mana 25755 : multitarget');
INSERT INTO `spell_effect_mod` VALUES (25777, 0, -1, -1, -1, -1, -1, 475, -1, -1, -1, -1, -1, -1, -1, -1, 15, -1, -1, 0, 'Thorns:  Damage Shield');
INSERT INTO `spell_effect_mod` VALUES (25778, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, 15, -1, -1, -1, -1, -1, 'Anubisath KB');
INSERT INTO `spell_effect_mod` VALUES (26635, 0, 6, 1, 1, 0, 0, 9, 0, 0, 0, 0, 0, 1, 0, 0, 138, 0, 0, 0, 'Racial Trait Troll : Berserking Melee Haste (fixed)');
INSERT INTO `spell_effect_mod` VALUES (26635, 1, 6, 1, 1, 0, 0, 9, 0, 0, 0, 0, 0, 1, 0, 0, 140, 0, 0, 0, 'Racial Trait Troll : Berserking Ranged Haste');
INSERT INTO `spell_effect_mod` VALUES (26635, 2, 6, 1, 1, 0, 0, 9, 0, 0, 0, 0, 0, 1, 0, 0, 65, 0, 0, 0, 'Racial Trait Troll : Berserking Casting Haste');
INSERT INTO `spell_effect_mod` VALUES (27177, 0, -1, -1, -1, -1, -1, -1, 9999, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 27178, 'Defile : ajout triggerspell');
INSERT INTO `spell_effect_mod` VALUES (27178, 0, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, 53, -1, -1, -1, -1, -1, -1, 'Defile 27178 : changement target');
INSERT INTO `spell_effect_mod` VALUES (27178, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 6, -1, -1, -1, -1, -1, -1, 'Defile 27178 : changement target');
INSERT INTO `spell_effect_mod` VALUES (27184, 2, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon Mor Grayhoof : effect detect invisibility');
INSERT INTO `spell_effect_mod` VALUES (27190, 2, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon Isalien : effect detect invisibility');
INSERT INTO `spell_effect_mod` VALUES (27191, 2, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon Jarien & Sothos : effect detect invisibility');
INSERT INTO `spell_effect_mod` VALUES (27201, 2, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon Kormok : effect detect invisibility');
INSERT INTO `spell_effect_mod` VALUES (27202, 1, 6, 1, 1, -1, -1, 999, -1, -1, -1, -1, -1, 31, -1, -1, 19, -1, 5, -1, 'Summon Summon Lord Valthalak : effect detect invisibiliy');
INSERT INTO `spell_effect_mod` VALUES (27286, 0, 9, 1, 1, -1, -1, 499, -1, -1, 10, 1, -1, 6, -1, -1, -1, -1, -1, -1, 'Shadow Wrath (Valthalak) : modif effect > health leech');
INSERT INTO `spell_effect_mod` VALUES (27433, 1, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, 32, 7, -1, -1, 181054, -1, '27433 alambic ectoplasmique : ajout spawn go 181054');
INSERT INTO `spell_effect_mod` VALUES (27545, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, 'Cat Form : changement display shapeshift (Mor Grayhoof)');
INSERT INTO `spell_effect_mod` VALUES (27545, 2, 6, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 36, -1, 15, -1, 'Cat Form : changement display shapeshift (Mor Grayhoof)');
INSERT INTO `spell_effect_mod` VALUES (27690, 0, -1, -1, -1, -1, -1, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Summon Bone Minion 27690 : 3 autre minion spawn');
INSERT INTO `spell_effect_mod` VALUES (27696, 0, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Summon Bone Mage 27696 : 2eme mage spawn');
INSERT INTO `spell_effect_mod` VALUES (28373, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 8, 0, -1, -1, -1, -1, 'Communication necropol');
INSERT INTO `spell_effect_mod` VALUES (33000, 0, 6, 1, 1, 0, 0, 49, 0, 0, 0, 0, 0, 1, 0, 0, 117, 0, 5, 0, 'Spell : + 50 % resist fear');
INSERT INTO `spell_effect_mod` VALUES (33000, 1, 6, 1, 1, 0, 0, 24, 0, 0, 0, 0, 0, 1, 0, 0, 117, 0, 10, 0, 'Spell : + 25 % resist sleep');
INSERT INTO `spell_effect_mod` VALUES (33001, 0, 6, 1, 1, 0, 0, 99, 0, 0, 0, 0, 0, 1, 0, 0, 87, 0, 4, 0, 'Spell double les dÃ©gÃ¢ts reÃ§us : feu');
INSERT INTO `spell_effect_mod` VALUES (33002, 0, 6, 1, 1, 0, 0, 99, 0, 0, 0, 0, 0, 1, 0, 0, 87, 0, 8, 0, 'Spell double les dÃ©gÃ¢ts reÃ§us : nature');
INSERT INTO `spell_effect_mod` VALUES (33003, 0, 6, 1, 1, 0, 0, 99, 0, 0, 0, 0, 0, 1, 0, 0, 87, 0, 32, 0, 'Spell double les dÃ©gÃ¢ts reÃ§us : ombre');
INSERT INTO `spell_effect_mod` VALUES (33004, 0, 6, 1, 1, 0, 0, 99, 0, 0, 0, 0, 0, 1, 0, 0, 87, 0, 16, 0, 'Spell double les dÃ©gÃ¢ts reÃ§us : givre');
INSERT INTO `spell_effect_mod` VALUES (33005, 0, 6, 1, 1, 0, 0, 99, 0, 0, 0, 0, 0, 1, 0, 0, 87, 0, 64, 0, 'Spell double les dÃ©gÃ¢ts reÃ§us : arcane');
INSERT INTO `spell_effect_mod` VALUES (33007, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2489, 0, 'Spell Event 2489 Gahz\'rilla');
INSERT INTO `spell_effect_mod` VALUES (33010, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9543, 0, 'Spell Event 9543 Maws');
INSERT INTO `spell_effect_mod` VALUES (33011, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1020, 0, 'Spell Event 1020 Chakor');
INSERT INTO `spell_effect_mod` VALUES (33013, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9530, 0, 'Spell Event 9530 Short John Mithril');
INSERT INTO `spell_effect_mod` VALUES (33014, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9531, 0, 'Spell Event 9531 Grininlix the spectator');
INSERT INTO `spell_effect_mod` VALUES (33015, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9532, 0, 'Spell Event 9532 Grininlix the spectator');
INSERT INTO `spell_effect_mod` VALUES (33016, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9533, 0, 'Spell Event 9533 Grininlix the spectator');
INSERT INTO `spell_effect_mod` VALUES (15792, 1, 77, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 'Summon Blackhand Veteran - Text on successful cast.');
INSERT INTO `spell_effect_mod` VALUES (33020, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 39, 0, 64, 0, 'Immunity : Arcane (nouveau spell)');
INSERT INTO `spell_effect_mod` VALUES (33021, 0, 41, 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 18, 0, 8, 0, 0, 4377, 0, 'Summon Darkmist Hatchling (nouveau spell)');
INSERT INTO `spell_effect_mod` VALUES (33022, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9544, 0, 'Spell Event 9544 Mur Alzzin');
INSERT INTO `spell_effect_mod` VALUES (33023, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9545, 0, 'Spell Event 9545 Alzzin\'s Minion');
INSERT INTO `spell_effect_mod` VALUES (33024, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9546, 0, 'Spell Event 9546 Alzzin\'s Minion');
INSERT INTO `spell_effect_mod` VALUES (33025, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9547, 0, 'Spell Event 9547 Alzzin\'s Minion move');
INSERT INTO `spell_effect_mod` VALUES (33026, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9548, 0, 'Spell Event 9548 Alzzin Felvine');
INSERT INTO `spell_effect_mod` VALUES (8379, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 3, -1, -1, -1, -1, -1, -1, -1, 'Disarm mechanic');
INSERT INTO `spell_effect_mod` VALUES (23128, 2, -1, 1, 1, -1, -1, 99, -1, -1, -1, -1, -1, -1, -1, -1, 79, -1, 0, -1, 'Frenzy, add +100% dmg [1.6 DBC]');
INSERT INTO `spell_effect_mod` VALUES (33029, 0, 41, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10947, 0, 'Summon Darrowshire Betrayer (nouveau spell)');
INSERT INTO `spell_effect_mod` VALUES (33030, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 0, 'Send Event 102 (nouveau spell ; spawn patrouille Demetria) (Youfie)');
INSERT INTO `spell_effect_mod` VALUES (28351, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, -1, -1, 'Communique, Relay-to-Proxy');
INSERT INTO `spell_effect_mod` VALUES (11513, 0, 77, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (15698, 1, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 1, -1, -1, -1, 0, -1, 'Filling Empty Jar: Add Second Dummy Effect');
INSERT INTO `spell_effect_mod` VALUES (15699, 1, 3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 1, -1, -1, -1, 0, -1, 'Filling Empty Jar: Add Second Dummy Effect');
INSERT INTO `spell_effect_mod` VALUES (15702, 1, 77, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 1, -1, -1, -1, 0, -1, 'Filling Empty Jar: Add Second Script Effect');
INSERT INTO `spell_effect_mod` VALUES (12709, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (19250, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 40, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (19250, 2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (21371, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14027, 0, '[ALTERAC] Mulverick beacon invocation (creature : 14027)');
INSERT INTO `spell_effect_mod` VALUES (21371, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178549, -1, '[ALTERAC] Mulverick beacon invocation (gob : 178545');
INSERT INTO `spell_effect_mod` VALUES (21355, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178545, -1, '[ALTERAC] Guse beacon invocation (gob : 178545');
INSERT INTO `spell_effect_mod` VALUES (21355, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14026, 0, '[ALTERAC] Guse beacon invocation (creature : 14026)');
INSERT INTO `spell_effect_mod` VALUES (21370, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14028, 0, '[ALTERAC] Jeztor beacon invocation (creature : 14026)');
INSERT INTO `spell_effect_mod` VALUES (21370, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178547, -1, '[ALTERAC] Jeztor beacon invocation (gob : 178547');
INSERT INTO `spell_effect_mod` VALUES (21728, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178726, -1, '[ALTERAC] Ichman beacon invocation (gob : 178726');
INSERT INTO `spell_effect_mod` VALUES (21728, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14029, 0, '[ALTERAC] Ichman beacon invocation (creature : 14029)');
INSERT INTO `spell_effect_mod` VALUES (21730, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178724, -1, '[ALTERAC] Vipore beacon invocation (gob : 178724');
INSERT INTO `spell_effect_mod` VALUES (21730, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14031, 0, '[ALTERAC] Vipore beacon invocation (creature : 14031)');
INSERT INTO `spell_effect_mod` VALUES (21729, 0, 50, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 18, 0, 7, -1, -1, 178725, -1, '[ALTERAC] Slidore beacon invocation (gob : 178725');
INSERT INTO `spell_effect_mod` VALUES (21729, 1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 22, 32, 0, 0, 0, 14030, 0, '[ALTERAC] Slidore beacon invocation (creature : 14030)');
INSERT INTO `spell_effect_mod` VALUES (21249, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 13256, 0, 'Lokholar invocation');
INSERT INTO `spell_effect_mod` VALUES (21648, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 13419, 0, 'Ivus invocation');
INSERT INTO `spell_effect_mod` VALUES (21544, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (21565, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (12158, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (12159, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (7054, 0, -1, 1, 1, 0, 0, 0, 30000, 0, 0, 0, 0, 6, 0, 0, 23, 0, 1, 7038, '');
INSERT INTO `spell_effect_mod` VALUES (13141, 1, 6, -1, -1, -1, -1, -1, 1000, -1, -1, -1, -1, 1, 0, -1, 23, -1, 0, 13158, 'Gnomish Rocket boots. Implement fail chance.');
INSERT INTO `spell_effect_mod` VALUES (15733, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20294, 'Firesworn - imitate Immolate proc');
INSERT INTO `spell_effect_mod` VALUES (7914, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, 0, -1, 'Burning Gem script target : Desolace quest');
INSERT INTO `spell_effect_mod` VALUES (4131, 0, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, 0, -1, 'Arathi Thundering Charm');
INSERT INTO `spell_effect_mod` VALUES (20019, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (635, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 1)');
INSERT INTO `spell_effect_mod` VALUES (30215, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, -1, -1, 0, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (22559, 2, -1, 501, -1, -1, -1, 1749, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Brood Power: Blue [1.6 DBC]');
INSERT INTO `spell_effect_mod` VALUES (24809, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, -1, 0, -1, 'Spirit Shade Visual: Remove moonkind shapeshift');
INSERT INTO `spell_effect_mod` VALUES (20483, 0, -1, -1, 500, -1, -1, 3749, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Garr: Massive Explosion Eff[0] damage fix');
INSERT INTO `spell_effect_mod` VALUES (26194, 0, -1, -1, -1, -1, -1, 415, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Skeram - Earth Shock dmg fix');
INSERT INTO `spell_effect_mod` VALUES (26192, 0, -1, -1, -1, -1, -1, 328, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Skeram - Arcane Explosion dmg fix');
INSERT INTO `spell_effect_mod` VALUES (14297, 0, -1, -1, -1, -1, -1, 233, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Shadow Storm dmg fix');
INSERT INTO `spell_effect_mod` VALUES (26546, 0, -1, -1, -1, -1, -1, 233, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Shadow Storm dmg fix');
INSERT INTO `spell_effect_mod` VALUES (26555, 0, -1, -1, -1, -1, -1, 410, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Shadow Storm dmg fix');
INSERT INTO `spell_effect_mod` VALUES (13166, 0, 42, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 8836, 0, 'Battle Chicken - Summon');
INSERT INTO `spell_effect_mod` VALUES (22196, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Onyxia: Heated Ground - split up this long trigger chain into two halves to get around stack overflow protection');
INSERT INTO `spell_effect_mod` VALUES (1026, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 4)');
INSERT INTO `spell_effect_mod` VALUES (1042, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 5)');
INSERT INTO `spell_effect_mod` VALUES (3472, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 6)');
INSERT INTO `spell_effect_mod` VALUES (10328, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 7)');
INSERT INTO `spell_effect_mod` VALUES (10329, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 8)');
INSERT INTO `spell_effect_mod` VALUES (25292, 0, 10, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Holy Light (Rank 9)');
INSERT INTO `spell_effect_mod` VALUES (23341, 0, -1, -1, 1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, ' Flame Buffet (Firemaw) - use basepoints of 1 since dmg mod is calced in first application');
INSERT INTO `spell_effect_mod` VALUES (22433, 0, -1, -1, 1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, ' Flame Buffet (Death Talon Seether) - use basepoints of 1 since dmg mod is calced in first application');
INSERT INTO `spell_effect_mod` VALUES (126, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13, -1, -1, -1, -1, 'Generic - reduce 100 yards summon distance');
INSERT INTO `spell_effect_mod` VALUES (29234, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13, -1, -1, -1, -1, 'Generic - reduce 100 yards summon distance');
INSERT INTO `spell_effect_mod` VALUES (11403, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13, -1, -1, -1, -1, 'Generic - reduce 100 yards summon distance');
INSERT INTO `spell_effect_mod` VALUES (21287, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13, -1, -1, -1, -1, 'Generic - reduce 100 yards summon distance');
INSERT INTO `spell_effect_mod` VALUES (15167, 0, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Windsor\'s Frenzy');
INSERT INTO `spell_effect_mod` VALUES (16602, 0, 42, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 13, 0, 0, 10718, 0, 'Summon Shahram');
INSERT INTO `spell_effect_mod` VALUES (4071, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2673, 0, 'Target Dummy');
INSERT INTO `spell_effect_mod` VALUES (4072, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2674, 0, 'Advanced Target Dummy');
INSERT INTO `spell_effect_mod` VALUES (19805, 0, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 12426, 0, 'Masterwork Target Dummy');
INSERT INTO `spell_effect_mod` VALUES (4130, 0, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, 0, -1, 'Arathi Cresting Charm');
INSERT INTO `spell_effect_mod` VALUES (4132, 0, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, 0, -1, 'Arathi Burning Charm');
INSERT INTO `spell_effect_mod` VALUES (9991, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 41, -1, 5, -1, 'Touch of Zanzil - Prevent Stealth');
INSERT INTO `spell_effect_mod` VALUES (12699, 1, 3, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 'Summon Screecher Spirit - Dummy Effect');
INSERT INTO `spell_effect_mod` VALUES (27202, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, 0, -1, -1, -1, -1, -1, 'Summon Lord Valthalak');
INSERT INTO `spell_effect_mod` VALUES (26478, 0, -1, -1, -1, -1, -1, 3149, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'C\'Thun Giant Tentacle Ground Rupture 1.9.0 Damage');
INSERT INTO `spell_effect_mod` VALUES (26478, 1, -1, -1, -1, -1, -1, 249, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'C\'Thun Giant Tentacle Ground Rupture 1.9.0 Knockback');
INSERT INTO `spell_effect_mod` VALUES (24318, 0, -1, -1, -1, -1, -1, 249, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Enrage 1.9.0 Damage (nerfed in 1.9.3)');
INSERT INTO `spell_effect_mod` VALUES (24318, 1, -1, -1, -1, -1, -1, 59, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Enrage 1.9.0 Haste (slightly buffed in 1.9.3)');
INSERT INTO `spell_effect_mod` VALUES (26233, 0, -1, -1, -1, -1, -1, 3000, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Huhuran wyvern sting should do 3-4k damage on dispelled');
INSERT INTO `spell_effect_mod` VALUES (7078, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 8, 0, -1, -1, -1, -1, -1, 'Jaina\'s Group Teleport Spell');
INSERT INTO `spell_effect_mod` VALUES (15794, 1, 77, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 'Summon Blackhand Dreadweaver - Text on successful cast.');
INSERT INTO `spell_effect_mod` VALUES (24423, 2, 63, -1, -1, -1, -1, 25, -1, -1, -1, -1, -1, 22, 15, 8, -1, -1, -1, -1, 'Screech R1 Threat');
INSERT INTO `spell_effect_mod` VALUES (24577, 2, 63, -1, -1, -1, -1, 67, -1, -1, -1, -1, -1, 22, 15, 8, -1, -1, -1, -1, 'Screech R2 Threat');
INSERT INTO `spell_effect_mod` VALUES (24578, 2, 63, -1, -1, -1, -1, 152, -1, -1, -1, -1, -1, 22, 15, 8, -1, -1, -1, -1, 'Screech R3 Threat');
INSERT INTO `spell_effect_mod` VALUES (24579, 2, 63, -1, -1, -1, -1, 188, -1, -1, -1, -1, -1, 22, 15, 8, -1, -1, -1, -1, 'Screech R4 Threat');
INSERT INTO `spell_effect_mod` VALUES (28757, 0, 6, -1, -1, -1, -1, 50, -1, -1, -1, -1, -1, 5, 0, -1, 99, -1, 0, -1, 'Hunter T3: Pet AP');
INSERT INTO `spell_effect_mod` VALUES (28756, 1, 6, -1, -1, -1, -1, 50, -1, -1, -1, -1, -1, 1, 0, -1, 124, -1, 0, -1, 'Hunter T3: Ranged AP');
INSERT INTO `spell_effect_mod` VALUES (28756, 2, 6, -1, -1, -1, -1, 50, -1, -1, -1, -1, -1, 1, 0, -1, 99, -1, 0, -1, 'Hunter T3: Melee AP');
INSERT INTO `spell_effect_mod` VALUES (28133, 0, 38, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, -1, -1, -1, -1, 3, -1, 'Argent Medic cure disease');
INSERT INTO `spell_effect_mod` VALUES (7077, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 25, 0, -1, -1, -1, -1, -1, 'Teleport Visual on target');
INSERT INTO `spell_effect_mod` VALUES (18271, 1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Shadow Mastery - Remove double corruption scaling');
INSERT INTO `spell_effect_mod` VALUES (18272, 1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Shadow Mastery - Remove double corruption scaling');
INSERT INTO `spell_effect_mod` VALUES (18273, 1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Shadow Mastery - Remove double corruption scaling');
INSERT INTO `spell_effect_mod` VALUES (18274, 1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Shadow Mastery - Remove double corruption scaling');
INSERT INTO `spell_effect_mod` VALUES (18275, 1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Shadow Mastery - Remove double corruption scaling');
INSERT INTO `spell_effect_mod` VALUES (19632, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 13, -1, -1, -1, -1, 'Razorgore Cleave: 10 yd range');
INSERT INTO `spell_effect_mod` VALUES (24869, 1, 6, -1, -1, -1, -1, 1, 10000, -1, -1, -1, -1, 1, 0, -1, 23, -1, -1, 24870, 'Bobbing Apple Well Fed effect');
INSERT INTO `spell_effect_mod` VALUES (28310, 0, -1, -1, -1, -1, -1, -1, -1, -1, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Surgical Assistant Mind Flay Chain damage');
INSERT INTO `spell_effect_mod` VALUES (13589, 0, 128, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Haste Aura');
INSERT INTO `spell_effect_mod` VALUES (30080, 2, 6, -1, -1, -1, -1, 1, -1, -1, 1, -1, -1, 3, 0, 13, 42, -1, 0, 30080, 'Retching Plague');
INSERT INTO `spell_effect_mod` VALUES (30081, 2, 6, -1, -1, -1, -1, 1, -1, -1, 1, -1, -1, 3, 0, 13, 42, -1, 0, 30080, 'Retching Plague');
INSERT INTO `spell_effect_mod` VALUES (28531, 0, -1, -1, -1, -1, -1, -1, 2000, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Sapphiron Frost Aura tick every 2 sec');
INSERT INTO `spell_effect_mod` VALUES (17500, 1, 64, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 6, 0, -1, -1, -1, -1, 17499, 'Malown\'s Slam strength buff');
INSERT INTO `spell_effect_mod` VALUES (16805, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, 'Conflagration prevent double damage');
INSERT INTO `spell_effect_mod` VALUES (23023, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, 'Conflagration prevent double damage');
INSERT INTO `spell_effect_mod` VALUES (21879, 0, -1, -1, -1, -1, -1, -100, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Mage T2 threat reduction');
INSERT INTO `spell_effect_mod` VALUES (21879, 1, -1, -1, -1, -1, -1, -20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Mage T2 threat reduction');
INSERT INTO `spell_effect_mod` VALUES (21879, 2, -1, -1, -1, -1, -1, -20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Mage T2 threat reduction');
INSERT INTO `spell_effect_mod` VALUES (21856, 0, -1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Threatening Strikes threat increase');
INSERT INTO `spell_effect_mod` VALUES (21167, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, 'Snowball Knockdown allow selfcast');
INSERT INTO `spell_effect_mod` VALUES (21167, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, 'Snowball Knockdown allow selfcast');
INSERT INTO `spell_effect_mod` VALUES (10418, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, 'Arugal spawn-in spell - Cast on Self');
INSERT INTO `spell_effect_mod` VALUES (16454, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 14, -1, -1, -1, 'Searing Blast damage taken');
INSERT INTO `spell_effect_mod` VALUES (13234, 1, 6, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, 42, -1, 0, 13235, 'Harm Prevention Belt: Backfire effect');
INSERT INTO `spell_effect_mod` VALUES (2823, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (2824, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (3594, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (6650, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7434, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7439, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7448, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7451, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7769, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7853, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7855, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (7865, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8017, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8018, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8019, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8024, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8027, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8030, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8033, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8038, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8087, 0, -1, -1, -1, -1, -1, 599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8088, 0, -1, -1, -1, -1, -1, 599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8089, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8090, 0, -1, -1, -1, -1, -1, 599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8232, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8235, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8532, 0, -1, -1, -1, -1, -1, 599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8679, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8686, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (8688, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (9092, 0, -1, -1, -1, -1, -1, 599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (10399, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (10456, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (10486, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (11338, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (11339, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (11340, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (11355, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (11356, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16314, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16315, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16316, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16339, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16341, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16342, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16355, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16356, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (16362, 0, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (25351, 0, -1, -1, -1, -1, -1, 1799, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (28891, 0, -1, -1, -1, -1, -1, 3599, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Temporary Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (14792, 1, -1, -1, -1, -1, -1, 299, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Venomhide Poison Enchant Duration');
INSERT INTO `spell_effect_mod` VALUES (13488, 1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Firegut Fear Storm - Disable Effect 2');
INSERT INTO `spell_effect_mod` VALUES (30174, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (8396, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (10800, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (10801, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (10802, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (29831, 0, -1, -1, -1, -1, -1, 26, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 'Damage Bonfire (DND) - Reduce Damage');
INSERT INTO `spell_effect_mod` VALUES (10804, 1, 6, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 32, -1, -1, -1, NULL);
INSERT INTO `spell_effect_mod` VALUES (454, 0, -1, -1, -1, -1, -1, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, NULL);


SET FOREIGN_KEY_CHECKS = 1;
