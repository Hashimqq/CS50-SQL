
select HR , year from performances
join players on players.id = performances.player_id
where first_name = 'Ken' and last_name = 'Griffey' and birth_year = 1969
order by year desc;
