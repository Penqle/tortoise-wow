-- The Claw of Erennius
delete from quest_template where entry = 41038;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41038,2,616,60,55,0,0,'The Claw of Erennius','<Corruption lingers upon the Claw of Erennius. Perhaps there is someone that can find use for this item, or someone that may desire to know the fate of Erennius.>','Bring the Claw of Erennius to one that may find it useful.','Can I help you?','The Claw of Erennius.$B$BIt pains me to see the fall of a once noble hero to our cause. It would seem even the great Erennius was not safe from the lure and draw of the awakening. I take it the corruption sank deep into his heart, and turned him into an agent of evil.$B$BErennius is put to rest now, free from torment. I must thank you for what you\'ve done. Take one of these relics, as a tribute for your heroism.',61652,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61650,1,61651,1,61740,1,0,0, 0,0,'');

update item_template set start_quest = 41038 where entry = 61652;
replace into creature_involvedrelation	(id, quest) values (61326, 41038);

replace into item_template values
 ('61740', '2', '13', 'Claw of Senthos', '', '30595', '4', '0', '1', '364820', '91205', '21', '-1', '-1', '66',
 '60', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '5', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2400', '0',
 '0', '86', '145', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '9331', '1', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '75', '0', '0', '0', '0', '65', '0', '0', '0',
 '0', '1', NULL);

-- Provisions for Thalanaar
delete from quest_template where entry = 41039;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41039,2,357,42,35,0,0,'Provisions for Thalanaar','The people of Thalanaar have labored diligently to sustain our forces, but alas, their efforts alone prove insufficient to satiate the needs of our squad. We Sentinels must not burden them with the weight of our demands, for they have already sacrificed much for our cause.$B$BThough our skilled huntresses have ventured forth to secure provisions, the magnitude of the task requires the contribution of every willing hand. I have witnessed the presence of prowling wolves in the vicinity, their hunger mirroring our own. Embark upon this hunt, and procure ten succulent chunks of their meat, that our strength may be fortified.','Bring 10 Chunks of Wolf Meat to Sentinel Glensha at Thalanaar in Feralas.','One shot, one kill.','These meats will be crucial for our survival in this wilderness. Thank you, $c.',61741,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19800,3300,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61585, 41039);
replace into creature_involvedrelation	(id, quest) values (61585, 41039);
update quest_template set requiredraces = 589 where entry = 41039;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61741,6348,'Chunk of Wolf Meat',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(5286,61741,-80,0,1,1,0),
(5287,61741,-80,0,1,1,0),
(5288,61741,-80,0,1,1,0);

-- Woodpaw Disarray
delete from quest_template where entry = 41040;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41040,2,357,42,35,0,0,'Woodpaw Disarray','The Woodpaw Gnolls threaten our sacred lands, preying upon our caravans and scouts. We cannot allow them to grow in strength and orchestrate an assault on Thalanaar. The time to strike is now.$B$BYour mission is clear: eradicate the Woodpaw threat before it escalates further. Seek out their camp in the treacherous Woodpaw Hills, easily traced by their noxious odor.$B$BSlay ten trappers and mongrels, vanquish eight reavers, and bring down six alphas. This decisive blow will plunge them into disarray, buying us valuable respite.','Slay 10 Woodpaw Trappers, 10 Woodpaw Mongrels, 8 Woodpaw Reavers and 6 Woodpaw Alphas for Commander Anashya Starfall at Thalanaar in Feralas.','This makes me wonder... have the gnolls always been there?','Swift and decisive, you have accomplished the task with remarkable efficiency. Your prowess in action speaks volumes, outsider. $B$BYour discernment in recognizing the importance of swift action and your aversion to idle chit-chat sets you apart. It is a trait we value greatly among our ranks. There are those, like Shandris, who may hesitate until the eleventh hour, and then... But let us not dwell on such matters for now.',0,0,0,0,0,0,0,0, 5249,10,5251,10,5258,6,5255,8, 0,0, 6500,21900,3650,69,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61583, 41040);
replace into creature_involvedrelation	(id, quest) values (61583, 41040);
update quest_template set requiredraces = 589 where entry = 41040;

-- The Grimtotem Plot
delete from quest_template where entry = 41041;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41041,2,357,42,38,0,0,'The Grimtotem Plot','Not all tauren tribes were so eager to align themselves with the Horde. Among them, the Grimtotems stand as outliers. While most tribes strive to subdue and tame their primal instincts, the Grimtotems embrace their savage nature. One would assume they would find kinship with those responsible for the murder of Cenarius, but they too have their own sense of pride.$B$BThe Grimtotems walk a precarious path, treading the line between loyalty and independence. Recently, our scouts have reported skirmishes between their forces and the tauren of Camp Mojache to the northwest. It piques my curiosity as to the cause of this disagreement.$B$BVenture forth to the Grimtotem Compound and uncover any clues that shed light on the situation. I am intrigued to understand the motives behind this conflict.','Discover any clues that could shed a light on the situation of Grimtotem Tauren and return to Commander Anashya Starfall at Thalanaar in Feralas.','In bygone eras, when the Night Elves and Tauren were steadfast allies, the Grimtotem tribe was known for their penchant for trouble. They continuously sought independence from the Kaldorei, often at the expense of their own prosperity.$B$BNevertheless, I cannot deny my admiration for their combat prowess. Among the Tauren, they stood resolute against the Centaur onslaught and maintained a presence in remote mountain outposts, defying the odds. Their resilience and tenacity in the face of adversity is commendable.','Interesting. So, you\'re telling me that their leader held possession of this artifact? Its aura carries the unmistakable taint of the Scourge. We must promptly inform someone of higher wisdom and authority to determine the appropriate course of action.',61742,1,0,0,0,0,0,0, 61598,1,0,0,0,0,0,0, 0,0, 3000,17400,2900,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61583, 41041);
replace into creature_involvedrelation	(id, quest) values (61583, 41041);
update quest_template set requiredraces = 589 where entry = 41041;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61742,25096,'Grim Mallet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,2);

