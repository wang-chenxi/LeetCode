# [98. Validate Binary Search Tree (Medium)](https://leetcode.com/problems/validate-binary-search-tree/)

<p>Given the <code>root</code> of a binary tree, <em>determine if it is a valid binary search tree (BST)</em>.</p>

<p>A <strong>valid BST</strong> is defined as follows:</p>

<ul>
	<li>The left subtree of a node contains only nodes with keys <strong>less than</strong> the node's key.</li>
	<li>The right subtree of a node contains only nodes with keys <strong>greater than</strong> the node's key.</li>
	<li>Both the left and right subtrees must also be binary search trees.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/12/01/tree1.jpg" style="width: 302px; height: 182px;">
<pre><strong>Input:</strong> root = [2,1,3]
<strong>Output:</strong> true
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/12/01/tree2.jpg" style="width: 422px; height: 292px;">
<pre><strong>Input:</strong> root = [5,1,4,null,null,3,6]
<strong>Output:</strong> false
<strong>Explanation:</strong> The root node's value is 5 but its right child's value is 4.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>-2<sup>31</sup> &lt;= Node.val &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Search Tree](https://leetcode.com/tag/binary-search-tree/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:

- [Binary Tree Inorder Traversal (Easy)](https://leetcode.com/problems/binary-tree-inorder-traversal/)
- [Find Mode in Binary Search Tree (Easy)](https://leetcode.com/problems/find-mode-in-binary-search-tree/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/validate-binary-search-tree/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
}
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
// OJ: https://leetcode.com/problems/validate-binary-search-tree/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
}
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
var helper = function(root,count) {
    count ++;
    console.log(count)
    if(!root) return true;
    if(root.left != null){
        if(root.left.val>= root.val){
            return false;
        }
        if(count == 1&& root.right ==null){
            return true;
        }
         if(root.left.left == null && root.left.right ==null){
        if(root.right ==null || root.right.left != null || root.right.right != null)
            return false
    }
    }
    if(root.right !=null){
        console.log("test right")
        if(root.right.val <= root.val){
            console.log("the right val ")
            return false;
        }
        if(count ==1&&root.left==null){
            return true;
        }
         if(root.right.left == null && root.right.right ==null){
        if(root.left == null || root.left.left != null || root.left.right != null)
            return false
    }
    }
    return helper(root.left,count) || helper(root.right,count)
};



var isValidBST=(root,count = 0)=>{
    return helper(root, count)
}

```
