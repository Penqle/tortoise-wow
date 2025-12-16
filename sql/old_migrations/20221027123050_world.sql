-- Increase XP from the final bosses.
UPDATE `creature_template` SET `xp_multiplier`=30 WHERE `entry` IN (11946, 11948);

-- Increase XP from the captains and korrak.
UPDATE `creature_template` SET `xp_multiplier`=20 WHERE `entry` IN (11947, 11949, 12159);

-- Increase XP from marshals and warmasters.
UPDATE `creature_template` SET `xp_multiplier`=10 WHERE `entry` IN (14762, 14763, 14764, 14765, 14766, 14767, 14768, 14769);
UPDATE `creature_template` SET `xp_multiplier`=10 WHERE `entry` IN (14770, 14771, 14772, 14773, 14774, 14775, 14776, 14777);

-- Increase XP from the commanders.
UPDATE `creature_template` SET `xp_multiplier`=5 WHERE `entry` IN (13319, 13318, 13139, 13320);
UPDATE `creature_template` SET `xp_multiplier`=5 WHERE `entry` IN (13140, 13154, 13152, 13153);

-- Increase XP from the mine bosses.
UPDATE `creature_template` SET `xp_multiplier`=3 WHERE `entry` IN (11657, 13078, 13079);
UPDATE `creature_template` SET `xp_multiplier`=3 WHERE `entry` IN (11677, 13086, 13088);

-- Add more rep and XP to Empty Stables (Horde).
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (7001, 2, 2597, 51, 60, 60, 41, 0, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 17626, 1, 0, 'Empty Stables', 'The war in the valley has taken its toll on our soldiers. We must revitalize our forces!$B$BIf we can fill up the stables, the Wolf Riders will once more be able to ride out into the field of battle.$B$BTake this muzzle and track down the frostwolves that inhabit the nearby forest. Once you find a wolf, use the muzzle to tame the beast. Bring the tamed beast back to me so that I may place it in the stable.$B$BWhen we have enough wolves stabled, the Wolf Riders will rejoin their patrol on our front lines.', 'Locate a Frostwolf in Alterac Valley. Use the Frostwolf Muzzle when you are near the Frostwolf to \'tame\' the beast. Once tamed, the Frostwolf will follow you back to the Frostwolf Stable Master. Speak with the Frostwolf Stable Master to earn credit for the capture.', 'I can only hope that those charged with collecting ram hides are as determined as you, $N.$B$BAt this rate, we will have the stables full in a matter of hours!', 'Without your help, the Frostwolf Wolf Riders would not have mounts to ride into battle. You do us a great service!', 'Frostwolf Muzzled and Returned', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 729, 76, 0, 0, 0, 10, 10, 0, 0, 0, 1650, 0, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0);
-- Add more rep and XP to Empty Stables (Alliance).
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (7027, 2, 2597, 51, 60, 60, 41, 0, 589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 17689, 1, 0, 'Empty Stables', 'Just look at the stables, $N! Empty! The Stormpike Brigade has no rams to ride - the cavalry is defunct.$B$BYou must help us, soldier. Take this training collar and enter the wilds of this valley. Locate the Alterac rams that roam throughout the area and use the collar to snare one. When you have captured a ram, return it to me and I shall place it in our stable.$B$BWhen we have enough rams, the ram rider commander will be notifed. With your help, the cavalry will be reborn!', 'Locate an Alterac Ram in Alterac Valley. Use the Stormpike Training Collar when you are near the Alterac Ram to \'tame\' the beast. Once tamed, the Alterac Ram will follow you back to the Stable Master. Speak with the Stable Master to earn credit for the capture.\r\n', 'The stables will be full in no time at all. Keep up the good work!', 'Without your help, the Stormpike Ram Riders would not have mounts to ride into battle. You do us a great service!', 'Ram Collared and Returned', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 730, 47, 0, 0, 0, 10, 10, 0, 0, 0, 1650, 0, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0);

-- Add more rep and XP to Ram Riding Harnesses (Alliance).
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=20, `RewXP`=3300, `RewMoneyMaxLevel`=1980 WHERE `entry`=7026;
-- Add more rep and XP to Ram Hide Harnesses (Horrde).
UPDATE `quest_template` SET `RewRepFaction1`=729, `RewRepValue1`=20, `RewXP`=3300, `RewMoneyMaxLevel`=1980 WHERE `entry`=7002;

-- Add missing silver to Irondeep Supplies (Alliance).
UPDATE `quest_template` SET `RewOrReqMoney`=4000 WHERE `entry`=5892;
-- Add missing silver to Irondeep Supplies (Horde).
UPDATE `quest_template` SET `RewOrReqMoney`=8500 WHERE `entry`=6985;
-- Add missing silver to Coldtooth Supplies (Alliance).
UPDATE `quest_template` SET `RewOrReqMoney`=8500 WHERE `entry`=6982;
-- Add missing silver to Coldtooth Supplies (Horde).
UPDATE `quest_template` SET `RewOrReqMoney`=4000 WHERE `entry`=5893;

-- Increase rewards from More Armor Scraps (Alliance).
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepFaction2`=730, `RewRepValue1`=10, `RewRepValue2`=10, `RewXP`=1650, `RewMoneyMaxLevel`=990 WHERE `entry`=6781;
-- Increase rewards from More Booty! (Horde).
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=729, `RewRepValue1`=10, `RewRepValue2`=10, `RewXP`=1650, `RewMoneyMaxLevel`=990 WHERE `entry`=6741;
-- Armor Scraps (Alliance) should give 100 rep.
UPDATE `quest_template` SET `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`=7223;
-- Enemy Booty (Horde) should give 100 rep.
UPDATE `quest_template` SET `RewRepValue1`=100, `RewRepValue2`=100 WHERE `entry`=7224;

-- Add XP to Ivus the Forest Lord (Alliance).
UPDATE `quest_template` SET `RewXP`=500 WHERE `entry`=6881;
-- Add XP to Lokholar the Ice Lord (Horde).
UPDATE `quest_template` SET `RewXP`=500 WHERE `entry`=6801;

-- A Gallon of Blood (Horde) should give 50 Orgrimmar rep.
UPDATE `quest_template` SET `RewRepValue2`=50, `RewXP`=2500 WHERE `entry`=7385;
-- Crystal Cluster (Alliance) should give 50 Irongorge rep.
UPDATE `quest_template` SET `RewRepValue1`=50, `RewXP`=2500 WHERE `entry`=7386;