replace into creature_loot_template values
(61598,61742,-100,0,1,1,0);

-- The Word of the Archdruid
delete from quest_template where entry = 41042;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41041,41042,2,357,42,38,0,0,'The Word of the Archdruid','There is only one individual who comes to mind when it comes to deciphering the significance of this artifact: Archdruid Fandral. While many among the Kaldorei harbor resentment towards him for his disagreement with the High Priestess, I believe he sees the bigger picture.$B$B Tyrande no longer acts in the best interest of our people.$B$BRegardless, it is imperative that you bring this mallet directly to him. He possesses the wisdom and knowledge to determine the appropriate course of action.','Report to Fandral Staghelm in Darnassus with your findings.','What is it? You better have a good reason to interrupt me.','Ah, the Scourge\'s tainted weapon found among the Grimtotem? Not surprising at all. They have developed a peculiar fascination with undeath, even stooping so low as to collaborate with the Forsaken. But why the artifact ended up with those pathetic Grimtotem fools shouldn\'t bother you. It\'s just another testament to what the Horde truly stands for: death and destruction.$B$BThe world fractures further, the Second Sundering looms. Your involvement in this matter, however insignificant, is duly noted.$B$BConsider yourself dismissed.Here, take this token of appreciation for your feeble efforts.',61742,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61742,1, 5000,4800,800,69,300,0,0,0,0,0,0,0,0,0, 61514,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61583, 41042);
replace into creature_involvedrelation	(id, quest) values ( 3516, 41042);
update quest_template set requiredraces = 589 where entry = 41042;

-- The Ruins of Isildien
delete from quest_template where entry = 41043;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41043,2,357,45,38,0,0,'The Ruins of Isildien','Long ago, during the reign of Queen Azshara, this place thrived as a center of Kaldorei civilization. Now, all that remains are ruins, either occupied by ogres or tainted by undeath.$B$BThe downfall of this place was brought about by arcane magic, and it\'s hard to feel pity for those who met their end here. Yet, amidst all this arcane corruption, there once stood a place of purity and light—the old Temple of Elune, its name lost to the annals of time.$B$BWithin the temple, the priestesses safeguarded a sacred artifact deeply connected to the roots of our people and the world we inhabit. I require this artifact, but my duties prevent me from leaving the camp at this moment. If fate ever guides you to the Ruins of Isildien, seek out the Tear of Zalmos—a precious blue gem of unimaginable importance. Your aid in retrieving it would be invaluable.','Find the Tear of Zalmos in the Temple of Elune in the Ruins of Isildien and bring it back to Larodar at Thalanaar in Feralas.','Have you found it, $c?','Very well, your assistance in retrieving the Tear of Zalmos is greatly appreciated. However, acquiring it is only the first step in a greater endeavor. Are you prepared to lend your aid once more?',61743,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,23100,3850,69,200,0,0,0,0,0,0,0,0,0, 61513,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61584, 41043);
replace into creature_involvedrelation	(id, quest) values (61584, 41043);
update quest_template set requiredraces = 589 where entry = 41043;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61743,2378,'Tear of Zalmos',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

REPLACE INTO gameobject_template VALUES
(2020045, 3, 30723, 'Tear of Zalmos', 0, 4, 1, 43, 2020045, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020045,61743,-100,0,1,1,0);

-- The Fallen Ancient
delete from quest_template where entry = 41044;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41043,41044,2,357,45,38,0,0,'The Fallen Ancient','The Kaldorei Empire\'s vast influence once spanned across the entire world, before the cataclysmic event of the Sundering shattered our dominion. As a consequence, our sacred relics have found their way to the farthest reaches of the globe.$B$BRecently, there have been murmurs and whispers about the shattering of the Greymane Wall, which once separated the land of Gilneas from the outside world. While I hold little regard for the internal struggles of human kingdoms, it is noteworthy that Gilneas was once home to the ancient Wild God known as Zalmos. Sadly, Zalmos perished there during the devastating War of the Ancients.$B$BYour task is to journey to Gilneas and recover Fang of Zalmos, which is said to be held by an enigmatic order known as the Pellars of Witchwood. Unfortunately, further details are scarce, but your resourcefulness will undoubtedly guide you in uncovering the truth.','Venture to Gilneas and find the Witchwood Pellars.','What brings you here, my child?','Ah, so you seek the sacred artifact known as  Fang of Zalmos, do you? Indeed, we Pellars hold such relics within our grasp, for we have been entrusted with the guardianship of these ancient artifacts. For the Wolf-Serpent\'s maws were many, each bite imbued with the strength of a thousand wolves.$B$BI must admit, the curiosity within me stirs at the thought of what a Druid from the western lands would desire with such a relic. However, I am but a humble servant of the ancient ways, and who am I to question the authority of one who predates me by millennia? If you aid me in a task, I shall grant you one of the revered  Fang of Zalmos.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,2400,400,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61584, 41044);
replace into creature_involvedrelation	(id, quest) values (61452, 41044);
update quest_template set requiredraces = 589 where entry = 41044;

