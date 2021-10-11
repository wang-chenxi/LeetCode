# [543. Diameter of Binary Tree (Easy)](https://leetcode.com/problems/diameter-of-binary-tree/)

<p>Given the <code>root</code> of a binary tree, return <em>the length of the <strong>diameter</strong> of the tree</em>.</p>

<p>The <strong>diameter</strong> of a binary tree is the <strong>length</strong> of the longest path between any two nodes in a tree. This path may or may not pass through the <code>root</code>.</p>

<p>The <strong>length</strong> of a path between two nodes is represented by the number of edges between them.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/06/diamtree.jpg" style="width: 292px; height: 302px;">
<pre><strong>Input:</strong> root = [1,2,3,4,5]
<strong>Output:</strong> 3
<strong>Explanation:</strong> 3 is the length of the path [4,2,1,3] or [5,2,1,3].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> root = [1,2]
<strong>Output:</strong> 1
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
</ul>

**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:

- [Diameter of N-Ary Tree (Medium)](https://leetcode.com/problems/diameter-of-n-ary-tree/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/diameter-of-binary-tree/
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
 * @return {number}
 */
var maxDepth = function(root) {
    if(!root) return 0
    var leftDepth = maxDepth(root.left)
    var rightDepth = maxDepth(root.right)
    return Math.max(leftDepth,rightDepth)+1
}
var diameterOfBinaryTree = function(root) {
if (!root) return 0;
    var leftDp = maxDepth(root.left)
    var rightDp = maxDepth(root.right)
    var leftDm = diameterOfBinaryTree(root.left)
    var rightDm = diameterOfBinaryTree(root.right)
    return Math.max(leftDp + rightDp, Math.max(leftDm,rightDm))
};

```

## tutorial

Source: https://www.youtube.com/watch?v=Prph-j0sgr4&ab_channel=FitCoder

<img src="WeChat Image_20211011004900.png"/>
