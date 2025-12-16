-- Make 41349 Unique.
update item_template set flags = 524288 where entry = 41349;
-- Item 41330 needs gemstone inventory sound.
update item_template set material = 4, display_id = 6494 where entry = 41330;