-- The Serpentroot
delete from quest_template where entry = 41045;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41044,41045,2,5179,45,38,0,0,'The Serpentroot','I require your assistance in a matter close to my heart.$B$BIn these troubled times of the Gilnean civil war, the demand for our healing skills has reached unprecedented heights. Alas, we find ourselves confined within the safety of this cave, unable to venture into the treacherous wilds in search of vital supplies. The dangers lurking in the wilderness have grown fiercer with each passing day.$B$BWhat I require from you, brave soul, is a rare healing herb known as Serpentroot. It can be found only in the lands of Gilneas, thriving amidst its turmoil. Procure ten samples of this precious herb for me, and I shall reward your efforts with one of the revered Fangs of Zalmos.','Gather 10 Serpentroot for Lurn Five-Pelts.','Wolf-Serpent watch over you.','Splendid. With these supplies, we will be able to help those in need.',61744,10,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,21900,3650,0,0,0,0,0,0,0,0,0,0,0, 3928,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61452, 41045);
replace into creature_involvedrelation	(id, quest) values (61452, 41045);
update quest_template set requiredraces = 589 where entry = 41045;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61744,7573,'Serpentroot',12,1,2048,1,-1,-1,1,10,-1,-1,-1,-1,4,'',0,3);

REPLACE INTO gameobject_template VALUES
(2020046, 3, 28255, 'Serpentroot', 0, 4, 1, 43, 2020046, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020046,61744,-100,0,1,1,0);

-- Back to Thalanaar
delete from quest_template where entry = 41046;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41045,41046,2,357,45,38,0,0,'Back to Thalanaar','Here, brave adventurer.$B$B<The old pellar extends a weathered hand, carefully placing the Fang of Zalmos into your grasp>$B$BTake hold of this sacred relic, for it holds the essence of our ancient Wild God, Zalmos. It is a power that must not be taken lightly, for in the wrong hands, it could bring untold destruction. The Regents may not have been foolish enough to challenge us directly, but the enemy lurks in the shadows, waiting for their opportunity.$B$BGuard this Fang with utmost vigilance, for it is now your responsibility to ensure its safety. Should the enemy ever lay eyes upon it, their thirst for power and control will be unquenchable. May the blessings of the Wolf-Serpent guide and protect you on your journey, and may we meet again in a restored and prosperous Gilneas. And do not forget to convey my regards to the druid who sent you on this quest.','Bring Fang of Zalmos to Larodar in Thalanaar.','You\'re finally back. Have you managed to reclaim the Fang of Zalmos?','Interesting indeed. It is heartening to see that the humans have not forgotten the ancient powers that once resided in their lands. Your success in retrieving the Fang of Zalmos is commendable. However, our quest is not yet complete.$B$BThere is one more piece missing, one more relic that we must acquire.',61745,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61745,1, 0,7200,1200,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61452, 41046);
replace into creature_involvedrelation	(id, quest) values (61584, 41046);
update quest_template set requiredraces = 589 where entry = 41046;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61745,1151,'Fang of Zalmos',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,3);

-- Feralkin of Feralas
delete from quest_template where entry = 41047;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41046,41047,2,357,45,38,0,0,'Feralkin of Feralas','You have proven yourself to be a valuable ally and for that, I shall reveal the truth to you. The artifacts we have gathered are but a fragment of the greater plan to restore balance to the world.$B$BZalmos possessed a unique ability to regenerate with unparalleled potency. By harnessing his essence, we can bring forth a healing force that can mend the corrupted lands of Felwood and revitalize the dying World Tree.$B$BHowever, the artifacts alone are not enough to accomplish this task. We require the guidance of Cenerron. He was a druid who once studied under Zalmos. Though the passage of time has taken its toll on Cenerron, we believe he still roams the ancient forests of Feralas. His connection to the Wild God makes him the key to unlocking the potential of these artifacts.$B$BSearch for Cenerron amidst the wilderness of Feralas. Be cautious, for he is now a feralkin, lost to his primal instincts. If you can earn his trust, he will possess the knowledge to amplify the power of these artifacts.','Find the feralkin in Feralas.','<Cenerron, the feralkin, gazes at you with ancient eyes, his wild form blending seamlessly with the surrounding wilderness. The silence hangs heavy in the air as he carefully considers your presence.>','So, you seek my wisdom, do you? Few dare to venture into my domain, let alone seek an audience with me. Speak your purpose, but be mindful of your words, for I have little patience for idle chatter.$B$B<Cenerron\'s gaze intensifies, his primal instincts ready to pounce at the slightest hint of deception or disrespect. His pack, hidden in the shadows, stirs restlessly, their feral energy palpable in the air.>$B$BRemember, mortal, the bond between man and nature is a delicate one. One misstep, and my pack will not hesitate to unleash their fury upon you. Now, state your intentions.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3000,500,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61584, 41047);
replace into creature_involvedrelation	(id, quest) values (61586, 41047);
update quest_template set requiredraces = 589 where entry = 41047;

