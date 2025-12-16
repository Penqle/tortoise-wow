-- Fixed some startup errors:

/*
Table `npc_vendor` has data for nonexistent creature (Entry: 50029), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50029), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50030), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50030), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 81045), ignoring
Table `npc_vendor` for vendor 12776 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6328 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 5750 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6376 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6382 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6373 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6374 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 5815 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 6027 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 5753 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 5520 contain nonexistent item (83577), ignoring
Table `npc_vendor` for vendor 5749 contain nonexistent item (83577), ignoring
*/

delete from npc_vendor where item in (83577, 50029, 50030, 81045);

-- Script not found: item_survival_outline.
-- Script not found: npc_lordaeron_alice.
-- 

update item_template set script_name = '' where script_name = 'item_survival_outline';
update creature_template set script_name = '' where script_name = 'npc_lordaeron_alice';

-- Entry -1999960 in table `script_texts` has soundId 60362 but sound does not exist.
-- Entry -1999960 in table `script_texts` has soundId 60362 but sound does not exist.

replace into sound_entries values (60362, "Doomcaller, RANDOMSPEECH_3");

/*
Table 'creature_loot_template' entry 60735 item 83576: item entry not listed in `item_template` - skipped
Table 'creature_loot_template' entry 60717 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84010: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60717 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84011: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60717 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84012: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60717 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84013: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60717 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84014: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60717 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60718 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60719 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60720 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60721 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60722 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60723 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60724 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 60725 item 84015: wrong mincountOrRef (0) - skipped
Table 'creature_loot_template' entry 91928 group 1 has total chance > 100% (120.000000)
*/

delete from creature_loot_template where item = 83576;

update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84010;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84011;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84012;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84013;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84014;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60717 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60718 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60719 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60720 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60721 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60722 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60723 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60724 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84015;
update creature_loot_template set mincountorref = 1, maxcount = 1, groupid = 5 where entry = 60725 and item = 84015;

/*
Table `creature` have creature (GUID: 2567309 Entry: 92210) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2567313 Entry: 92211) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2567315 Entry: 92212) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2571574 Entry: 50672) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2571575 Entry: 50672) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2571576 Entry: 50676) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
Table `creature` have creature (GUID: 2571577 Entry: 50677) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
*/

update creature set wander_distance = 0 where guid in (2567309, 2567313, 2567315, 2571574, 2571575, 2571576, 2571577 );

-- Table `npc_trainer` have entry for nonexistent creature template (Entry: 1403), ignore
-- Table `npc_trainer` have entry for nonexistent creature template (Entry: 1403), ignore

delete from npc_trainer where entry = 1403;

/*
Table `npc_trainer` for trainer (Entry: 12042) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 4217) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3033) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 4218) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3602) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 5506) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 5504) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 9465) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3064) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 5505) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3036) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3597) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 4219) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3060) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 8142) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
Table `npc_trainer` for trainer (Entry: 3034) has non-learning spell 24974, ignore
  ... possible must be used spell 24979 instead
*/

delete from npc_trainer where spell = 24974;

-- Table 'creature_loot_template' entry 91928 group 1 has total chance > 100% (120.000000)

replace into creature_loot_template values (91928, 83465, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83466, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83467, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83468, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83469, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83470, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83471, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83472, 10, 1, 1, 1, 0);
replace into creature_loot_template values (91928, 83571, 20, 1, 1, 1, 0);

/*
Table `npc_vendor` has data for nonexistent creature (Entry: 50029), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50029), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50030), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 50030), ignoring
Table `npc_vendor` has data for nonexistent creature (Entry: 81045), ignoring
*/
delete from npc_vendor where entry in (50029, 50030, 81045);