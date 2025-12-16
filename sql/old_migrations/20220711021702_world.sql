-- fix some grammar
UPDATE quest_template SET Title = REPLACE(Title, 'Sylvannas', 'Sylvanas'), Details = REPLACE(Details, 'Sylvannas', 'Sylvanas'), Objectives = REPLACE(Objectives, 'Sylvannas', 'Sylvanas')  WHERE Title LIKE '%Sylvannas%' OR Details LIKE '%Sylvannas%' OR Objectives LIKE '%Sylvannas%';