-- Essence of Zalmos
delete from quest_template where entry = 41048;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41047,41048,2,357,47,38,0,0,'Essence of Zalmos','You seek answers that are veiled in shadows, obscured by deception. The ones who sent you may have their own agenda, but it matters little now. You have found me, and the time for idle talk has passed.$B$BIn the distant lands where Seradane flourishes, the owlkins were entrusted with the solemn duty of safeguarding what remained of Zalmos\' essence. Ages have passed since those days, and the memories of their ancient charge may have faded. However, there is a chance that they still possess the soulgem that holds a fragment of Zalmos\' being.$B$BThat is all the information I will provide. Now, be gone from this place, for I desire solitude and the company of my kin. May the spirits guide your path, and may our paths never cross again.$B$B<Cenerron\'s piercing gaze lingers on you for a moment longer before he turns away, his attention drawn back to the primal world surrounding him. The message is clear: your time here is over, and he wishes no further interference in his secluded existence.>','Venture to the Hinterlands and discover where the local owlkin might be keeping the Soulgem of Zalmos.','Have you found the feralkin?','The essence of the Wolf-Serpent before my eyes... Remarkable.$B$BI have tarried here long enough. The time has come to make my way back to Teldrassil, bearing the treasures you have procured. Fandral will be eager to learn of these developments, and I can already anticipate the satisfaction in his eyes.$B$BThank you, $N. You have played a part in something bigger than you can imagine.',61746,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 5000,24300,4050,0,0,0,0,0,0,0,0,0,0,0, 61512,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61586, 41048);
replace into creature_involvedrelation	(id, quest) values (61584, 41048);
update quest_template set requiredraces = 589 where entry = 41048;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61746,33448,'Soulgem of Zalmos',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61601,61746,-100,0,1,1,0);

-- Chimaeran Task
delete from quest_template where entry = 41049;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41049,2,357,44,38,0,0,'Chimaeran Task','Chimaeras, majestic creatures of untamed beauty, once served as our loyal allies and formidable warbeasts in ages past. However, the devastating onslaught of the Burning Legion during the Third War brought ruin upon their roosts, leaving us bereft of their companionship and power.$B$BBut hope stirs anew. Velos Sharpstrike, a seasoned chimaera trainer, has made a remarkable discovery—a long-forgotten roost that lies to the southwest of our current position. It is said that he seeks aid in reviving and restoring this sacred haven.$B$BVenture forth and lend your aid to Velos.','Reprt to Velos Sharpstrike at Chimaera Roost Vale in Feralas.','I didn\'t expect company. Welcome.','Excuse me for the state of this place. Our work has just begun.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4200,700,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61587, 41049);
replace into creature_involvedrelation	(id, quest) values (61588, 41049);
update quest_template set requiredraces = 589 where entry = 41049;

-- Cleansing the Roost
delete from quest_template where entry = 41050;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41050,2,357,44,38,0,0,'Cleansing the Roost','If we are to embark on the path of training new chimaeras, we must first clear this roost of its current inhabitants. As magnificent as those soaring creatures may be, they are beyond the point of training and cannot serve our purpose.$B$BTo truly mold an obedient and loyal companion, we must start from their earliest days. Therefore, I ask of you to take up your arms and eliminate eight of the Dunebound chimaeras and eight of the Venomlash chimaeras that roam these skies. Once we\'ve cleared the way, our true work can commence.','Slay 8 Dunebound Chimaera and 8 Venomlash Chimaera for Velos Sharpstrike at Chimaera Roost Vale in Feralas.','Beware their venomous breath. One mistake can be fatal.','Ah, my gratitude, young one. These weary bones of mine have seen many moons, and my aging eyes no longer possess the keenness they once held. Your presence here is a timely boon, for the moment of anticipation is upon us.$B$BBehold those precious eggs before us, nestled within the protective embrace of the roost. They shimmer with the promise of new life, their shells trembling in anticipation of the imminent hatching. A magnificent sight to behold, indeed.$B$BStay vigilant, for any moment now, the fragile shell shall yield to the strength within, and new chimaera hatchlings shall grace this world with their presence.',0,0,0,0,0,0,0,0, 61596,8,61597,8,0,0,0,0, 0,0, 3000,23100,3850,69,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61588, 41050);
replace into creature_involvedrelation	(id, quest) values (61588, 41050);
update quest_template set requiredraces = 589 where entry = 41050;

