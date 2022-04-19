# [1448. Count Good Nodes in Binary Tree (Medium)](https://leetcode.com/problems/count-good-nodes-in-binary-tree/)

<p>Given a binary tree <code>root</code>, a node <em>X</em> in the tree is named&nbsp;<strong>good</strong> if in the path from root to <em>X</em> there are no nodes with a value <em>greater than</em> X.</p>

<p>Return the number of <strong>good</strong> nodes in the binary tree.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2020/04/02/test_sample_1.png" style="width: 263px; height: 156px;"></strong></p>

<pre><strong>Input:</strong> root = [3,1,4,3,null,1,5]
<strong>Output:</strong> 4
<strong>Explanation:</strong> Nodes in blue are <strong>good</strong>.
Root Node (3) is always a good node.
Node 4 -&gt; (3,4) is the maximum value in the path starting from the root.
Node 5 -&gt; (3,4,5) is the maximum value in the path
Node 3 -&gt; (3,1,3) is the maximum value in the path.</pre>

<p><strong>Example 2:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2020/04/02/test_sample_2.png" style="width: 157px; height: 161px;"></strong></p>

<pre><strong>Input:</strong> root = [3,3,null,4,2]
<strong>Output:</strong> 3
<strong>Explanation:</strong> Node 2 -&gt; (3, 3, 2) is not good, because "3" is higher than it.</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> root = [1]
<strong>Output:</strong> 1
<strong>Explanation:</strong> Root is considered as <strong>good</strong>.</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the binary tree is in the range&nbsp;<code>[1, 10^5]</code>.</li>
	<li>Each node's value is between <code>[-10^4, 10^4]</code>.</li>
</ul>

**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/count-good-nodes-in-binary-tree/
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
var goodNodes = function(root) {
    var ans = 0;
    var dfs = function(root,cur){
        if(!root) return
        if(root.val>=cur){
            ans++
            cur=root.val
        }
        dfs(root.left,cur)
        dfs(root.right,cur)
    }
    dfs(root,root.val)
    return ans
};

```