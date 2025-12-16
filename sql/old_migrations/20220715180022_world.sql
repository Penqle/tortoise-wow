-- ERROR:Table `creature` has creature (GUID: 2563990) with non existing creature entry 60402, skipped.
-- ERROR:Table `creature` has creature (GUID: 2563989) with non existing creature entry 60402, skipped.
-- ERROR:Table `creature` has creature (GUID: 2563987) with non existing creature entry 60402, skipped.
-- ERROR:Table `creature` has creature (GUID: 2563988) with non existing creature entry 60402, skipped.
-- ERROR:Table `creature` has creature (GUID: 2563986) with non existing creature entry 60402, skipped.
-- ERROR:Table `creature` has creature (GUID: 2563985) with non existing creature entry 60402, skipped.

delete from creature where id = 60402;

-- ERROR:Table `creature` have creature (GUID: 2571661 Entry: 50677) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
-- ERROR:Table `creature` have creature (GUID: 2571660 Entry: 50676) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
-- ERROR:Table `creature` have creature (GUID: 2571659 Entry: 50672) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.
-- ERROR:Table `creature` have creature (GUID: 2571658 Entry: 50672) with `MovementType`=0 (idle) have `wander_distance`<>0, set to 0.

update creature set wander_distance = 0 where guid in (2571661, 2571660, 2571659, 2571658);

-- ERROR:Table 'creature_loot_template' entry 60719 item 60707: item entry not listed in `item_template` - skipped
-- ERROR:Table 'creature_loot_template' entry 60720 item 60707: item entry not listed in `item_template` - skipped
-- ERROR:Table 'creature_loot_template' entry 15305 item 835570: item entry not listed in `item_template` - skipped
-- ERROR:Table 'creature_loot_template' entry 60720 item 60707: item entry not listed in `item_template` - skipped
-- ERROR:Table 'creature_loot_template' entry 60719 item 60707: item entry not listed in `item_template` - skipped
-- ERROR:Table 'creature_loot_template' entry 60712 item 60707: item entry not listed in `item_template` - skipped

delete from creature_loot_template where item in (835570, 60707);

-- ERROR:Table 'creature_loot_template' entry 60544 isn't creature entry and not referenced from loot, and then useless.
-- ERROR:Table 'creature_loot_template' entry 60716 isn't creature entry and not referenced from loot, and then useless.
-- ERROR:Table 'creature_loot_template' entry 60830 isn't creature entry and not referenced from loot, and then useless.
-- ERROR:Table 'creature_loot_template' entry 60831 isn't creature entry and not referenced from loot, and then useless.

delete from creature_loot_template where entry in (60544, 60716, 60830, 60831);

-- 2022-07-15 20:02:47 ERROR:Script not found: item_illusion.

update item_template set script_name = '' where script_name = 'item_illusion';
