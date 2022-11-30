DECLARE @autoId VARCHAR(110)

SET @autoId = CONCAT('${date}', '-', '${homeTeam}', '-', '${awayTeam}')

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
    @autoId,
    ${date},
    ${hour},
    ${homeTeam},
    ${awayTeam},
    ${homeTeamScore},
    ${awayTeamScore},
    ${attendance},
    ${refere},
)
