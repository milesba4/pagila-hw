/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

/*
profit = find all customers, find all customers payments, goupby country, aggregate payments,order by country alphabetically 

payment, customer on customer_id

join result by address_id

join result by city_id

join result by country_id

aggregate

all inner join

SELECT country, sum(payment.amount) AS profit 
from country 
INNER JOIN city on city.country_id = country.country_id
INNER JOIN address on address.city_id = city.city_id
INNER JOIN customer on customer.customer.address_id = address.address_id
INNER JOIN rental on rental.customer_id = customer.customer_id
INNER JOIN payment on payment.rental_id = rental.rental_id
GROUPBY country
ORDER by country;
 */

SELECT country, sum(payment.amount) as profit
from country
JOIN city on city.country_id=country.country_id
JOIN address on address.city_id=city.city_id
JOIN customer on customer.address_id=address.address_id
JOIN rental on rental.customer_id=customer.customer_id 
JOIN payment on payment.rental_id=rental.rental_id
GROUP BY country
ORDER BY country;

