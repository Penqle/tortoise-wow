-- Mark all quests in Seasonal category as yearly reset.
UPDATE `quest_template` SET `SpecialFlags`=(`SpecialFlags` | 256) WHERE `ZoneOrSort`=-22;
