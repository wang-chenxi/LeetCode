# [1407. Top Travellers (Easy)](https://leetcode.com/problems/top-travellers/)

<a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a>

**Related Topics**:  
[Database](https://leetcode.com/tag/database/)

## Solution 1.

```sql

// OJ: https://leetcode.com/problems/top-travellers/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
# Write your MySQL query statement below
select Users.name as name, 
ifnull(sum(Rides.distance),0) as 'travelled_distance' 
from Users
left join Rides
on Users.id = Rides.user_id  
group by Users.id
order by sum(Rides.distance) desc, name

```