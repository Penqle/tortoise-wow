-- Item entry 56066 change display to 68078.
update item_template set display_id = 68078 where entry = 56066;
-- Item entry 56072 change display to 15420.
update item_template set display_id = 15420 where entry = 56072;
-- Item entry 55336 change display to 29914.
update item_template set display_id = 29914 where entry = 55336;
-- Change the display IDs for Lifeblood Gem and Unrefined Lifeblood Gem to 7052.
update item_template set display_id = 7052 where entry in (41355,56079);
-- Change the display ID of creature Mato'gar (Entry 61929) to 11650.
update creature_template set display_id1 = 11650 where entry = 61929;
-- Сreature 61928 Boreghast, change scale to 1.1.
update creature_template set scale = 1.1 where entry = 61928;
-- Change the item Sharpened Citrine Gemstone to be Bind on Pickup.
update item_template set bonding = 2 where entry = 56002;
-- Quest 41293 , set requirement of item Crystal Earring entry 56047 to 1.
update quest_template set ReqItemCount1 = 1 where entry = 41293;
-- Quest 41294 set requirement of item Dazzling Aquamarine Loop entry 56048 to 1.
update quest_template set ReqItemCount1 = 1 where entry = 41294;
-- Update quest description of 41300:
update quest_template set details = 'Oh, this is bad! Just how unfortunate can one single gnome be? I made a horrible mistake and now it\'s gonna cost me my head or worse - my home!$B$BSimply put, my finances are dry, severely dry! Desperate as I was, I accepted the offer of a dubious merchant with the promise of heaps of gold. Yet, on his second visit, he was accompanied by two frightening thugs and demanded more wares from me than originally agreed! My pleas explaining that my supplies don\'t cover his demands fell on deaf ears - and now they\'re threatening me. Me, the magnanimous and unmatched Talvash del Kissel!$B$BPlease, assist me with my dilemma! I promise, you\'ll get justly rewarded. The scoundrels left towards The Commons, I am sure these thieves are hiding somewhere in the countless houses along the outer ring!' where entry = 41300;
-- Update quest objective of 41301:
update quest_template set objectives = 'Return to Talvash del Kissel in the Mystic Ward of Ironforge and give him his payment.' where entry = 41301;
-- Please change the quest description of 41289:
update quest_template set details = 'My people have an extensive history about goldsmithing and bedazzlements, be it removable or permanent. While I will share my insight in the old Zandalari goldsmithing customs, it is important to expand your horizon to other sources of knowledge as well.$B$BWhat I want you to delve into is the human way of fashioning regalias. Up north, not far from the lands of our forsaken allies, you will find the nation of Gilneas. A relic of old times, so I have heard, now newly opened to those eager enough to best its dangers and perils. High atop its mountain ridged towers Gilneas City, a place of commerce, trade and festivities, according to the stories of traveling adventurers.$B$BIt is where you will find a suitable digest for us to analyze.' where entry = 41289;
-- Please change the quest progress text of 41289:
update quest_template set requestitemstext = 'I am sure getting these gemstone will be of no issue for you.' where entry = 41289;