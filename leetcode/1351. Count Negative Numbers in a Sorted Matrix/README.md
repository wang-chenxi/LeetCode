# [1351. Count Negative Numbers in a Sorted Matrix (Easy)](https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/)

<p>Given a <code>m x n</code> matrix <code>grid</code> which is sorted in non-increasing order both row-wise and column-wise, return <em>the number of <strong>negative</strong> numbers in</em> <code>grid</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
<strong>Output:</strong> 8
<strong>Explanation:</strong> There are 8 negatives number in the matrix.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> grid = [[3,2],[1,0]]
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>m == grid.length</code></li>
	<li><code>n == grid[i].length</code></li>
	<li><code>1 &lt;= m, n &lt;= 100</code></li>
	<li><code>-100 &lt;= grid[i][j] &lt;= 100</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you find an <code>O(n + m)</code> solution?

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Binary Search](https://leetcode.com/tag/binary-search/), [Matrix](https://leetcode.com/tag/matrix/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[][]} grid
 * @return {number}
 */
var countNegatives = function (grid) {
  var count = 0;
  var m = grid.length - 1;
  var n = grid[0].length - 1;
  while (m >= 0 && n >= 0 && grid[m][n] < 0) {
    for (let i = n; i >= 0; i--) {
      console.log(grid[m][i], m, i);
      if (grid[m][i] < 0) {
        count++;
      } else {
        break;
      }
    }
    m--;
  }
  return count;
};
```
