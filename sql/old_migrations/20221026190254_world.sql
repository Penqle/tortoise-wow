-- Quest 40686 objectives updated.
update quest_template set objectives = 'Chen Stormstout has asked you to gather 1 Magic Dust, 14 Hops, and 1 Goldthorn Tea to help create his special Stormstout Surprise! (You can\'t give up this OPPORTUNITY!)', reqitemcount2 = 14 where entry = 40686;
-- Item 60925 description updated.
update item_template set description = 'This enchanted Stein never seems to run out of Chen’s surprise brew!' where entry = 60925;