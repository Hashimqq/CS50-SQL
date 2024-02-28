select name from players
join performances on performances.player_id = players.id
join teams on teams.id = performances.team_id
where first_name like 'Satchel'
group by team_id;

