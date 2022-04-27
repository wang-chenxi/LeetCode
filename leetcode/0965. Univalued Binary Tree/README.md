# [965. Univalued Binary Tree (Easy)](https://leetcode.com/problems/univalued-binary-tree/)

<p>A binary tree is <strong>uni-valued</strong> if every node in the tree has the same value.</p>

<p>Given the <code>root</code> of a binary tree, return <code>true</code><em> if the given tree is <strong>uni-valued</strong>, or </em><code>false</code><em> otherwise.</em></p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2018/12/28/unival_bst_1.png" style="width: 265px; height: 172px;">
<pre><strong>Input:</strong> root = [1,1,1,1,1,null,1]
<strong>Output:</strong> true
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2018/12/28/unival_bst_2.png" style="width: 198px; height: 169px;">
<pre><strong>Input:</strong> root = [2,2,2,5,2]
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 100]</code>.</li>
	<li><code>0 &lt;= Node.val &lt; 100</code></li>
</ul>


**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Find All The Lonely Nodes (Easy)](https://leetcode.com/problems/find-all-the-lonely-nodes/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/univalued-binary-tree/
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
 * @return {boolean}
 */
var isUnivalTree = function(root) {
    if(!root) return true
    var value = root.val
    if(root.left!=null){
        if(value!=root.left.val) return false
    }
    if(root.right!=null){
        if(value!=root.right.val) return false
    }
    return isUnivalTree(root.left)&&isUnivalTree(root.right) 
};

```