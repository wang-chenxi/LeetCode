# [77. Combinations (Medium)](https://leetcode.com/problems/combinations/)

<p>Given two integers <code>n</code> and <code>k</code>, return <em>all possible combinations of</em> <code>k</code> <em>numbers out of the range</em> <code>[1, n]</code>.</p>

<p>You may return the answer in <strong>any order</strong>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 4, k = 2
<strong>Output:</strong>
[
  [2,4],
  [3,4],
  [2,3],
  [1,2],
  [1,3],
  [1,4],
]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 1, k = 1
<strong>Output:</strong> [[1]]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 20</code></li>
	<li><code>1 &lt;= k &lt;= n</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Backtracking](https://leetcode.com/tag/backtracking/)

**Similar Questions**:

- [Combination Sum (Medium)](https://leetcode.com/problems/combination-sum/)
- [Permutations (Medium)](https://leetcode.com/problems/permutations/)

## Solution 1.

```JS

//backtracking

// OJ: https://leetcode.com/problems/combinations/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @param {number} k
 * @return {number[][]}
 */
var combine = function(n, k) {
    let ans = []
    function backtrack(start = 1, path = []){
        if(path.length == k){
            ans.push(Array.from(path));
        }else {
            for(let i=start; i<=n; i++){
                path.push(i);
                backtrack(i + 1, path);
                path.pop();
            }
        }
    }
    backtrack();
    return ans
};

```
