# [1110. Delete Nodes And Return Forest (Medium)](https://leetcode.com/problems/delete-nodes-and-return-forest/)

<p>Given the <code>root</code> of a binary tree, each node in the tree has a distinct value.</p>

<p>After deleting all nodes with a value in <code>to_delete</code>, we are left with a forest (a disjoint union of trees).</p>

<p>Return the roots of the trees in the remaining forest. You may return the result in any order.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2019/07/01/screen-shot-2019-07-01-at-53836-pm.png" style="width: 237px; height: 150px;">
<pre><strong>Input:</strong> root = [1,2,3,4,5,6,7], to_delete = [3,5]
<strong>Output:</strong> [[1,2,null,4],[6],[7]]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> root = [1,2,4,null,3], to_delete = [3]
<strong>Output:</strong> [[1,2,4]]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the given tree is at most <code>1000</code>.</li>
	<li>Each node has a distinct value between <code>1</code> and <code>1000</code>.</li>
	<li><code>to_delete.length &lt;= 1000</code></li>
	<li><code>to_delete</code> contains distinct values between <code>1</code> and <code>1000</code>.</li>
</ul>


**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Count Nodes With the Highest Score (Medium)](https://leetcode.com/problems/count-nodes-with-the-highest-score/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/delete-nodes-and-return-forest/
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
 * @param {number[]} to_delete
 * @return {TreeNode[]}
 */
var delNodes = function(root, to_delete) {
    if(!root)return[]
    var set = new Set()
    for(var val of to_delete){
        set.add(val)
    }
    var ans = []
    var dfs = function(node,isRoot){
        if(!node) return null
        var toDelete = set.has(node.val)
        //if it's a root of a tree
        if(isRoot&&!toDelete){
            ans.push(node)
        }
        //the child of a deleted node will become new root
        node.left = dfs(node.left,toDelete)
        node.right = dfs(node.right,toDelete)
        if(toDelete) return null
        else return node
    }
    dfs(root,true)
    return ans
};

```