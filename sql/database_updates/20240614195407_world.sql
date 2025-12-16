-- Baron Revilgaz not angry enough >,<
update broadcast_text set male_text = 'You dare? You\'re not getting out of here alive, bub!' where entry = 66117;
-- Duplicate shield in Quest Reward.
update quest_template set
RewChoiceItemId1 = 0, RewChoiceItemCount1 = 0,
RewChoiceItemId2 = 0, RewChoiceItemCount2 = 0,
RewChoiceItemId3 = 0, RewChoiceItemCount3 = 0,
RewChoiceItemId4 = 0, RewChoiceItemCount4 = 0,
RewChoiceItemId5 = 0, RewChoiceItemCount5 = 0,
RewChoiceItemId6 = 0, RewChoiceItemCount6 = 0,
RewItemId1 = 61386, RewItemCount1 = 1,
RewItemId2 =	 0, RewItemCount2 = 0,
RewItemId3 =	 0, RewItemCount3 = 0,
RewItemId4 =	 0, RewItemCount4 = 0 
where entry = 40857;
-- Fought instead of Thought.
update broadcast_text set male_text = 'You have fought well, spirit. I ask you to grant me the strength of your body and the strength of your heart.', female_text = 'You have fought well, spirit. I ask you to grant me the strength of your body and the strength of your heart.' where entry = 7405;
-- Grave of Franklin Blackheart - Grave Mistake.
update broadcast_text set male_text = 'A hastily constructed grave. The following words are etched into the wood in crude handwriting.$B$B<Franklin Blackheart. Rest easy brother.>' where entry = 30126;
-- Head Tech Klazfit greetings text edit.
update broadcast_text set male_text = 'I got sent from Sparkwater to look after this place. We got a lot of projects in the making around here, and us technicians make sure all the part kept in working order.$B$B$Anyway, what can I do for you?' where entry = 60961;
-- Kin'weelay has a typo in his speach.
update broadcast_text set male_text = 'There, $N. You may now speak to the Bloodscalp chief and his witchdoctor.' where entry = 740;