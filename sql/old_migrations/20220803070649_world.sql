delete from creature_template where entry = 50072;
delete from creature_template where entry = 50071;

-- Table 'creature_loot_template' entry 92145 isn't creature entry and not referenced from loot, and then useless.

delete from creature_loot_template where entry = 92145;

-- Script registering but script_name boss_kintozo is not assigned in database. Script will not be used.

update creature_template set script_name = 'boss_kintozo' where entry = 80269;

-- Creature (Entry: 60884) has nonexistent display_id1 (4651), can crash client
-- Creature (Entry: 60884) is using display_id1 (0), but creature_display_info_addon data is missing for this id.
-- Creature (Entry: 60884) does not have any valid display id

update creature_template set display_id1 = 9424 where entry = 60884;

-- Table `npc_trainer` have data for creature (Entry: 3689) without trainer flag, ignore

delete from npc_trainer where entry = 3689;

-- Gossip menu option (MenuId: 50450) for nonexistent menu

delete from gossip_menu_option where menu_id = 50450;

-- Table creature_movement has waypoint for creature guid 27973 (entry 4690), but MovementType is not WAYPOINT_MOTION_TYPE(2). Creature will not use this path.
-- creature_template for this entry has MovementType WAYPOINT_MOTION_TYPE(2), did you intend to use creature_movement_template?
	
delete from creature_movement where id = 27973;

-- Table `creature` has creature (GUID: 2554948) with non existing creature entry 50071, skipped.
-- Table `creature` has creature (GUID: 2554950) with non existing creature entry 50072, skipped.

delete from creature where id in (50071, 50072);

-- Table 'gameobject_loot_template' entry 2010841 (gameobject lootid) not exist but used as loot id in DB.

update gameobject_template set data1 = 0 where entry = 2010841;

-- Quest 40527 has `RewSpellCast` = 60766 but spell 60766 does not exist, quest will not have a spell reward.
-- Quest 40520 has `RewSpellCast` = 60762 but spell 60762 does not exist, quest will not have a spell reward.

update quest_template set rewspellcast = 0 where entry in (40527, 40520);

-- Spell 45521 (prev: 17364, first: 17364, rank: 2, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`
-- Spell 45961 (prev: 11605, first: 1464, rank: 5, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`
-- Spell 45514 (prev: 45505, first: 45505, rank: 2, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`
-- Spell 17364 (prev: 0, first: 17364, rank: 1, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`
-- Spell 45505 (prev: 0, first: 45505, rank: 1, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`
-- Spell 45969 (prev: 9830, first: 5221, rank: 6, req: 0) already added (talent or spell ability with forward) and non need in `spell_chain`

delete from spell_chain where spell_id in (45521, 45961, 45514, 17364, 45505, 45969 );

-- Misc. DB fixes:

update item_template set display_id = 8665 where entry = 65021;
update item_template set spellppmRate_1 = 3.5 where entry = 65008;