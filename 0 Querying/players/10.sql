select
    "first_name" as "Player First Name",
    "last_name" as "Player Last Name",
    "debut" as "Debut Date"
from "players"
where "birth_country" = 'United Kingdom'
order by "debut" desc;

