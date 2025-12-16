-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1857
update quest_template set requiredraces = 0 where entry in (103, 152, 104);