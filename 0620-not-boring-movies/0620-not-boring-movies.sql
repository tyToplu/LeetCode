select  id, movie, description, rating
from
    (select id,movie,description,rating 
     from 
     Cinema 
     where (id % 2) <> 0) 
    as t1
where
    description != "boring"
ORDER BY t1.rating desc
