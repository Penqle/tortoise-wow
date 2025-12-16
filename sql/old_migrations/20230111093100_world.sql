-- Set Hunter Class quest for UD to Hunter only
UPDATE quest_template SET RequiredClasses = 4 WHERE entry in (40248, 40249, 40250, 40262); 
