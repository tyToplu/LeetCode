# Write your MySQL query statement below
SELECT firstName, LastName ,city, state
FROM Person left JOIN Address 
ON Address.personId =  Person.personId