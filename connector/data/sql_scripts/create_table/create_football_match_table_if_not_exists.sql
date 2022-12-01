CREATE TABLE IF NOT EXISTS football_match
(
    id VARCHAR(110) PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    hour TIME,
    homeTeam VARCHAR(50) NOT NULL,
    awayTeam VARCHAR(50) NOT NULL,
    homeTeamScore TINYINT UNSIGNED NOT NULL,
    awayTeamScore TINYINT UNSIGNED NOT NULL,
    contest VARCHAR(100) NOT NULL,
    round VARCHAR(100) NOT NULL,
    gameweek TINYINT,
    grandstand VARCHAR(100) NOT NULL,
    attendance MEDIUMINT UNSIGNED,
    referee VARCHAR(50)
)
