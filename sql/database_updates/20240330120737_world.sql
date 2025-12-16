
-- Make nobblegarden event start from 29 March and last until 11 April
UPDATE game_event SET `start_time` = '2020-03-29 20:00:00', `end_time` = '2030-03-29 22:59:59', `occurence` = '525600', `length` = '18720' WHERE (`entry` = '9');
