-- Remove "threat on miss" attribute from Calm Elements.
UPDATE `spell_template` SET `attributesEx`=(`attributesEx` & ~2097152) WHERE `entry`=45529;

