-- Increase size of SpecialFlags column so we can have more flags.
ALTER TABLE `quest_template`
	CHANGE COLUMN `SpecialFlags` `SpecialFlags` SMALLINT UNSIGNED NOT NULL DEFAULT '0' AFTER `QuestFlags`;
  
-- Mark all Lunar Festival quests as yearly reset.
UPDATE `quest_template` SET `SpecialFlags`=(`SpecialFlags` | 256) WHERE `entry` IN (8619, 8635, 8636, 8642, 8643, 8644, 8645, 8646, 8647, 8648, 8649, 8650, 8651, 8652, 8653, 8654, 8670, 8671, 8672, 8673, 8674, 8675, 8676, 8677, 8678, 8679, 8680, 8681, 8682, 8683, 8684, 8685, 8686, 8688, 8713, 8714, 8715, 8716, 8717, 8718, 8719, 8720, 8721, 8722, 8723, 8724, 8725, 8726, 8727, 8862, 8863, 8864, 8865, 8866, 8867, 8868, 8870, 8871, 8872, 8873, 8874, 8875, 8876, 8877, 8878, 8879, 8880, 8881, 8882, 8883, 80740);
