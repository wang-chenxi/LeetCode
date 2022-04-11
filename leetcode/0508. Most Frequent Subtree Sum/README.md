# [508. Most Frequent Subtree Sum (Medium)](https://leetcode.com/problems/most-frequent-subtree-sum/)

<p>Given the <code>root</code> of a binary tree, return the most frequent <strong>subtree sum</strong>. If there is a tie, return all the values with the highest frequency in any order.</p>

<p>The <strong>subtree sum</strong> of a node is defined as the sum of all the node values formed by the subtree rooted at that node (including the node itself).</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/04/24/freq1-tree.jpg" style="width: 207px; height: 183px;">
<pre><strong>Input:</strong> root = [5,2,-3]
<strong>Output:</strong> [2,-3,4]
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/04/24/freq2-tree.jpg" style="width: 207px; height: 183px;">
<pre><strong>Input:</strong> root = [5,2,-5]
<strong>Output:</strong> [2]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>-10<sup>5</sup> &lt;= Node.val &lt;= 10<sup>5</sup></code></li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

**Similar Questions**:
* [Subtree of Another Tree (Easy)](https://leetcode.com/problems/subtree-of-another-tree/)
* [Count Nodes Equal to Sum of Descendants (Medium)](https://leetcode.com/problems/count-nodes-equal-to-sum-of-descendants/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/most-frequent-subtree-sum/
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
var findFrequentTreeSum = function(root) {
    var map = new Map()
    var max = 0;
    var dfs = function(root){// given a root node of a binary tree, return the sum of all the nodes in this tree.
        // basic testcases: 0, 1, 2
        if (!root) return 0;
        var sum = root.val + dfs(root.left) +dfs(root.right)
        var freq = (map.get(sum) ?? 0) + 1;
        map.set(sum, freq);
        max = Math.max(max, freq);
        return sum
    }
    dfs(root,0)
    var ans = []
    for(var sum of map.keys()){
       if (map.get(sum) == max) ans.push(sum);
    }
    return ans
};

```