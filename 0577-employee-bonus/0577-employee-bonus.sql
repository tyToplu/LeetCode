# Write your MySQL query statement below
select name, bonus 
from
((select empId, name
 from Employee)
 as t1
 left JOIN 
 (select empId, bonus 
 from Bonus)
 as t2
 on t1.empId = t2.empId)
 where bonus < 1000 or bonus is null