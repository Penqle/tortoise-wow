-- Durotar Labor Union reputation has been deleted from quest Broken Cliff Inspection. https://turtle-wow.org/bug-report?id=6976
update quest_template set RewRepFaction1 = 0, RewRepValue1 = 0 where entry = 41209;
-- Increased armor for few NPCs. https://turtle-wow.org/bug-report?id=6980
update creature_template set armor = 695 where entry = 3385;
update creature_template set armor = 695 where entry = 3386;
update creature_template set armor = 695 where entry = 1870;
update creature_template set armor = 695 where entry = 91735;
update creature_template set armor = 393 where entry = 11917;
update creature_template set armor = 731 where entry = 3386;
update creature_template set armor = 731 where entry = 6492;
update creature_template set armor = 731 where entry = 4795;
update creature_template set armor = 731 where entry = 5780;
update creature_template set armor = 731 where entry = 11915;