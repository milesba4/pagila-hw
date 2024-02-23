/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film_id, film.title, count(film_id) FROM inventory
JOIN film
using (film_id)
where film.title ilike 'h%'
group by film.title, film_id
order by film.title desc;
