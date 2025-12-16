-- Fix wrong spell id being referenced in tooltips of Hellfire ranks 2 and 3.
UPDATE `spell_template` SET `description`='Ignites the area surrounding the caster, causing $s2 Fire damage to $ghimself:herself; and $11681s1 Fire damage to all nearby enemies within $s1 yards every $t2 sec.  Lasts $d.' WHERE `entry`=11683;
UPDATE `spell_template` SET `description`='Ignites the area surrounding the caster, causing $s2 Fire damage to $ghimself:herself; and $11682s1 Fire damage to all nearby enemies within $s1 yards every $t2 sec.  Lasts $d.' WHERE `entry`=11684;

