-- AH-Misclassified Items
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/6211
update item_template set class = 9, subclass = 4 where entry in (83503,83504,83501,83506,83502,83505);