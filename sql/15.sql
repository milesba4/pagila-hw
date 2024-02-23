/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, count(film_id) as sum from category JOIN film_category using (category_id) join film using (film_id) join language using (language_id) where language.name ilike 'Engl%' group by category.name order by name;
