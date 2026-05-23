SELECT   
    z.entry AS resolved_zone,  
    z.name AS zone_name,  
    z.map_id,  
    g.id AS graveyard_id,  
    g.faction,  
    CASE g.faction  
        WHEN 0 THEN 'Neutral'  
        WHEN 67 THEN 'Horde'  
        WHEN 469 THEN 'Alliance'  
        ELSE 'Unknown'  
    END AS faction_name  
FROM area_template z  
LEFT JOIN game_graveyard_zone g ON g.ghost_zone = z.entry  
WHERE z.zone_id = 0  
ORDER BY z.entry, g.id;