-- Feeding the Younglings
delete from quest_template where entry = 41051;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41050,41051,2,357,44,38,0,0,'Feeding the Younglings','Ah, the voracious appetite of young chimaeras! There\'s nothing quite like it. These little ones can devour twice their weight in a single day, but they are quite particular about their meals. While impudent trainers may have been a tempting choice in the past, we must focus on satisfying their hunger with more suitable fare.$B$BIn this case, their favorite delicacy happens to be hippogryphs. Deep within the High Wilderness, a sizable flock of hippogryphs has been spotted. I task you with hunting them down and bringing me twenty chunks of their meat. This will provide a hearty feast to nourish the soon-to-hatch chimaeras and satisfy their growing appetites.','Bring 20 Chunks of Hippogryph Meat to Velos Sharpstrike atChimaera Roost Vale in Feralas.','While killing a hippogryph is not something that we, night elves do lightly, it is unfortunately necessary for the chimaeras to grow healthy.','Ah, you have returned, just in time! The anticipation is building, and I can sense that the hatching of the chimaeras is imminent. In just a few days, these majestic creatures will emerge from their eggs and grace our roost with their presence. Your timely presence ensures that we are prepared for their arrival.',61747,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3500,23700,3950,69,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61588, 41051);
replace into creature_involvedrelation	(id, quest) values (61588, 41051);
update quest_template set requiredraces = 589 where entry = 41051;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61747,25475,'Chunk of Hippogryph Meat',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,3);

replace into creature_loot_template values
(5300,61747,-60,0,1,1,0),
(5304,61747,-60,0,1,1,0),
(5305,61747,-60,0,1,1,0),
(5306,61747,-60,0,1,1,0);

-- Harness of Chimaeran
delete from quest_template where entry = 41052;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41051,41052,2,2100,48,38,512,0,'Harness of Chimaeran','Allow me to share a tale from antiquity. Millennia ago, a momentous pact was forged between the Kaldorei and the chimaeras. In those ancient times, there existed a remarkable figure known as Chimaeran. He possessed the rare ability to not only train these noble creatures but also ride upon their backs with unparalleled grace.$B$BHowever, tragedy struck during a brutal war with the Maraudine Centaur, for they plundered Chimaeran\'s legendary harness. Though the centaurs may no longer hold it, reports suggest that it still resides deep within the labyrinthine depths of Maraudon. Yet, beware, for other sinister forces, such as the malevolent satyrs, may now be the custodians of this precious artifact.$B$BI implore you, venture forth into Maraudon and reclaim the lost harness. Its recovery would hold profound significance for the legacy of chimaera trainers and honor the ancient bond that once united our kind.','Retrieve the Harness of Chimaeran from Maraudon and bring it back to Velos Sharpstrike at Chimaera Roost Vale in Feralas.','Have you recovered it yet?','<Velos clutches the retrieved harness tightly, his weathered face softening with emotion. Tears well up in his eyes as he accepts the artifact from your hands, his voice trembling with gratitude.>$B$BFriend, you have performed a noble deed, one that rekindles the flame of hope within my heart. With this long-lost relic restored, I can now dare to dream of a future where I can train and nurture a new generation of chimaeras. Your selfless actions have granted me a sense of closure and a renewed purpose. I am forever indebted to you.$B$BIn recognition of your unwavering dedication and unwavering support, I offer you this token of my appreciation. May it serve you well on your future endeavors.',61748,1,0,0,0,0,0,0, 13282,1,0,0,0,0,0,0, 0,0, 0,30720,5120,69,300,0,0,0,0,0,0,0,0,0, 61517,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61588, 41052);
replace into creature_involvedrelation	(id, quest) values (61588, 41052);
update quest_template set requiredraces = 589 where entry = 41052;
update quest_template set type = 81 where entry = 41052;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61748,4527,'Harness of Chimaeran',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(12236,61748,-100,0,1,1,0);

-- The Galak Messenger
delete from quest_template where entry = 41053;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41053,2,400,28,25,0,0,'The Galak Messenger','Our vigil does not end. $B$BThe Centaur tribes infesting Thousand Needles have been steadily growing more brazen with each passing day, their scouts boldly encroaching on our sacred lands. For now, they content themselves with harassing others, but it is only a matter of time before these abominations set their sights on our town.$B$BMy scouts have reported the presence of a Centaur messenger, bearing news between the warlords of these lands. We cannot allow them to continue to scheme and plot against us unchecked. We must discover their plans, and we must do so quickly.$B$BI trust that you possess the necessary skills to eliminate this messenger and seize any messages that they bear. I have no patience for failure.','Find and retrieve the Centaur Missive from Galak Messenger for Commander Anashya Starfall in Thalanaar.','Do not disappoint me.','You have retrieved the message. Good work. Now show me that.$B$B<Commander Anashya takes the message from you and carefully reads it, her eyes scanning the words with a furrowed brow>$B$BInteresting... They are preparing to attack the tauren.',61749,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,7500,1250,69,150,0,0,0,0,0,0,0,0,0, 61517,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61583, 41053);
replace into creature_involvedrelation	(id, quest) values (61583, 41053);
update quest_template set requiredraces = 589 where entry = 41053;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61749,3029,'Centaur Missive',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace into creature_loot_template values
(10617,61749,-100,0,1,1,0);

