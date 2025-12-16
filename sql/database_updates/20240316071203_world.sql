-- Make Righteous Fury undispellable.
UPDATE `spell_template` SET `dispel`=0, `dmgClass`=0, `preventionType`=0 WHERE `entry`=25780;
