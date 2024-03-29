# [690. Employee Importance (Easy)](https://leetcode.com/problems/employee-importance/)

<p>You have a data structure of employee information, which includes the employee's unique ID, their importance value, and their direct subordinates' IDs.</p>

<p>You are given an array of employees <code>employees</code> where:</p>

<ul>
	<li><code>employees[i].id</code> is the ID of the <code>i<sup>th</sup></code> employee.</li>
	<li><code>employees[i].importance</code> is the importance value of the <code>i<sup>th</sup></code> employee.</li>
	<li><code>employees[i].subordinates</code> is a list of the IDs of the direct subordinates of the <code>i<sup>th</sup></code> employee.</li>
</ul>

<p>Given an integer <code>id</code> that represents the ID of an employee, return <em>the <strong>total</strong> importance value of this employee and all their direct subordinates</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/05/31/emp1-tree.jpg" style="width: 400px; height: 258px;">
<pre><strong>Input:</strong> employees = [[1,5,[2,3]],[2,3,[]],[3,3,[]]], id = 1
<strong>Output:</strong> 11
<strong>Explanation:</strong> Employee 1 has an importance value of 5 and has two direct subordinates: employee 2 and employee 3.
They both have an importance value of 3.
Thus, the total importance value of employee 1 is 5 + 3 + 3 = 11.
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/05/31/emp2-tree.jpg" style="width: 362px; height: 361px;">
<pre><strong>Input:</strong> employees = [[1,2,[5]],[5,-3,[]]], id = 5
<strong>Output:</strong> -3
<strong>Explanation:</strong> Employee 5 has an importance value of -3 and has no direct subordinates.
Thus, the total importance value of employee 5 is -3.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= employees.length &lt;= 2000</code></li>
	<li><code>1 &lt;= employees[i].id &lt;= 2000</code></li>
	<li>All <code>employees[i].id</code> are <strong>unique</strong>.</li>
	<li><code>-100 &lt;= employees[i].importance &lt;= 100</code></li>
	<li>One employee has at most one direct leader and may have several subordinates.</li>
	<li>The IDs in <code>employees[i].subordinates</code> are valid IDs.</li>
</ul>

**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/)

**Similar Questions**:

- [Nested List Weight Sum (Medium)](https://leetcode.com/problems/nested-list-weight-sum/)

## Testcases

[[1,5,[2,3]],[2,3,[]],[3,3,[]]]
1
[[1,2,[5]],[5,-3,[]]]
5

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/employee-importance/
// Author: github.com/wang-chenxi
// Time: O(n)
// Space: O()
/**
 * Definition for Employee.
 * function Employee(id, importance, subordinates) {
 *     this.id = id;
 *     this.importance = importance;
 *     this.subordinates = subordinates;
 * }
 */
/**
 * @param {Employee[]} employees
 * @param {number} id
 * @return {number}
 */
var GetImportance = function(employees, id) {
    var map = new Map();

    for(var i = 0;i<employees.length;i++){
        map.set(employees[i].id,employees[i])
    }
    var employee=[map.get(id)]
    var total = 0
    while(employee.length>0){
            total += employee[0].importance;
            employee[0].subordinates.forEach(sub => {
                employee.push(map.get(sub))
            })
        employee.shift()
        }
        return total
    }

```
