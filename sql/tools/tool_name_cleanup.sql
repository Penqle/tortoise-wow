UPDATE tw_char.characters
JOIN tw_logon.account ON tw_char.characters.account = tw_logon.account.id
SET tw_char.characters.name = tw_char.characters.guid
WHERE tw_logon.account.last_login < '2020-09-01 00:00:00' -- Modify this.
AND tw_char.characters.level < 10;