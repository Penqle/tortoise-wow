-- Make Nature's Reach also increase the range of Insect Swarm.
UPDATE `spell_template` SET `effectItemType1` = (`effectItemType1` | 2097152), `description` = 'Increases the range of your Wrath, Entangling Roots, Faerie Fire, Moonfire, Starfire, Insect Swarm and Hurricane spells by $s1%.' WHERE `entry` IN (16819, 16820);
