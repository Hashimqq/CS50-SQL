select salary from performances
join players on players.id =performances.player_id
join salaries on salaries.player_id = players.id
where salaries.year = 2001
order by HR desc
limit 1;
