INSERT INTO football_match
(
    id,
    date,
    hour,
    homeTeam,
    awayTeam,
    homeTeamScore,
    awayTeamScore,
    contest,
    round,
    gameweek,
    grandstand,
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
    %(contest)s,
    %(round)s,
    %(gameweek)s,
    %(grandstand)s,
    %(attendance)s,
    %(referee)s
);
