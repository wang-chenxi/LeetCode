# [894. All Possible Full Binary Trees (Medium)](https://leetcode.com/problems/all-possible-full-binary-trees/)

<p>Given an integer <code>n</code>, return <em>a list of all possible <strong>full binary trees</strong> with</em> <code>n</code> <em>nodes</em>. Each node of each tree in the answer must have <code>Node.val == 0</code>.</p>

<p>Each element of the answer is the root node of one possible tree. You may return the final list of trees in <strong>any order</strong>.</p>

<p>A <strong>full binary tree</strong> is a binary tree where each node has exactly <code>0</code> or <code>2</code> children.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/08/22/fivetrees.png" style="width: 700px; height: 400px;">
<pre><strong>Input:</strong> n = 7
<strong>Output:</strong> [[0,0,0,null,null,0,0,null,null,0,0],[0,0,0,null,null,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,null,null,null,null,0,0],[0,0,0,0,0,null,null,0,0]]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 3
<strong>Output:</strong> [[0,0,0]]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 20</code></li>
</ul>


**Related Topics**:  
[Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Tree](https://leetcode.com/tag/tree/), [Recursion](https://leetcode.com/tag/recursion/), [Memoization](https://leetcode.com/tag/memoization/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/all-possible-full-binary-trees/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {number} n
 * @return {TreeNode[]}
 */
var solve = function(n,dp) {
    if(n % 2 === 0) return dp[n] = []
    if(dp[n] !== -1) return dp[n]
    if(n === 1) return dp[n] = [new TreeNode(0)]
    let ans = []
    n = n - 1
    for(let ctr = 1 ; ctr < n ; ctr ++) {
        let left = solve(ctr,dp)
        let right= solve(n-ctr,dp)
        for(let row = 0 ; row < left.length ; row ++)
            for(let col = 0 ; col < right.length ; col ++) {
                const node = new TreeNode(0)
                node.left = left[row]
                node.right= right[col]
                ans.push(node)
            }
    }
    return dp[n] = ans
}
var allPossibleFBT = function(n) {
    let dp = new Array(n+1).fill(-1)
    return solve(n,dp);
};

```