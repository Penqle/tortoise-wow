-- NPC 80245 Damilara Sunsorrow should not be a boss, she should have normal class.
update creature_template set rank = 0 where entry = 80245;
-- Item 41106 change display id to 14354.
update item_template set display_id = 14354 where entry = 41106;
-- Item 60408 change display id to 27124.
update item_template set display_id = 27124 where entry = 60408;