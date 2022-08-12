# [64. Minimum Path Sum (Medium)](https://leetcode.com/problems/minimum-path-sum/)

<p>Given a <code>m x n</code> <code>grid</code> filled with non-negative numbers, find a path from top left to bottom right, which minimizes the sum of all numbers along its path.</p>

<p><strong>Note:</strong> You can only move either down or right at any point in time.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/11/05/minpath.jpg" style="width: 242px; height: 242px;">
<pre><strong>Input:</strong> grid = [[1,3,1],[1,5,1],[4,2,1]]
<strong>Output:</strong> 7
<strong>Explanation:</strong> Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> grid = [[1,2,3],[4,5,6]]
<strong>Output:</strong> 12
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>m == grid.length</code></li>
	<li><code>n == grid[i].length</code></li>
	<li><code>1 &lt;= m, n &lt;= 200</code></li>
	<li><code>0 &lt;= grid[i][j] &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Matrix](https://leetcode.com/tag/matrix/)

**Similar Questions**:
* [Unique Paths (Medium)](https://leetcode.com/problems/unique-paths/)
* [Dungeon Game (Hard)](https://leetcode.com/problems/dungeon-game/)
* [Cherry Pickup (Hard)](https://leetcode.com/problems/cherry-pickup/)
* [Minimum Path Cost in a Grid (Medium)](https://leetcode.com/problems/minimum-path-cost-in-a-grid/)
* [Maximum Number of Points with Cost (Medium)](https://leetcode.com/problems/maximum-number-of-points-with-cost/)
* [Minimum Cost Homecoming of a Robot in a Grid (Medium)](https://leetcode.com/problems/minimum-cost-homecoming-of-a-robot-in-a-grid/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/minimum-path-sum/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[][]} grid
 * @return {number}
 */
var minPathSum = function(grid) {
    var h = grid.length
    var w = grid[0].length
    var i =0,j=0;
    for(var i = 0;i<h;i++){
        for(var j = 0;j<w;j++){
        if(i==0&&j==0){
            grid[i][j]=grid[i][j]
        }else if(i==0){
            grid[i][j]+=grid[i][j-1]
        }else if(j==0){
            grid[i][j]+=grid[i-1][j]
        }else{
            grid[i][j]+=Math.min(grid[i-1][j],grid[i][j-1])
        }
        }
    }
    return grid[h-1][w-1]
};

```