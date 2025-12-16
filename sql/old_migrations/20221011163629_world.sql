UPDATE `item_template` SET `inventory_type` = 8 WHERE `entry` = 65023;
UPDATE `quest_template` SET `QuestLevel` = 14 WHERE `entry` = 80321;
UPDATE `quest_template` SET `QuestLevel` = 15 WHERE `entry` = 80322;
UPDATE `quest_template` SET `QuestLevel` = 15 WHERE `entry` = 80323;

REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (80311, 2, -161, 14, 0, 16, 0, 128, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mastering the Arcane', '<Ureda glances at you with dismay.>\n\nYour skills still require some honing, and your posture betrays your arrogance. Typical of any new apprentice who bears overconfidence before his own wits. Not that it matters to me. It\'s your own problem.\n\nAny aspiring mage should have his spells ready at all times and think two steps ahead. That\'s why your lack of awareness should be compensated with at least something you could procure by yourself.\n\nThere is a… “mage” who resides on the bank of Southfury River, not far from Thunder Ridge. The task you will receive from this mage might be arduous at first glance, yet it most likely will bear fruit if you put your brain into it.', 'Speak to Chok\'Garok on a bank of Southfury River in the Barrens.', 'Another one with thirst for knowledge? Good, good! I know what you need. I know what you want!\n\nYes, we know what you crave for!', 'Hrrm? Yes, what, huh?\n\nChok\'Garok. Yes, it\'s us! Yes, two heads!', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1607, 0, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET `Type` = 0 WHERE `entry` = 55031;

UPDATE `quest_template` SET `RequestItemsText` = 'You made it. I\'m so glad.\n\nMuch has happened over the last few years, $N: the creation of Teldrassil, the corruption of many of the forest creatures here and abroad, discovery of lands we thought lost to us like Feralas... so much, in so little time.\n\nBut those are just some of the reasons we are here, the most important being to protect our kind from further evil.' WHERE `entry` = 3116;

update item_template set name = 'Head of Nefarian (Horde)' where entry = 19002;
update item_template set name = 'Head of Nefarian (Alliance)' where entry = 19003;
update item_template set disenchant_id = 65 where entry = 21890;
delete from creature_template where entry = 5764;
delete from creature where id = 5764;
update spell_template set description = 'Unpack the MOLL-E so it can send and receive mail for 5 min.' where entry = 46001;
update creature_loot_template set chanceorquestchance = -20 where item = 11148;

/*
ERROR:Table `creature` have creature (GUID: 2571759 Entry: 91915) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571758 Entry: 91915) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571718 Entry: 91926) with `spawntimesecsmax` (25) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571762 Entry: 91915) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571769 Entry: 91912) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571767 Entry: 91912) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571766 Entry: 91912) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571763 Entry: 91915) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571760 Entry: 91912) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
ERROR:Table `creature` have creature (GUID: 2571761 Entry: 91912) with `spawntimesecsmax` (300) value lower than `spawntimesecsmin` (10800), it will be adjusted to 10800.
*/

update creature set spawntimesecsmax = 10800 where id = 91912;
update creature set spawntimesecsmax = 10800 where id = 91915;
update creature set spawntimesecsmax = 10800 where id = 91926;

/*
 ERROR:Table 'creature_loot_template' entry 60717 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84014: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60717 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84010: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60717 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84011: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60717 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84012: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60717 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84013: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60717 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60718 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60719 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60720 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60721 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60722 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60723 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60724 item 84015: wrong mincountOrRef (0) - skipped
 ERROR:Table 'creature_loot_template' entry 60725 item 84015: wrong mincountOrRef (0) - skipped
*/

update creature_loot_template set mincountOrRef = 1 where mincountOrRef = 0;

/*

 ERROR:Table `npc_trainer` have entry for nonexistent creature template (Entry: 1403), ignore
 ERROR:Table `npc_trainer` have entry for nonexistent creature template (Entry: 1403), ignore
 ERROR:Table `npc_trainer` have data for creature (Entry: 3689) without trainer flag, ignore

*/

delete from npc_trainer where entry in (3689, 1403);

/*

 ERROR:Creature (GUID: 2565495) does not exist but has a record in `creature_addon`
 ERROR:Creature (GUID: 2565497) does not exist but has a record in `creature_addon`
 ERROR:Creature (GUID: 2565498) does not exist but has a record in `creature_addon`
 ERROR:Creature (GUID: 2565499) does not exist but has a record in `creature_addon`
 ERROR:Creature (GUID: 2565500) does not exist but has a record in `creature_addon`
 ERROR:Creature (GUID: 2565501) does not exist but has a record in `creature_addon`

*/

delete from creature_addon where guid in (2565495, 2565497, 2565498, 2565499, 2565500, 2565501);
