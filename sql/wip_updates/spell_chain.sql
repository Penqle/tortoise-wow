-- Ancient Brutality (Bear) ranks
REPLACE INTO spell_chain
(
    spell_id,
    prev_spell,
    first_spell,
    rank,
    req_spell
)
VALUES
(53216, 0, 53216, 1, 0),
(53217, 53216, 53216, 2, 0);