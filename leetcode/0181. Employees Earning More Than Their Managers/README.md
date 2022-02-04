# [181. Employees Earning More Than Their Managers (Easy)](https://leetcode.com/problems/employees-earning-more-than-their-managers/)

<a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a>

**Related Topics**:  
[Database](https://leetcode.com/tag/database/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/employees-earning-more-than-their-managers/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
# Write your MySQL query statement below
select e.Name as Employee
from Employee e, Employee m
where e.ManagerId is not NULL and
e.ManagerId = m.ID and e.Salary > m.Salary

```
