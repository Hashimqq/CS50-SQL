select first_name ,last_name  from players
join salaries on salaries.player_id = players.id
order by salary desc limit 1;
