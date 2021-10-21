# [113. Path Sum II (Medium)](https://leetcode.com/problems/path-sum-ii/)

<p>Given the <code>root</code> of a binary tree and an integer <code>targetSum</code>, return <em>all <strong>root-to-leaf</strong> paths where the sum of the node values in the path equals </em><code>targetSum</code><em>. Each path should be returned as a list of the node <strong>values</strong>, not node references</em>.</p>

<p>A <strong>root-to-leaf</strong> path is a path starting from the root and ending at any leaf node. A <strong>leaf</strong> is a node with no children.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/01/18/pathsumii1.jpg" style="width: 500px; height: 356px;">
<pre><strong>Input:</strong> root = [5,4,8,11,null,13,4,7,2,null,null,5,1], targetSum = 22
<strong>Output:</strong> [[5,4,11,2],[5,8,4,5]]
<strong>Explanation:</strong> There are two paths whose sum equals targetSum:
5 + 4 + 11 + 2 = 22
5 + 8 + 4 + 5 = 22
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/01/18/pathsum2.jpg" style="width: 212px; height: 181px;">
<pre><strong>Input:</strong> root = [1,2,3], targetSum = 5
<strong>Output:</strong> []
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> root = [1,2], targetSum = 0
<strong>Output:</strong> []
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[0, 5000]</code>.</li>
	<li><code>-1000 &lt;= Node.val &lt;= 1000</code></li>
	<li><code>-1000 &lt;= targetSum &lt;= 1000</code></li>
</ul>

**Related Topics**:  
[Backtracking](https://leetcode.com/tag/backtracking/), [Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:

- [Path Sum (Easy)](https://leetcode.com/problems/path-sum/)
- [Binary Tree Paths (Easy)](https://leetcode.com/problems/binary-tree-paths/)
- [Path Sum III (Medium)](https://leetcode.com/problems/path-sum-iii/)
- [Path Sum IV (Medium)](https://leetcode.com/problems/path-sum-iv/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/path-sum-ii/
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
 * @param {TreeNode} root
 * @param {number} targetSum
 * @return {number[][]}
 */
var pathSum = function(root, targetSum, sum=0,pathes=[],path=[]) {
    if(!root)return pathes//=> pathes is the final output of the function
    sum += root.val
    path.push(root.val)
    if(root.left==null&&root.right==null){
        if (targetSum == sum){
            pathes.push([...path])//=> cannot use pathes.push(path)directly since it will use push the current elements
        }
        path.pop()//=> need to reset path everytime
        return pathes//=> pathes is the final output of the function
    }
    pathSum(root.left,targetSum,sum,pathes,path)// shouldn't return here
    pathSum(root.right,targetSum,sum,pathes,path)
    path.pop()//=> need to reset path everytime
    return pathes//=> pathes is the final output of the function
};

```