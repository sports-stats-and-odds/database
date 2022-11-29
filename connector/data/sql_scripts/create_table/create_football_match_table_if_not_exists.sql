CREATE TABLE IF NOT EXISTS football_match
(
    date DATE NOT NULL,
    hour TIME,
    homeTeam VARCHAR(50) NOT NULL,
    awayTeam VARCHAR(50) NOT NULL,
    homeTeamScore TINYINT UNSIGNED NOT NULL,
    awayTeamScore TINYINT UNSIGNED NOT NULL,
    attendance MEDIUMINT UNSIGNED,
    referee VARCHAR(50)
)
