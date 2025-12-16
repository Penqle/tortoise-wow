-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2217
update quest_template set requiredraces = 0 where entry = 512;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2212
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (340, 'Horde Conscription Registration\n\nThis person has demonstrated incredible feats of strength and skill in the name of the Horde.\n\nThey should immediately be assigned to work in the Crossroads.\n\nRespectfully yours,\n- Takrin Pathseeker', 0);
REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (341, 'Horde Conscription Registration\n\nThis person has demonstrated incredible feats of strength and skill in the name of the Horde.\n\nThey should immediately be assigned to work in the Crossroads.\n\nRespectfully yours,\n- Takrin Pathseeker\n\nLooks good to me.\n- Kargal Battlescar', 0);

-- Herb nodes from Sparkwater:
update gameobject set position_x = 836.8, position_y = -4847.6, position_z = 37.5 where guid = 1314;
