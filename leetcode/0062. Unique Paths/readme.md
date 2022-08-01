# [62. Unique Paths (Medium)](https://leetcode.com/problems/unique-paths/)

<p>There is a robot on an <code>m x n</code> grid. The robot is initially located at the <strong>top-left corner</strong> (i.e., <code>grid[0][0]</code>). The robot tries to move to the <strong>bottom-right corner</strong> (i.e., <code>grid[m - 1][n - 1]</code>). The robot can only move either down or right at any point in time.</p>

<p>Given the two integers <code>m</code> and <code>n</code>, return <em>the number of possible unique paths that the robot can take to reach the bottom-right corner</em>.</p>

<p>The test cases are generated so that the answer will be less than or equal to <code>2 * 10<sup>9</sup></code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img src="https://assets.leetcode.com/uploads/2018/10/22/robot_maze.png" style="width: 400px; height: 183px;">
<pre><strong>Input:</strong> m = 3, n = 7
<strong>Output:</strong> 28
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> m = 3, n = 2
<strong>Output:</strong> 3
<strong>Explanation:</strong> From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
1. Right -&gt; Down -&gt; Down
2. Down -&gt; Down -&gt; Right
3. Down -&gt; Right -&gt; Down
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= m, n &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Math](https://leetcode.com/tag/math/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Combinatorics](https://leetcode.com/tag/combinatorics/)

**Similar Questions**:
* [Unique Paths II (Medium)](https://leetcode.com/problems/unique-paths-ii/)
* [Minimum Path Sum (Medium)](https://leetcode.com/problems/minimum-path-sum/)
* [Dungeon Game (Hard)](https://leetcode.com/problems/dungeon-game/)
* [Minimum Path Cost in a Grid (Medium)](https://leetcode.com/problems/minimum-path-cost-in-a-grid/)
* [Minimum Cost Homecoming of a Robot in a Grid (Medium)](https://leetcode.com/problems/minimum-cost-homecoming-of-a-robot-in-a-grid/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/unique-paths/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} m
 * @param {number} n
 * @return {number}
 */
var uniquePaths = function(m, n) {
    var ans = 0;
    var queue = []
    queue.push([0,0])
    var checkRoute= function([a,b]){
        if(a==m-1||b==n-1){
            ans++
            return
        }
        else{
            queue.push([a+1,b])
            queue.push([a,b+1])
        }
    }
    while(queue.length>0){
        var cur = queue.shift()
        checkRoute(cur)
    }
    return ans
};

```


### Solution 2 Dynamic Programming

```js

// OJ: https://leetcode.com/problems/unique-paths/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} m
 * @param {number} n
 * @return {number}
 */
const uniquePaths = (m, n) => {
    const dp = new Array(m + 1).fill(0);
    for(let i = 0; i < dp.length; i++) {
        dp[i] = new Array(n + 1).fill(1);
    }
    dp[m][n] = 1;
    for(let row = m - 1; row > 0; row--){
        for(let col = n - 1; col > 0; col--){
            dp[row][col] = dp[row + 1][col] + dp[row][col + 1];
        }
    }
    return dp[1][1];
};

```