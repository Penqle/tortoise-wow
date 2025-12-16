-- Make Deepwood Pipe be prevented by effects that prevent stuns.
UPDATE `spell_template` SET `effectMechanic1`=12 WHERE `entry`=9458;
