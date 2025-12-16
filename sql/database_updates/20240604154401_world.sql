-- Change Quest IDs 40702 and 40693 should be shareable.
update quest_template set questflags = 520 where entry in (40702,40693);