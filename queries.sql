-- write your queries here
--1: Join the two tables so that every column and record appears, regardless of if there is not an owner_id. 
--Your output should look like this:--
 
SELECT * FROM owners FULL JOIN vehicles on owners.id = vehicles.owner_id;


--2: Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. 
--The first_name should be ordered in ascending order. Your output should look like this:--

SELECT first_name, last_name, COUNT(owners.id) FROM owners JOIN vehicles ON owners.id=vehicles.
owner_id GROUP BY owners.id ORDER BY first_name;

--3: Count the number of cars for each owner and display the average price for each of the cars as integers. 
--Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. 
--Only display results with more than one vehicle and an average price greater than 10000. Your output should look like this:--
 
 SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owners.id) FROM owners JOIN vehicles ON owners.id=vehicles.
owner_id GROUP BY owners.id HAVING AVG(price)>10000 ORDER BY first_name desc;