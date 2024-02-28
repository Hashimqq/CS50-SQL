select "japanese_title" as "Title in Japanese"
from views
where "artist" = 'Hokusai'
order by "japanese_title" ,"average_color";
