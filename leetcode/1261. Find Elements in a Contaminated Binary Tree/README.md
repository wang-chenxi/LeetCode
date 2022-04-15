# [1261. Find Elements in a Contaminated Binary Tree (Medium)](https://leetcode.com/problems/find-elements-in-a-contaminated-binary-tree/)

<p>Given a binary tree with the following rules:</p>

<ol>
	<li><code>root.val == 0</code></li>
	<li>If <code>treeNode.val == x</code> and <code>treeNode.left != null</code>, then <code>treeNode.left.val == 2 * x + 1</code></li>
	<li>If <code>treeNode.val == x</code> and <code>treeNode.right != null</code>, then <code>treeNode.right.val == 2 * x + 2</code></li>
</ol>

<p>Now the binary tree is contaminated, which means all <code>treeNode.val</code> have been changed to <code>-1</code>.</p>

<p>Implement the <code>FindElements</code> class:</p>

<ul>
	<li><code>FindElements(TreeNode* root)</code> Initializes the object with a contaminated binary tree and recovers it.</li>
	<li><code>bool find(int target)</code> Returns <code>true</code> if the <code>target</code> value exists in the recovered binary tree.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2019/11/06/untitled-diagram-4-1.jpg" style="width: 320px; height: 119px;">
<pre><strong>Input</strong>
["FindElements","find","find"]
[[[-1,null,-1]],[1],[2]]
<strong>Output</strong>
[null,false,true]
<strong>Explanation</strong>
FindElements findElements = new FindElements([-1,null,-1]); 
findElements.find(1); // return False 
findElements.find(2); // return True </pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2019/11/06/untitled-diagram-4.jpg" style="width: 400px; height: 198px;">
<pre><strong>Input</strong>
["FindElements","find","find","find"]
[[[-1,-1,-1,-1,-1]],[1],[3],[5]]
<strong>Output</strong>
[null,true,true,false]
<strong>Explanation</strong>
FindElements findElements = new FindElements([-1,-1,-1,-1,-1]);
findElements.find(1); // return True
findElements.find(3); // return True
findElements.find(5); // return False</pre>

<p><strong>Example 3:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2019/11/07/untitled-diagram-4-1-1.jpg" style="width: 306px; height: 274px;">
<pre><strong>Input</strong>
["FindElements","find","find","find","find"]
[[[-1,null,-1,-1,null,-1]],[2],[3],[4],[5]]
<strong>Output</strong>
[null,true,false,false,true]
<strong>Explanation</strong>
FindElements findElements = new FindElements([-1,null,-1,-1,null,-1]);
findElements.find(2); // return True
findElements.find(3); // return False
findElements.find(4); // return False
findElements.find(5); // return True
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>TreeNode.val == -1</code></li>
	<li>The height of the binary tree is less than or equal to <code>20</code></li>
	<li>The total number of nodes is between <code>[1, 10<sup>4</sup>]</code></li>
	<li>Total calls of <code>find()</code> is between <code>[1, 10<sup>4</sup>]</code></li>
	<li><code>0 &lt;= target &lt;= 10<sup>6</sup></code></li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Design](https://leetcode.com/tag/design/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/find-elements-in-a-contaminated-binary-tree/
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
 */
var FindElements = function(root) {
    var set = new Set()
     var dfs = function(root,val){
        if(!root)return
         set.add(val)
         root.val = val;
        dfs(root.left,2*val+1)
        dfs(root.right,2*val+2)
    }
     dfs(root,0)
    this.set =set
};
/** 
 * @param {number} target
 * @return {boolean}
 */
FindElements.prototype.find = function(target) {
    return this.set.has(target) 
};
/** 
 * Your FindElements object will be instantiated and called as such:
 * var obj = new FindElements(root)
 * var param_1 = obj.find(target)
 */

```