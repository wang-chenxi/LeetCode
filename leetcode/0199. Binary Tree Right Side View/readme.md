# [199. Binary Tree Right Side View (Medium)](https://leetcode.com/problems/binary-tree-right-side-view/)

<p>Given the <code>root</code> of a binary tree, imagine yourself standing on the <strong>right side</strong> of it, return <em>the values of the nodes you can see ordered from top to bottom</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/02/14/tree.jpg" style="width: 401px; height: 301px;">
<pre><strong>Input:</strong> root = [1,2,3,null,5,null,4]
<strong>Output:</strong> [1,3,4]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> root = [1,null,3]
<strong>Output:</strong> [1,3]
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> root = []
<strong>Output:</strong> []
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[0, 100]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Populating Next Right Pointers in Each Node (Medium)](https://leetcode.com/problems/populating-next-right-pointers-in-each-node/)
* [Boundary of Binary Tree (Medium)](https://leetcode.com/problems/boundary-of-binary-tree/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/binary-tree-right-side-view/
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
 * @return {number[]}
 */
var rightSideView = function(root) {
    if(!root) return[];
    var ans = []
    var queue = [root];
    while(queue.length){
        var len = queue.length;
        for(var i =0;i<len;i++){
            var cur = queue.shift()
            if(i==len-1) ans.push(cur.val)
            if(cur.left) queue.push(cur.left)
            if(cur.right) queue.push(cur.right)
        } 
    }
    return ans
};

```