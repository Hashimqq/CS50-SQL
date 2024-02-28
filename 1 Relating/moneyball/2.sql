select year, salary from salaries
join players on players.id = salaries.player_id
where first_name = 'Cal' and last_name = 'Ripken'
order by year desc;
