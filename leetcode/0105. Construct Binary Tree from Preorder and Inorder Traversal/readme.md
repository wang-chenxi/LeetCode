# [105. Construct Binary Tree from Preorder and Inorder Traversal (Medium)](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)

<p>Given two integer arrays <code>preorder</code> and <code>inorder</code> where <code>preorder</code> is the preorder traversal of a binary tree and <code>inorder</code> is the inorder traversal of the same tree, construct and return <em>the binary tree</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/02/19/tree.jpg" style="width: 277px; height: 302px;">
<pre><strong>Input:</strong> preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
<strong>Output:</strong> [3,9,20,null,null,15,7]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> preorder = [-1], inorder = [-1]
<strong>Output:</strong> [-1]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= preorder.length &lt;= 3000</code></li>
	<li><code>inorder.length == preorder.length</code></li>
	<li><code>-3000 &lt;= preorder[i], inorder[i] &lt;= 3000</code></li>
	<li><code>preorder</code> and <code>inorder</code> consist of <strong>unique</strong> values.</li>
	<li>Each value of <code>inorder</code> also appears in <code>preorder</code>.</li>
	<li><code>preorder</code> is <strong>guaranteed</strong> to be the preorder traversal of the tree.</li>
	<li><code>inorder</code> is <strong>guaranteed</strong> to be the inorder traversal of the tree.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Divide and Conquer](https://leetcode.com/tag/divide-and-conquer/), [Tree](https://leetcode.com/tag/tree/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Construct Binary Tree from Inorder and Postorder Traversal (Medium)](https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/)


<div>
<p></p><p><strong>Explanation/Discussion:</strong></p><p>
</p><p>Consider this input:</p><p>
</p><pre><code>preorder: [1, 2, 4, 5, 3, 6]
inorder: [4, 2, 5, 1, 6, 3]
</code></pre>
<p></p><p>The obvious way to build the tree is:</p><p>
</p><ol>
<li>Use the first element of <code>preorder</code>, the <code>1</code>, as root.</li>
<li>Search it in <code>inorder</code>.</li>
<li>Split <code>inorder</code> by it, here into <code>[4, 2, 5]</code> and <code>[6, 3]</code>.</li>
<li>Split the rest of  <code>preorder</code> into two parts as large as the <code>inorder</code> parts, here into <code>[2, 4, 5]</code> and <code>[3, 6]</code>.</li>
<li>Use <code>preorder = [2, 4, 5]</code> and <code>inorder = [4, 2, 5]</code> to add the left subtree.</li>
<li>Use <code>preorder =</code>[3, 6]<code>and</code>inorder = <code>[6, 3]</code> to add the right subtree.</li>
</ol>
<p></p><p>But consider the worst case for this: A tree that's not balanced but is just a straight line to the left. Then inorder is the reverse of preorder, and already the cost of step 2, searching in <code>inorder</code>, is O(n^2) overall. Also, depending on how you "split" the arrays, you're looking at O(n^2) runtime and possibly O(n^2) space for that as well.</p><p>
</p><p>You can bring the runtime for searching down to O(n) by building a map from value to index before you start the main work, and I've seen several solutions do that. But that is O(n) additional space, and also the splitting problems remain. To fix those, you can use pointers into <code>preorder</code> and <code>inorder</code> instead of splitting them. And when you're doing that, you don't need the value-to-index map, either.</p><p>
</p><p>Consider the example again. Instead of finding the <code>1</code> in <code>inorder</code>, splitting the arrays into parts and recursing on them, just recurse on the full remaining arrays and <strong>stop</strong> when you come across the <code>1</code> in <code>inorder</code>. That's what my above solution does. Each recursive call gets told where to stop, and it tells its subcalls where to stop. It gives its own root value as stopper to its left subcall and its parent`s stopper as stopper to its right subcall.</p><p>
</p><p><strong>Language details:</strong></p><p>
</p><p>Small trick in my Javascript solution: The top-most call doesn't explicitly get a stopper value, so its <code>stop</code> is <code>undefined</code>. Which is good, because that's also what <code>inorder[i]</code> is when we have consumed all values, i.e., when <code>i</code> is <code>inorder.length</code>.</p>
</div>
## Solution 1.

```js

// OJ: https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
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
 * @param {number[]} preorder
 * @param {number[]} inorder
 * @return {TreeNode}
 */
var buildTree = function(preorder, inorder) {
    p = i = 0
    build = function(stop) {
        if (inorder[i] != stop) {
            var root = new TreeNode(preorder[p++])
            root.left = build(root.val)
            i++
            root.right = build(stop)
            return root
        }
        return null
    }
    return build()
};

```