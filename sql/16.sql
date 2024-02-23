/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT film.title, sum(payment.amount) as profit from payment JOIN rental using(rental_id) join inventory using(inventory_id) join film using(film_id) group by film.title order by profit desc;

