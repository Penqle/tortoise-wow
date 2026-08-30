-- Move the Starbreeze Village Water Barrel slightly into the room so the
-- Nightelf2Story.wmo wall no longer blocks legitimate indoor interaction.
UPDATE `gameobject`
SET `position_y` = 446.778
WHERE `guid` = 49614 AND `id` = 3658;
