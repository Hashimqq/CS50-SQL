select "name" from districts where "id" = (
  select "district_id" from expenditures where "pupils" order by "pupils" limit 1);
