select first_name, last_name, salary / H as "dollars per hit" from players
join performances on performances.player_id = players.id
join salaries on salaries.player_id = players.id and performances.year = salaries.year
where performances.year = 2001 and H > 0
order by "dollars per hit" , first_name , last_name
limit 10;
