create table
	triplets (
    sentence_id integer,
    start_char integer,
    lenght integer
);

insert into triplets (sentence_id, start_char, lenght)
values
(14,98,4),
(114,3,5),
(618,72,9),
(630,7,3),
(932,12,5),
(2230,50,7),
(2346,44,10),
(3041,14,5);


create view message as
select substr(sentence, start_char, lenght) as "phrase" from triplets
join sentences on sentences.id = triplets.sentence_id;


