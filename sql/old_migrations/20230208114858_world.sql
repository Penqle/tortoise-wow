UPDATE quest_template SET
RewRepValue1 = 150,
Objectives = 'Slay 10 Gnarlpine Avengers and 5 Gnarlpine Pathfinders and then return to Adaena Oakleaf in Darnassus.',
Details = 'The Gnarlpine tribe in Teldrassil has become a greater threat than I could ever have imagined. To think they were once our allies against all who would bring the forests harm.$B$BMoon Priestess Amara patrols the roads between Darnassus and Dolanaar, keeping travelers safe and enlisting their aid in defending against the Gnarlpine attacking near the village. Alas, it seems these measures have not been sufficient in diminishing the Furbolgs'' offensive capabilities.$B$BWe must strike at the heart of the tribe if we are to curtail any attempts at mobilizing against Dolanaar and Shadowglen, a legitimate concern now with how bold they''ve become. Travel to Gnarlpine Hold to the south and slay as many Avengers and Pathstalkers as you can.',
RequestItemsText = 'Is it done, $N? We cannot afford to fail here, lest Darnassus itself be at risk.',
OfferRewardText = 'You have done a great service to the Kaldorei today, $N. Though I weep for the fate of our former allies, sorrow cannot give way to weakness. Elune guided your hand in defending our people''s lands, and for carrying out her will, you are to be rewarded.'
WHERE entry = 40205;

UPDATE quest_template SET
Objectives = 'Speak with Adaena Oakleaf in Darnassus.',
Details = 'Greetings, $c. High Sentinel Adaena Oakleaf has tasked me with scouting and recruiting capable adventurers to address some of the more concerning incidents here within Teldrassil. Those who are fit and willing I am to direct to her for further orders.$B$BYou will find the High Sentinel up this path atop the gates of Darnassus, watching over our borders.',
RequestItemsText = '',
OfferRewardText = 'Have you come to aid in securing the Darnassus perimeter?$B$BThat is good to hear. We are in need of all the assistance available with my forces spread so thin. Recent events have strained our resources, as we now defend not only Ashenvale and Darkshore, but must have details all across our homes here in Teldrassil.'
WHERE entry = 40204;

UPDATE quest_template SET
Objectives = 'Destroy the Distorted Treant and bring its Withered Roots to Malos Lunarspear in Teldrassil.',
Details = 'I fear there is no recourse but to destroy the treant lest it cause harm to our people or the creatures of Teldrassil. From the information Tasala provided, we can safely assume that it will be patrolling the eastern banks of the Wellspring Lake.$B$BSeek the Distorted Treant out, give it a merciful end, and bring back a sample of its roots that I may better understand what possessed it. Exercise caution; a Protector is not likely to go without a fight.$B$BGo quickly now. That treant may hold answers to what lies at the heart of nature''s unrest here in Teldrassil.',
RequestItemsText = 'Have you found my treant? We cannot allow it to roam freely and wreak havoc in the forests.',
OfferRewardText = '<Malos contemplates the roots you hand him with great concern.>$B$BIt would appear that the roots are decayed, suggesting the treant was already deceased by the time you found it. What a horrible fate for a protector of the forests... No, for any of nature''s creatures. I cannot begim to fathom how this could have happened.$B$BThis is a disturbing revelation indeed, and I am afraid that it has only created more questions. My research continues without the breakthrough we had hoped for, it seems. Nonetheless, you have done a great service to the forests and myself.$B$BPlease take one of these items as a token of my gratitude.',
RewRepValue1 = 150
WHERE entry = 40203;

UPDATE quest_template SET
Objectives = 'Return to Malos Lunarspear in Teldrassil with Tesala Whitefeather''s information.',
Details = 'There is a shadow that lurks unseen in the forests of Teldrassil, a tainted air that hangs like an acrid pall over the seemingly pristine glades. Is has twisted and corrupted my sisters, making them distempered and aggressive. Malos assures me his research may lead to a cure for my sisters.$B$BThe treant Malos speaks of I have seen meandering the forests below here, withered, twisted, and enraged. A haunting visage it possesses, its mind tainted by the very darkness that has touched my sisters. You should be able to find it walking along the eastern edge of the Wellspring Lake.$B$BGo and bring this news to Malos. I hope that I have been of aid to him in return for his kindness.',
RequestItemsText = 'You are back. Do you bring word from Tasala of my treant''s whereabouts?',
OfferRewardText = 'I see. So it is as I feared. Broken free of my control, gnarled and enraged, it has been twisted beyond recognition by the undercurrent of corruption that plagues Teldrassil.'
WHERE entry = 40202;

UPDATE quest_template SET
ReqCreatureOrGOId1 = 0,
RewMoneyMaxLevel = 390,
RewXP = 670,
Objectives = 'Brave Windfeather in Red Cloud Mesa has asked you to find the strategist of the Bristleback hidden somewhere in Brambleblade Ravine. Slay this quillboar and bring back proof of the kill.',
Details = 'Aside from Sharptusk, there is another threat among the Bristleback that cannot go unaddressed. Our scouts have reported a strategist among the quillboars, hidden away in a cave in Brambleblade Ravine and devising attacks against our people.$B$BThe quillboars are a vicious foe enough without having carefully-laid plans against Mulgore. All the more reason this tactician cannot be allowed to live. Go, find this cunning Bristleback, put him down, and bring back proof of his demise.$B$BIf possible, be vigilant of any documents that may give us insight on the sort of tactics and knowledge the quillboars have been developing.',
OfferRewardText = 'Already I feel that our people are safer thanks to your decisive blow against the Bristlebacks, $N. Your actions speak highly of your dedication to protecting our tribe.$B$BMay the Earth Mother guide your path.'
WHERE entry = 60115;