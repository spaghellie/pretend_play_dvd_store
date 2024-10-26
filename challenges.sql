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
