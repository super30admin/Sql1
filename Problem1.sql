-- Filtering countries on population columns and having only name, population and area as output columns as required
-- Solved on Leetcode: Yes
-- Problems faced: None
select name, population, area 
from World 
where area >=  3000000 or population >= 25000000