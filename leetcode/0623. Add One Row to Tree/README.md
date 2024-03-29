# [623. Add One Row to Tree (Medium)](https://leetcode.com/problems/add-one-row-to-tree/)

<p>Given the <code>root</code> of a binary tree and two integers <code>val</code> and <code>depth</code>, add a row of nodes with value <code>val</code> at the given depth <code>depth</code>.</p>

<p>Note that the <code>root</code> node is at depth <code>1</code>.</p>

<p>The adding rule is:</p>

<ul>
	<li>Given the integer <code>depth</code>, for each not null tree node <code>cur</code> at the depth <code>depth - 1</code>, create two tree nodes with value <code>val</code> as <code>cur</code>'s left subtree root and right subtree root.</li>
	<li><code>cur</code>'s original left subtree should be the left subtree of the new left subtree root.</li>
	<li><code>cur</code>'s original right subtree should be the right subtree of the new right subtree root.</li>
	<li>If <code>depth == 1</code> that means there is no depth <code>depth - 1</code> at all, then create a tree node with value <code>val</code> as the new root of the whole original tree, and the original tree is the new root's left subtree.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/15/addrow-tree.jpg" style="width: 500px; height: 231px;">
<pre><strong>Input:</strong> root = [4,2,6,3,1,5], val = 1, depth = 2
<strong>Output:</strong> [4,1,1,2,null,null,6,3,1,5]
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/11/add2-tree.jpg" style="width: 500px; height: 277px;">
<pre><strong>Input:</strong> root = [4,2,null,3,1], val = 1, depth = 3
<strong>Output:</strong> [4,2,null,1,1,3,null,null,1]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li>The depth of the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
	<li><code>-10<sup>5</sup> &lt;= val &lt;= 10<sup>5</sup></code></li>
	<li><code>1 &lt;= depth &lt;= the depth of tree + 1</code></li>
</ul>

**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Testcases

[1,2,3,4]
5
[4,2,6,3,1,5]
1
2
[4,2,null,3,1]
1
3

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/add-one-row-to-tree/
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
 * @param {number} val
 * @param {number} depth
 * @return {TreeNode}
 */
var addOneRow = function(root, val, depth) {
    var level = 1;
    if(depth==1){
        return new TreeNode(val,root,null)
    }
    var queue = [root]
    var cnt = queue.length
    for(var i =0;i<cnt;i++){
        //if we find the level above the target one
        if(level == depth-1){
            queue.forEach((node)=>{
                    node.left = new TreeNode(val,node.left,null)
                    node.right = new TreeNode(val,null,node.right)
            })
            break;
        }
        //shift the first node and insert the sub nodes
        var node = queue.shift()
        if(node.left!=null)queue.push(node.left)
        if(node.right!=null) queue.push(node.right)
        // if we reach the end of one level
        if(i==cnt-1){
            i = -1
            level ++
            cnt=queue.length
        }
    }
    return root
};

```

## Solution 2. Pure BFS

```js
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
 * @param {number} val
 * @param {number} depth
 * @return {TreeNode}
 */
var addOneRow = function (root, val, depth) {
  if (depth == 1) return new TreeNode(val, root);
  var q = [root],
    level = 1;
  while (q.length) {
    var cnt = q.length;
    while (cnt--) {
      var node = q.shift();
      if (level == depth - 1) {
        node.left = new TreeNode(val, node.left);
        node.right = new TreeNode(val, null, node.right);
      } else {
        if (node.left) q.push(node.left);
        if (node.right) q.push(node.right);
      }
    }
    ++level;
  }
  return root;
};
```

### Solution 3. neat JS

```js

// OJ: https://leetcode.com/problems/add-one-row-to-tree/
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
 * @param {number} val
 * @param {number} depth
 * @return {TreeNode}
 */
var addOneRow = function(root, v, d) {
    if (d === 1) return new TreeNode(v, root, null)
    if (d === 2) {
        root.left = new TreeNode(v, root.left, null)
        root.right = new TreeNode(v, null, root.right)
    } else {
        if (root.left) addOneRow(root.left, v, d-1)
        if (root.right) addOneRow(root.right, v, d-1)
    }
    return root
};
    addLayer(root,1,0)

```
