-- Item entries 70160, 70166, 56095, 70177, 70182, 70181 make these item entries bind on pickup.
update item_template set bonding = 1 where entry in (70160, 70166, 56095, 70177, 70182, 70181);
-- Item 56097, and 56098 add a jewelcrafting skill requirement of 300, it should look like the picture added with Requires Jewelcrafting (300).
update item_template set required_skill = 755, required_skill_rank = 300 where entry in (56097,56098);
-- On the item above, please add the argent dawn reputation requirement of honored to the ITEM ITSELF., please change the item's rarity to common (white text) for the Plans: Orb of Clairvoyance.
update item_template set required_reputation_faction = 529, required_reputation_rank = 5 where entry in (70216);
-- Raise the buy value of item Plans: Goldcrest Amulet (entry 70115) to 85silver.
update item_template set buy_price = 8500 where entry in (70115);
-- Raise the buy value of item Plans: Skyfire Jewel (Entry 70128) to 1gold 15 silver.
update item_template set buy_price = 11500 where entry in (70128);
-- Raise the buy value of item Plans: Pure Shining Moonstone (Entry 70168) to 50 silver.
update item_template set buy_price = 5000 where entry in (70168);