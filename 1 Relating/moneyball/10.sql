

select salary, first_name, last_name, HR, performances.year from performances
join players on players.id = performances.player_id
join salaries on salaries.player_id = players.id and performances.year = salaries.year
order by players.id ,salaries.year desc , HR desc, salary desc;


