-- Increase sunnyglade final boss health.
UPDATE `creature_template` SET `health_min`=20000, `health_max`=20000 WHERE `entry` IN (93000, 93005);
-- Increase sunnyglade mini boss health.
UPDATE `creature_template` SET `health_min`=8745, `health_max`=8745 WHERE `entry` IN (161210, 161211);
