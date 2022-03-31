# [175. Combine Two Tables (Easy)](https://leetcode.com/problems/combine-two-tables/)

<a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a>

**Related Topics**:  
[Database](https://leetcode.com/tag/database/)

**Similar Questions**:

- [Employee Bonus (Easy)](https://leetcode.com/problems/employee-bonus/)

## Solution 1.

```SQL

# OJ: https://leetcode.com/problems/combine-two-tables/
# Author: github.com/wang-chenxi
# Time: O()
# Space: O()
# Write your MySQL query statement below
SELECT Person.FirstName, Person.LastName, Address.City, Address.State from Person LEFT JOIN Address on Person.PersonId = Address.PersonId;

```
