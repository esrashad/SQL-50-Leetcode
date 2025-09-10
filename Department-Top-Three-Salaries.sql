-- Write your PostgreSQL query statement below
/* Write your T-SQL query statement below */
with ranktable as (
    select d.name as Department,
        dense_rank() over(partition by d.name order by e.salary desc) as dr,
        e.name as Employee ,
        e.salary as Salary
    from Employee e
    left join Department d
    on d.id=e.departmentId
)
select Department,
       Employee,
       Salary
from ranktable
where dr<=3