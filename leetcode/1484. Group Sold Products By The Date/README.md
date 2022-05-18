# [1484. Group Sold Products By The Date (Easy)](https://leetcode.com/problems/group-sold-products-by-the-date/)

<a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a>

**Related Topics**:  
[Database](https://leetcode.com/tag/database/)

**Similar Questions**:
* [Finding the Topic of Each Post (Hard)](https://leetcode.com/problems/finding-the-topic-of-each-post/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/group-sold-products-by-the-date/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
# Write your MySQL query statement below
select sell_date, count(distinct(product)) as num_sold, group_concat(distinct product order by product ) as products
from Activities 
group by sell_date
order by sell_date asc

```