# [1382. Balance a Binary Search Tree (Medium)](https://leetcode.com/problems/balance-a-binary-search-tree/)

<p>Given the <code>root</code> of a binary search tree, return <em>a <strong>balanced</strong> binary search tree with the same node values</em>. If there is more than one answer, return <strong>any of them</strong>.</p>

<p>A binary search tree is <strong>balanced</strong> if the depth of the two subtrees of every node never differs by more than <code>1</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/08/10/balance1-tree.jpg" style="width: 500px; height: 319px;">
<pre><strong>Input:</strong> root = [1,null,2,null,3,null,4,null,null]
<strong>Output:</strong> [2,1,3,null,null,null,4]
<b>Explanation:</b> This is not the only correct answer, [3,1,4,null,2] is also correct.
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/08/10/balanced2-tree.jpg" style="width: 224px; height: 145px;">
<pre><strong>Input:</strong> root = [2,1,3]
<strong>Output:</strong> [2,1,3]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>1 &lt;= Node.val &lt;= 10<sup>5</sup></code></li>
</ul>


**Related Topics**:  
[Divide and Conquer](https://leetcode.com/tag/divide-and-conquer/), [Greedy](https://leetcode.com/tag/greedy/), [Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Search Tree](https://leetcode.com/tag/binary-search-tree/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/balance-a-binary-search-tree/
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
 * @return {TreeNode}
 */
var balanceBST = function(root) {
    values = []
    var dfs=function(root){
        if(!root)return
        values.push(root.val)
        dfs(root.left)
        dfs(root.right)
    }
    dfs(root)
    values.sort(function(a, b) {
        return a - b;
    });
    //construct a new tree from bottom to top with dfs
    function toBST(arr) {
        if (arr.length===0) return null;
        if (arr.length===1) return new TreeNode(arr[0]);
        const mid = Math.floor(arr.length / 2);
        const left = toBST(arr.slice(0, mid));
        const right = toBST(arr.slice(mid+1));
        return new TreeNode(arr[mid], left, right);
    }
    return toBST(values)
};

```