# Challenge 1:
  # A customer forgot their wallet at the store! We need to track down their email to inform them.
  # What is the customer, Nancy Thomas's email?
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

# Challenge 2:
  # A customer wants to know what the movie, "Outlaw Hanky," is about.
  # Can we provide them with a description of that movie?
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

# Challenge 3:
  # A customer is late on their movie return, and we've mailed them a letter to their address, "259 Ipoh Drive."
  # We should also reach out with a phone call.
  # Find this customer's phone number.
SELECT phone FROM address
WHERE address = '259 Ipoh Drive'

# Challenge 4:
  # What were the 10 most recent purchases (where there are actual monetary transactions)?
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 10;

# Challenge 5:
  # We want to send out a reward to our first 10 paying customers!
  # What are the customer IDs of these 10 people?
SELECT customer_id FROM payment
WHERE amount != 0.00
ORDER BY payment_date ASC
LIMIT 10;

# Challenge 6:
  # A customer wants help finding a movie that they can watch quickly over their lunch break.
  # Help them find 5 options of the shortest films (runtime) that we have in our inventory.
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

# Challenge 6(b):
  # Suppose the same customer can actually afford to watch *any* movie that is 50 minutes or less in run time.
  # How many options does she have?
SELECT COUNT(*) FROM film
WHERE length <= 50;

# Challenge 7:
  # How many payment transactions were greater than $5.00
SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

# Challenge 8:
  # How many actors in our library have a first name that starts with the letter 'P?'
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

# Challenge 9:
  # How many unique districts are our customers from?
SELECT COUNT(DISTINCT(district)) FROM address;

# Challenge 9(b):
  # Retrieve the list of names of each of those distinct districts.
SELECT DISTINCT(district) FROM address
ORDER BY district;
    # ^I just wanted to order the list :)

# Challenge 10:
  # How many films are rated R and have a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;

# Challenge 11:
  # How many films have the word, "Truman," somewhere in the title?
SELECT COUNT(*) FROM film
WHERE title ILIKE '%Truman%';
