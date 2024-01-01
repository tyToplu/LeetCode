# Write your MySQL query statement below
select name
from Employee   
where id IN 
    (
    select managerId
    From Employee
        Group by managerId
    having count(id) >= 5 
    )