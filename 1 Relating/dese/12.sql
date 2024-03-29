select districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary from districts
join expenditures on expenditures.district_id = districts.id
join staff_evaluations on staff_evaluations.district_id = districts.id
where districts.type like 'Public School District' and per_pupil_expenditure >= (
  select avg(per_pupil_expenditure) from expenditures )
  and exemplary >= (
    select avg(exemplary) from staff_evaluations)
  order by exemplary desc, per_pupil_expenditure desc;
  