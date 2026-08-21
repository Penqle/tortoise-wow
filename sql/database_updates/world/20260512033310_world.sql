-- ==============================================
-- FILE: factions.sql
-- GENERATED: 20260512033310
-- ==============================================
INSERT INTO `faction`
(
    `id`,
    `reputation_list_id`,
    `base_rep_race_mask1`,
    `base_rep_race_mask2`,
    `base_rep_race_mask3`,
    `base_rep_race_mask4`,
    `base_rep_class_mask1`,
    `base_rep_class_mask2`,
    `base_rep_class_mask3`,
    `base_rep_class_mask4`,
    `base_rep_value1`,
    `base_rep_value2`,
    `base_rep_value3`,
    `base_rep_value4`,
    `reputation_flags1`,
    `reputation_flags2`,
    `reputation_flags3`,
    `reputation_flags4`,
    `team`,
    `name1`,
    `name2`,
    `name3`,
    `name4`,
    `name5`,
    `name6`,
    `name7`,
    `name8`,
    `description1`,
    `description2`,
    `description3`,
    `description4`,
    `description5`,
    `description6`,
    `description7`,
    `description8`
)
VALUES
(10, 58, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 'Draenei Exiles', '', '', '', '', '', '', '', 'The Draenei Tribes from Outland that have survived the rigors of warp travel and now call Azeroth their new home.', '', '', '', '', '', '', ''),
(1014, 61, 434, 589, 0, 0, 64, 0, 0, 0, 1000, -42000, 0, 0, 16, 2, 0, 0, 0, 'Earthen Ring', '', '', '', '', '', '', '', 'A group of shamans, united in their quest for elemental balance, has made their home in the serene Stonetalon Mountains.', '', '', '', '', '', '', '');

-- ==============================================
-- FILE: faction_template.sql
-- GENERATED: 20260512033310
-- ==============================================
INSERT INTO `faction_template`
(
    `id`,
    `faction_id`,
    `faction_flags`,
    `our_mask`,
    `friendly_mask`,
    `hostile_mask`,
    `enemy_faction1`,
    `enemy_faction2`,
    `enemy_faction3`,
    `enemy_faction4`,
    `friend_faction1`,
    `friend_faction2`,
    `friend_faction3`,
    `friend_faction4`
)
VALUES
(160, 10, 73, 0, 0, 8, 45, 0, 0, 0, 10, 0, 0, 0),
(1698, 1014, 33, 5, 4, 10, 0, 0, 0, 0, 1014, 0, 0, 0);

