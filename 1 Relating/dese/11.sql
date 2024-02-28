select schools.name , per_pupil_expenditure, graduated from districts
join expenditures on districts.id = expenditures.district_id
join schools on schools.district_id = districts.id
join graduation_rates on schools.id = graduation_rates.school_id
order by per_pupil_expenditure desc , schools.name;