-- Shame Never Again
delete from quest_template where entry = 41054;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41053,41054,2,400,28,25,0,0,'Shame Never Again','I bear no love for the traitorous tauren, who allied with the demon-tainted defilers of our sacred lands. Despite this, duty beckons, and we must aid them still. The politics of the Horde and Alliance matter not in this moment. The honor of the Kaldorei shall not be tarnished again, and we shall not stand idly while innocent blood is shed.$B$BI shall dispatch a diplomat to the tauren to inform them of their precarious situation. Meanwhile, I beseech you to venture forth and thin the centaur numbers, granting the taurens of Freewind more time to prepare their defenses. Return to me with twenty of their bracers as proof of your deed. May Elune\'s light guide your path.','Bring 20 Galak Bracers to Commander Anashya Starfall in Thalanaar.','Centaurs can be found mostly in the northern parts of Thousand Needles. Waste no time.','Your efforts have yielded crucial time for the tauren, and our diplomat has returned from their meeting. The tauren expressed deep gratitude for the information provided, and their appreciation resonates within our hearts.$B$BNever again shall shame befall us.',61750,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 3000,0,2250,69,200,0,0,0,0,0,0,0,0,0, 61517,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61583, 41054);
replace into creature_involvedrelation	(id, quest) values (61583, 41054);
update quest_template set requiredraces = 589 where entry = 41054;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61750,3652,'Galak Bracer',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0,8);

replace into creature_loot_template values
(10720,61750,-65,0,1,1,0),
(4093,61750,-65,0,1,1,0),
(4094,61750,-65,0,1,1,0),
(4095,61750,-65,0,1,1,0),
(4096,61750,-65,0,1,1,0),
(4097,61750,-65,0,1,1,0),
(4099,61750,-65,0,1,1,0);

-- Enchanted Leather Collection
delete from quest_template where entry = 41055;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41055,2,616,60,55,0,1,'Enchanted Leather Collection','Dreamscale is a rare and difficult material for us to get our hands on. Even since the paths to Emerald Sanctum have been sealed it has been ever difficult to obtain.$B$BIf you are willing to assist, I can trade a Bright Dream Shard in exchange for five Dreamscales at any time.','Gather 5 Dreamscale for Tanalla Sagebranch at Nordanaar in Hyjal.','Have you had any luck $c?','Hmm, everything seems to be in order here, your assistance to our efforts is well appreciated, here, take this.',20381,5,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0, 61199,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61327, 41055);
replace into creature_involvedrelation	(id, quest) values (61327, 41055);

-- Npc 61599 make tamable as a Cat by hunters.
update creature_template set type_flags = 1, beast_family = 2 where entry = 61599;
-- Make the following npcs immune to bleeds/poisons:
-- Phantom Guardsman
-- Haunted Stable Tender
-- Haunted Blacksmith
-- Phantom Cook
-- Phantom Servant
update creature_template set mechanic_immune_mask = 81937 where entry in (61200,61201,61202,61205,61210);
-- Make npc "Brood Queen Araxxna" immune to poisons.
update creature_template set mechanic_immune_mask = 85585 where entry = 61221;

-- Add Outline: Cleaning Cloth to as vendor stock to Rufus Hardwick with infinite stock.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(50070, 0, 60002, 0, 0, 0, 0);
-- Add "Remains of an Old God" to Loot Group 3 with a 15% drop chance to NPC ID 15727.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(15727, 60003, 15, 3, 1, 1, 0);
-- Copy loottable for Vilemusk Satyr to Xalhix, make sure the 100% drop chance Runestone Chunk isn't deleted.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 61643, -100, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30051, 0.0025, 0, -30051, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30052, 0.0025, 0, -30052, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30053, 0.0025, 0, -30053, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30103, 0.0025, 0, -30103, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11736, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19230, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19232, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19259, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19261, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19279, 0.0036, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19260, 0.0071, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30044, 0.01, 0, -30044, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30050, 0.01, 0, -30050, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11734, 0.0107, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19269, 0.0107, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11733, 0.0178, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 1710, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 2772, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 2776, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3818, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3821, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3827, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3858, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 3928, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 5500, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 6149, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7911, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7912, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8831, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8838, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8839, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8932, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8948, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8950, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 10620, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11224, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11732, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12364, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12365, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12685, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12689, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12692, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12693, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12694, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12695, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12697, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12704, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13464, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13465, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13492, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14466, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14467, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14494, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14499, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15737, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15745, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15746, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15755, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 15757, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16043, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16051, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16215, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16218, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19231, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19270, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19271, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19278, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 19280, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 11737, 0.0249, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7910, 0.0355, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 7909, 0.0533, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 4500, 0.08, 0, 1, 1, 109);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 5758, 0.0923, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 61197, 0.35, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 10305, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 10306, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30043, 0.5, 0, -30043, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30049, 0.5, 0, -30049, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 4425, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 4426, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13443, 1.44, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8766, 2.4358, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 24024, 2.5, 0, -24024, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 13446, 2.88, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14256, 3.7603, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 61198, 3.8, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 12662, 4.0834, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 8952, 4.7864, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61565, 14047, 24.692, 0, 1, 2, 0);

-- Prof recipe req changes.
update spell_template SET ReagentCount1 = 2 WHERE entry = 17580; -- Major Mana Potion Crafting Recipe
update spell_template SET ReagentCount2 = 3, ReagentCount3 = 3 WHERE entry = 22732; -- Major Rejuvenation Potion Crafting Recipe
update spell_template SET ReagentCount2 = 2 WHERE entry = 3449; -- Shadow Oil Crafting Recipe
update spell_template SET EffectItemType1 = 60001 WHERE entry = 46068; -- Cleaning Cloth Craft

