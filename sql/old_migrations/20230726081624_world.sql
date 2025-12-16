-- Rename spell/items to the following

-- Copper Buckle > Copper Belt Buckle
-- Bronze Buckle > Bronze Belt Buckle
-- Iron Buckle > Iron Belt Buckle
-- Mithril Buckle > Mithril Belt Buckle
-- Thorium Buckle > Thorium Belt Buckle
-- Arcanite Buckle > Arcanite Belt Buckle
-- Dreamsteel Buckle > Dreamsteel Belt Buckle

-- Copper Buckle
-- Bronze Buckle
-- Iron Buckle
-- Mithril Buckle
-- Thorium Buckle
-- Arcanite Buckle
-- Dreamsteel Buckle
-- Thorium Spurs

-- Change item type to Trade Goods (they are consumable now)

update item_template set  name = 'Copper Belt Buckle' where name = 'Copper Buckle';
update item_template set  name = 'Bronze Belt Buckle' where name = 'Bronze Buckle';
update item_template set  name = 'Iron Belt Buckle' where name = 'Iron Buckle';
update item_template set  name = 'Mithril Belt Buckle' where name = 'Mithril Buckle';
update item_template set  name = 'Thorium Belt Buckle' where name = 'Thorium Buckle';
update item_template set  name = 'Arcanite Belt Buckle' where name = 'Arcanite Buckle';
update item_template set  name = 'Dreamsteel Belt Buckle' where name = 'Dreamsteel Buckle';

update item_template set `class` = 12, flags = 64 where entry = 61779;
update item_template set `class` = 12, flags = 64 where entry = 61780;
update item_template set `class` = 12, flags = 64 where entry = 61781;
update item_template set `class` = 12, flags = 64 where entry = 61782;
update item_template set `class` = 12, flags = 64 where entry = 61783;
update item_template set `class` = 12, flags = 64 where entry = 61784;
update item_template set `class` = 12, flags = 64 where entry = 61785;

update spell_template set name = 'Copper Belt Buckle' where name = 'Copper Buckle';
update spell_template set name = 'Bronze Belt Buckle' where name = 'Bronze Buckle';
update spell_template set name = 'Iron Belt Buckle' where name = 'Iron Buckle';
update spell_template set name = 'Mithril Belt Buckle' where name = 'Mithril Buckle';
update spell_template set name = 'Thorium Belt Buckle' where name = 'Thorium Buckle';
update spell_template set name = 'Arcanite Belt Buckle' where name = 'Arcanite Buckle';
update spell_template set name = 'Dreamsteel Belt Buckle' where name = 'Dreamsteel Buckle';

-- Belt buckles do not actually apply any enchants to the belt item, if you right click them and try to enchant your belt they currently do nothing ((Similar to the last enchant bug we had with helmets))

-- Copper Buckle
-- Bronze Buckle
-- Iron Buckle
-- Mithril Buckle
-- Thorium Buckle
-- Arcanite Buckle
-- Dreamsteel Buckle
	
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57182;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57179;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57176;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57173;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57170;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57167;
UPDATE `spell_template` SET `equippedItemClass` = 4, `equippedItemSubClassMask` = 31, `equippedItemInventoryTypeMask` = 64 WHERE `entry` = 57164;

-- The following items/spells can be applied to other players in the trade window, this is not intentional

-- 'Invocation of Shattering',
-- 'Invocation of Greater Protection',
-- 'Invocation of Expansive Mind',
-- 'Invocation of Greater Arcane Fortitude',
-- 'Sigil of Quickness',
-- 'Sigil of Leeching',
-- 'Sigil of Penetration' 

UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57151;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57152;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57153;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57154;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57155;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57156;
UPDATE `spell_template` SET `targets` = 256 WHERE `entry` = 57157;