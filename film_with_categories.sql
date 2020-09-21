SELECT a.film_id, 
       a.title, 
       d.category_id, 
       d.NAME 
FROM   sakila.film a 
       LEFT JOIN (SELECT b.category_id, 
                         b.NAME, 
                         c.film_id 
                  FROM   sakila.category b 
                         LEFT JOIN sakila.film_category c 
                                ON b.category_id = c.category_id) d 
              ON a.film_id = d.film_id; 