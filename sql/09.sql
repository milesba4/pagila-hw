/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT  first_name, last_name, sum(amount) FROM staff
join payment
using (staff_id) where payment_date >= '2020-01-01 00:00:00' and payment_date <= '2020-01-31 23:59:59' group by first_name, last_name;
