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
    %(id)s,
    %(date)s,
    %(hour)s,
    %(homeTeam)s,
    %(awayTeam)s,
    %(homeTeamScore)s,
    %(awayTeamScore)s,
    %(attendance)s,
    %(referee)s
);
