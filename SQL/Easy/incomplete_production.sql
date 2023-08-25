-- link: https://datalemur.com/questions/tesla-unfinished-parts

-- solution:

select part, assembly_step
from parts_assembly
where finish_date is NULL;