-- dreamsteel
update item_template set stat_value2 = 12 where entry = 61364; -- Dreamsteel Mantle
update item_template set stat_value1 = 36, spellid_2 = 48034 where entry = 61365; -- Dreamsteel Leggings
update item_template set stat_value1 = 18, spellid_1 = 13679, spelltrigger_1 = 1 where entry = 61366; -- Dreamsteel Bracers
-- dreamthread
update item_template set stat_value3 = 5, spellid_2 = 21364 where entry = 61360; -- Dreamthread Mantle
update item_template set spellid_3 = 21629 where entry = 61361; -- Dreamthread Kilt
update item_template set stat_value1 = 7 where entry = 61362; -- Dreamthread Bracers
update item_template set stat_value1 = 7, stat_value3 = 7, spellid_1 = 15715, spellid_2 = 21364, spelltrigger_2 = 1 where entry = 61363; -- Dreamthread Gloves
-- dreamhide
update item_template set stat_value1 = 12, stat_value2 = 20, stat_value3 = 9 where entry = 61356; -- Dreamhide Mantle
update item_template set stat_value2 = 11 where entry = 61358; -- Dreamhide Leggings
update item_template set stat_value2 = 6 where entry = 61357; -- Dreamhide Bracers
update item_template set stat_value2 = 14, stat_value3 = 15 where entry = 61359; -- Dreamhide Belt
-- misc
update item_template set inventory_type = 13, spellid_1 = 17315, spelltrigger_1 = 2, spellppmRate_1 = 1 where entry = 12798; -- Annihilator
update item_template set subclass = 6, name = 'Blade of the Blademaster' where entry = 81369; -- Sword of the Blademaster
update item_template set spellid_1 = 20487 where entry = 61337; -- Libram of the Justicar
update item_template set spellid_1 = 15873, spellid_2 = 7576, spellid_3 = 15896, spellid_4 = 46040, spelltrigger_4 = 1 where entry = 14551; -- Edgemaster's Handguards
update item_template set allowable_class = -1 where entry = 81007; -- Blackened Defias Mask
update item_template set stat_type1 = 3 where entry = 19608;
update item_template set stat_type1 = 3 where entry = 19607;
update item_template set stat_value1 = 17, stat_value2 = 20, spellid_1 = 23727, spellid_2 = 17367 where entry = 19607; -- Leggings of Arcana
update item_template set spellid_2 = 13679 where entry = 12757; -- Breastplate of Bloodthirst
update item_template set spellid_3 = 0 where entry = 61186; -- Gloves of Unwinding Mystery
update item_template set required_spell = 9787 where entry = 61189; -- Plans: Dawnstone Hammer
update item_template set max_durability = 100 where entry = 80542; -- Quel'dorei Cleric's Staff
update item_template set max_durability = 100 where entry = 80642; -- Revantusk Mender's Cane
update item_template set max_durability = 55 where entry = 80502; -- Curved Ceremonial Staff
update item_template set max_durability = 40 where entry = 80624; -- Revantusk Shadow Hunter's Belt
update item_template set max_durability = 40 where entry = 80524; -- Quel'dorei Ranger's Belt

