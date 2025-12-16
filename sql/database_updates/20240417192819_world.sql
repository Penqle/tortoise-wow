


-- Sinister Strike
UPDATE spell_template SET Description = 'An instant strike that causes $s1 damage in addition to your melee damage.  Awards $s2 combo $lpoint:points;.' WHERE entry IN (1752, 1757, 1758, 1759, 1760, 8621, 11293, 11294);

-- Backstab
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 15 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 53;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 30 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 2589;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 48 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 2590;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 69 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 2591;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 90 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 8721;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 135 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11279;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 165 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11280;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 210 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11281;
UPDATE spell_template SET Description = 'Backstab the target, causing $s2% melee damage plus 225 to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 25300;

-- Ambush
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 70 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 8676;
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 100 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 8724;
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 125 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 8725;
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 185 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11267;
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 230 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11268;
UPDATE spell_template SET Description = 'Ambush the target, causing $s2% melee damage plus 290 to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards $s3 combo $lpoint:points;.' WHERE entry = 11269;

-- Ghostly Strike
UPDATE spell_template SET Description = 'A strike that deals $s1% melee damage and increases your chance to dodge by $s2% for $d.  Awards $s3 combo $lpoint:points;.' WHERE entry = 14278;

-- Whirlwind
UPDATE spell_template SET Description = 'In a whirlwind of steel you attack up to $i enemies within $a1 yards, causing melee damage to each enemy.' WHERE entry = 1680;

-- Overpower
UPDATE spell_template SET Description = 'Instantly overpower the enemy, causing melee damage plus $s1.  Only useable after the target dodges.  The Overpower cannot be blocked, dodged or parried.' WHERE entry IN (7384, 7887, 11584, 11585);

-- Mortal Strike
UPDATE spell_template SET Description = 'A vicious strike that deals melee damage plus $s2 and wounds the target, reducing the effectiveness of any healing by $s1% for $d.' WHERE entry IN (12294, 21551, 21552, 21553, 27580);

-- Slam
UPDATE spell_template SET Description = 'Slams the opponent, causing melee damage plus $s1.' WHERE entry IN (1464, 8820, 11604, 11605, 45961 );

-- Decisive Strike
UPDATE spell_template SET Description = 'Decisively strikes the opponent with the power of Slam (Rank 4), causing melee damage plus $11605s1.' WHERE entry = 45599;
UPDATE spell_template SET Description = 'Decisively strikes the opponent with the power of Slam (Rank 5), causing melee damage plus $45961s1.' WHERE entry = 45960;

-- Cleave
UPDATE spell_template SET Description = 'A sweeping attack that does your melee damage plus $s1 to the target and his nearest ally.' WHERE entry IN (845, 7369, 11608, 11609, 20569);

-- Seal of Command
UPDATE spell_template SET Description = 'Gives the Paladin a chance to deal additional Holy damage equal to $20424s1% of melee damage.  Only one Seal can be active on the Paladin at any one time.  Lasts $d.\n\nUnleashing this Seal\'s energy will judge an enemy, instantly causing $/2;20467s1 Holy damage, $20467s1 if the target is stunned or incapacitated.' WHERE entry = 20375;
UPDATE spell_template SET Description = 'Gives the Paladin a chance to deal additional Holy damage equal to $20424s1% of melee damage.  Only one Seal can be active on the Paladin at any one time.  Lasts $d.\n\nUnleashing this Seal\'s energy will judge an enemy, instantly causing $/2;20963s1 Holy damage, $20963s1 if the target is stunned or incapacitated.' WHERE entry = 20915;
UPDATE spell_template SET Description = 'Gives the Paladin a chance to deal additional Holy damage equal to $20424s1% of melee damage.  Only one Seal can be active on the Paladin at any one time.  Lasts $d.\n\nUnleashing this Seal\'s energy will judge an enemy, instantly causing $/2;20464s1 Holy damage, $20464s1 if the target is stunned or incapacitated.' WHERE entry = 20918;
UPDATE spell_template SET Description = 'Gives the Paladin a chance to deal additional Holy damage equal to $20424s1% of melee damage.  Only one Seal can be active on the Paladin at any one time.  Lasts $d.\n\nUnleashing this Seal\'s energy will judge an enemy, instantly causing $/2;20465s1 Holy damage, $20465s1 if the target is stunned or incapacitated.' WHERE entry = 20919;
UPDATE spell_template SET Description = 'Gives the Paladin a chance to deal additional Holy damage equal to $20424s1% of melee damage.  Only one Seal can be active on the Paladin at any one time.  Lasts $d.\n\nUnleashing this Seal\'s energy will judge an enemy, instantly causing $/2;20466s1 Holy damage, $20466s1 if the target is stunned or incapacitated.' WHERE entry = 20920;