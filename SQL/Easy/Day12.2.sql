-- link: https://leetcode.com/problems/employee-bonus/solutions/3948430/very-easy-solution-left-join/

-- solution:

select E.name, B.bonus
from Employee E left join Bonus B
on E.empId = B.empId 
where B.bonus < 1000 or 
B.bonus is null