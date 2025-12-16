-- Simplify loot rules of Firemaw, Ebonroc and Flamegor so they always drop something.
-- I think either the team conditions were causing problems with cross faction group,
-- or the chance didn't add up to exactly 100% in some cases.
UPDATE `reference_loot_template` SET `condition_id`=0 WHERE `entry` IN (30341, 30342);
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`=0 WHERE `entry` IN (30395, 30337, 30342);

