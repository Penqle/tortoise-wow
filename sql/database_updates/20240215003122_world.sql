-- Add ignore LoS flag to Smitten. Don't ask me why it thinks target is not in LoS. Just turtle things.
UPDATE `spell_template` SET `attributesEx2`=(`attributesEx2` | 4) WHERE `entry`=27572;
