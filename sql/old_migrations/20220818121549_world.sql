-- shadowcaller axe can't be repaired
update item_template set item_level = 54 where entry = 60616;

-- Remove the cooldown from the karavan kodo
update spell_template  set  recoverytime = 0 where entry = 46483;