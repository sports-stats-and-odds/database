INSERT INTO football_match
(
    id,
    date,
    hour,
    homeTeam,
    awayTeam,
    homeTeamScore,
    awayTeamScore,
    attendance,
    referee
)

VALUES (
    ${date}-${homeTeam}-${awayTeam}
    ${date},
    ${hour},
    ${homeTeam},
    ${awayTeam},
    ${homeTeamScore},
    ${awayTeamScore},
    ${attendance},
    ${refere},
)
