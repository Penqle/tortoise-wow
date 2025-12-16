-- Change NPC ID 60782, 60781, 60780 and 60779 to be civilians and not attack horde on sight like other civilians, don't change their faction if possible for this change.
update creature_template set flags_extra = 2 where entry in (60782, 60781, 60780, 60779); -- 65536