-- Implement cleaning cloth.
replace into item_template values
 ('60001', '0', '0', 'Cleaning Cloth', '', '7596', '1', '0', '1', '400', '50', '0', '-1', '-1', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46070', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
replace into item_template values
 ('60002', '9', '0', 'Outline: Cleaning Cloth', '', '15274', '2', '0', '1', '15000', '3750', '0', '-1', '-1', '55',
 '0', '51', '50', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '46069', '0', '-1', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '0', '0', '0', '0', '0', '0', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);
-- New rare c'thun drop.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, spellid_2, spelltrigger_2, spellcharges_2, spellppmrate_2, spellcooldown_2, spellcategory_2, spellcategorycooldown_2, random_property, required_reputation_faction, required_reputation_rank) values (60003, 'Remnants of an Old God', '', 2, 13, 1, 4, 67783, 1, 60, 1, -1, -1, 1034835, 206967, 21, 3, 0, 0, 1, 1, 0, 126, 233, 2700, 0, 0, 75, 0, 0, 0, 84, 0, 65, 0, 0, 0, 0, 0, 0, 7, 8, 14089, 1, 0, 0, -1, 0, -1, 46040, 1, 0, 0, -1, 0, -1, 0, 0, 0); -- Remnants of an Old God.

-- Create object with model G_BookOpenMediumBrown, it should be readable, object title: "Shame of the Sentinels".
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020047, 9, 25781, 'Shame of the Sentinels', 0, 0, 1, 50661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50661, 'Centuries ago, the first Tauren tribes settled in the fertile lands of Multhan, harmonizing with the wild and untamed forces of nature, much like our own kind. These noble beings, though initially unrefined, held a deep reverence for nature akin to our own. The teachings of our druids bestowed upon them the knowledge of agriculture, animal husbandry, and even the written word.$B$BTheir spiritual devotion extended beyond their own traditions, embracing Cenarius, and Elune. Thus, an alliance was formed, fostering mutual growth and prosperity. Though occasional misunderstandings marred the harmony, the Kaldorei and the Tauren dwelt together in peace.', 50662),
(50662, 'However, the course of history took a fateful turn with the arrival of the Centaur clans from Morerume, now known as Desolace. These merciless forces launched a relentless assault upon the Tauren, seeking to dispossess them of their bountiful plains and banish them to desolate wastelands.$B$BThe brave Tauren fought valiantly against overwhelming odds, but the tide of battle turned against them. Day after day, they were relentlessly pushed eastward, closer to the precipice of despair.', 50663),
(50663, 'In a moment of solidarity, the Sentinel Army emerged to lend their aid in defense of their Tauren allies. United, they stood resolute, prepared to confront this formidable adversary.$B$BAlas, the true extent of the Centaur\'s ferocity caught the Sentinels off guard. Swift and merciless, the Centaur\'s style of warfare on open fields rendered the Sentinels\' customary ambush and hit-and-run tactics ineffective. Countless brave sisters fell, their sacrifice forever mourned.', 50664),
(50664, 'Amidst this dire situation, Shandris Feathermoon, burdened with a heavy heart, made the difficult decision to order a strategic retreat. The Sentinels regrouped within the familiar embrace of Ashenvale, leaving the Tauren to face their harrowing fate alone.$B$BUltimately, the Tauren lost their ancestral homeland, consigned to roam the desolate wastes of the East, forever marked by the curse of their displacement.', 50665),
(50665, 'This grievous chapter in our shared history serves as a testament to our deepest shame, a betrayal of our noble allies driven by the fear of losing more lives. Indeed, we may have preserved our own existence, but at what cost to our honor and integrity?', 0);
-- Object ID Range 5015844-5015942 except for the IDs below should have the respawn timer of a vanilla Mithril Deposit object. 5015893, 5015898, 5015906, 5015915, 5015937 should have the respawn timer of a vanilla Truesilver Deposit.
update gameobject set spawntimesecsmin = 1800, spawntimesecsmax = 1800 where guID between 5015844 and 5015942;
update gameobject set spawntimesecsmin = 2700, spawntimesecsmax = 2700 where guID in (5015893,5015898,5015906,5015915,5015937);

-- Enable the displayid 20428 in the DB, then apply it to Annesastrasza.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20428, 0, 0, 0, 0);
update creature_template set display_id1 = 20428 where entry = 61577;
-- Enable the displayid 20429 in the DB, then apply it to Shadowhunter Trak'nal.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20429, 0, 0, 0, 0);
update creature_template set display_id1 = 20429 where entry = 61578;
-- Enable the displayid 20439 in the DB, then apply it to Melanastrasza.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20439, 0, 0, 0, 0);
update creature_template set display_id1 = 20429 where entry = 61579;
-- Create a dummy item called [Monster - Warden Blade], a sword with displayid 40027 and apply it to Kiri Starstalker.
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
(61751, 2, 7, 'Monster - Item, Sword - Kheyna', '', 40027, 0, 0, 1, 1, 1, 13, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @equip_template = 20425; set @weapon_1 = 61751; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61581;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Create a dummy item called [Monster - Warden Blade], a sword with displayid 50511 and apply it to Shadowhunter Trak'nal.
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
(61752, 2, 7, 'Monster - Item, Sword - Kheyna', '', 50511, 0, 0, 1, 1, 1, 13, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

set @equip_template = 20426; set @weapon_1 = 61752; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61578;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;
-- Rename quest 41055 to Dreamscale Collection.
update quest_template set title = 'Dreamscale Collection' where entry = 41055;
-- Item "Windtalker Cape" (Entry 61709) change display ID to 26233.
update item_template set display_id = 26233 where entry = 61709;
-- Apply deathstate to the following GUID: 2578192, 2578193, 2578194 (There was an old command called .npc deathstate that would make npcs be dead at all times, I need that emulated.)
REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES
(2578192, 0, -1, -1, 7, 1, 0, NULL),
(2578193, 0, -1, -1, 7, 1, 0, NULL),
(2578194, 0, -1, -1, 7, 1, 0, NULL);
update creature set id = 61606, health_percent = 0, mana_percent = 0, movement_type = 0 where guid in (2578192, 2578193, 2578194);

REPLACE INTO creature_template VALUES
(61606, 6172, 0, 0, 0, 0, 'Hederine Manastalker', NULL, 0, 59, 60, 17766, 18312, 0, 0, 3059, 35, 0, 1, 1.14286, 0, 20, 5, 0, 1, 1, 528, 681, 0, 272, 1, 2000, 2000, 1, 2, 36, 0, 0, 0, 0, 0, 59.9488, 82.4296, 100, 3, 0, 7462, 0, 7462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 1, 1, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, '');
-- NPC Ralathius had his greeting text overwritten. Restore his previous greeting text.
update broadcast_text set male_text = 'Hidden beneath the veil, a great shadow lurks within the dream, already much of my kind have been disturbed by the presence.$B$BYou may not know this, but the awakening has begun.$B$BAn ancient ritual of my kin intended to draw us from the dream, I have resisted it\'s temptations already, but not all are willed so strong.' where entry = 61326;