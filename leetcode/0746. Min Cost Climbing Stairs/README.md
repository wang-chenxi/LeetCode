# [746. Min Cost Climbing Stairs (Easy)](https://leetcode.com/problems/min-cost-climbing-stairs/)

<p>You are given an integer array <code>cost</code> where <code>cost[i]</code> is the cost of <code>i<sup>th</sup></code> step on a staircase. Once you pay the cost, you can either climb one or two steps.</p>

<p>You can either start from the step with index <code>0</code>, or the step with index <code>1</code>.</p>

<p>Return <em>the minimum cost to reach the top of the floor</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> cost = [10,<u>15</u>,20]
<strong>Output:</strong> 15
<strong>Explanation:</strong> You will start at index 1.
- Pay 15 and climb two steps to reach the top.
The total cost is 15.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> cost = [<u>1</u>,100,<u>1</u>,1,<u>1</u>,100,<u>1</u>,<u>1</u>,100,<u>1</u>]
<strong>Output:</strong> 6
<strong>Explanation:</strong> You will start at index 0.
- Pay 1 and climb two steps to reach index 2.
- Pay 1 and climb two steps to reach index 4.
- Pay 1 and climb two steps to reach index 6.
- Pay 1 and climb one step to reach index 7.
- Pay 1 and climb two steps to reach index 9.
- Pay 1 and climb one step to reach the top.
The total cost is 6.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>2 &lt;= cost.length &lt;= 1000</code></li>
	<li><code>0 &lt;= cost[i] &lt;= 999</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

**Similar Questions**:

- [Climbing Stairs (Easy)](https://leetcode.com/problems/climbing-stairs/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/min-cost-climbing-stairs/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} cost
 * @return {number}
 */
// get rid of the dp array
var minCostClimbingStairs = function (cost) {
  let first = cost[0];
  let second = cost[1];
  for (let i = 2; i < cost.length; i++) {
    let cur = cost[i] + Math.min(first, second);
    first = second;
    second = cur;
  }
  return Math.min(first, second);
};
```
