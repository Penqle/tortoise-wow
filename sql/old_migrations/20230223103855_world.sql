-- Remove taunt immunity

-- Thaddius
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~256 WHERE `entry` = 15928;
-- Stalagg
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~256 WHERE `entry` = 15929;
-- Feugen
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~256 WHERE `entry` = 15930;

