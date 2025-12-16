-- Fix not being able to enchant some cloaks.
UPDATE `item_template` SET `subclass`=1 WHERE `class`=4 && `inventory_type`=16;
