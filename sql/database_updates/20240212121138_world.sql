-- Fix Valentine spell causing combat.
UPDATE `spell_template` SET `attributes`=(`attributes` & ~67108864) WHERE `entry` IN (26663, 27541, 27547, 27548, 27549, 27550, 26923);

-- Fix Valentine quest text
UPDATE quest_template SET
Details = 'Can you feel it, $C? The sweet fragrance of love and admiration that permeates the air? The joy and fascination those eager lovebirds share with one another? There''s nothing that makes my heart beat faster than witnessing the miracle of love spread throughout Azeroth!$B$BYour eyes betray your heart, and I can read you like an open book. I can see your eagerness to learn more, perhaps even to experience this sentiment yourself. Love takes many forms, and is not always as clear cut as one might think. Even I, love''s herald, am often surprised at those chosen by my arrows to receive the blessings of love! Truly an enigma, love is!$B$BNo further proof of this needs be seen than those whom my arrows have pierced in the past. Bring me a token of their unique form of love and admiration, and return these keepsakes to me in any capital city.'
WHERE entry = 41274;
