# [968. Binary Tree Cameras (Hard)](https://leetcode.com/problems/binary-tree-cameras/)

<p>You are given the <code>root</code> of a binary tree. We install cameras on the tree nodes where each camera at a node can monitor its parent, itself, and its immediate children.</p>

<p>Return <em>the minimum number of cameras needed to monitor all nodes of the tree</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2018/12/29/bst_cameras_01.png" style="width: 138px; height: 163px;">
<pre><strong>Input:</strong> root = [0,0,null,0,0]
<strong>Output:</strong> 1
<strong>Explanation:</strong> One camera is enough to monitor all nodes if placed as shown.
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2018/12/29/bst_cameras_02.png" style="width: 139px; height: 312px;">
<pre><strong>Input:</strong> root = [0,0,null,0,null,0,null,null,0]
<strong>Output:</strong> 2
<strong>Explanation:</strong> At least two cameras are needed to monitor all nodes of the tree. The above image shows one of the valid configurations of camera placement.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 1000]</code>.</li>
	<li><code>Node.val == 0</code></li>
</ul>


**Related Topics**:  
[Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Distribute Coins in Binary Tree (Medium)](https://leetcode.com/problems/distribute-coins-in-binary-tree/)


<div class="discuss-markdown-container"><p><em>(Note: This is part of a series of Leetcode solution explanations. If you like this solution or find it useful,</em> <em><strong>please upvote</strong></em> <em>this post.)</em></p><p>
</p><hr>
<h4><em><strong>Idea:</strong></em></h4>
<p></p><p>One of the first realizations that we can make is that we never need to place a camera on a leaf, since it would always be better to place a camera on the node <em>above</em> a leaf. This should lead us to thinking that we need to start from the bottom of the binary tree and work our way up.</p><p>
</p><p>This naturally calls for a <strong>depth first search</strong> (<strong>DFS</strong>) approach with a <strong>recursive</strong> helper function (<strong>dfs</strong>). We can navigate to the lowest part of the tree, then deal with placing cameras on the way back up the recursion stack, using the <strong>return</strong> values to pass information from child to parent.</p><p>
</p><p>First, we should consider the different information that will be necessary to pass up to the parent about the child node, and in fact there are only three:</p><p>
</p><ul>
<li>Nothing below needs monitoring.</li>
<li>A camera was placed below and can monitor the parent.</li>
<li>An unmonitored node below needs a camera placed above.</li>
</ul>
<p></p><p>The next challenge is to identify the different scenarios that we'll face once we've collected the values (<strong>val</strong>) of the children of the current <strong>node</strong>. Again, there are three scenarios:</p><p>
</p><ul>
<li>No child needs monitoring, so hold off on placing a camera and instead <strong>return</strong> a value that indicates that the parent will have to place one.</li>
<li>One or more of the chidren need monitoring, so we will have to place a camera here. We'll want to <strong>return</strong> a value indicating that the parent will be monitored.</li>
<li>One of the children has a camera and the other child either has a camera or doesn't need monitoring (otherwise we would trigger the second scenario instead). This tree is fully monitored, but has no monitoring to provide to the parent; it will <strong>return</strong> the same value as a <strong>null</strong> branch.</li>
</ul>
<p></p><p><img src="https://i.imgur.com/IPEFyf7.png" alt="Visual 1"></p><p>
</p><p>With all this in mind, we can let the <strong>return</strong> value indicate how we move from one state to another. At each <strong>node</strong> if the combined <strong>val</strong> from below is greater than <strong>2</strong>, then we need to place a camera. If so we should increment our counter (<strong>ans</strong>) before moving on.</p><p>
</p><p>One last tricky piece is the <strong>root</strong> node. If the <strong>root</strong> node returns a value indicating that it still needs a camera, we should add <strong>1</strong> to <strong>ans</strong> before we <strong>return</strong> it.</p><p>
</p><ul>
<li><em><strong>Time Complexity: O(N)</strong> where N is the number of nodes in the binary tree</em></li>
<li><em><strong>Space Complexity: O(M)</strong> where M is the maximum depth of the binary tree, which can range up to N, for the recursion stack</em></li>
</ul>
</div>
## Solution 1.

```js

// OJ: https://leetcode.com/problems/binary-tree-cameras/
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
var minCameraCover = function(root) {
    let ans = 0
    const dfs = node => {
        if (!node) return 0
        let val = dfs(node.left) + dfs(node.right)
        if (val === 0) return 3
        if (val < 3) return 0
        ans++
        return 1
    }
    return dfs(root) > 2 ? ans + 1 : ans    
};
        level ++

```