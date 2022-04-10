# [1302. Deepest Leaves Sum (Medium)](https://leetcode.com/problems/deepest-leaves-sum/)

Given the <code>root</code> of a binary tree, return <em>the sum of values of its deepest leaves</em>.
<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2019/07/31/1483_ex1.png" style="width: 273px; height: 265px;">
<pre><strong>Input:</strong> root = [1,2,3,4,5,null,6,7,null,null,null,null,8]
<strong>Output:</strong> 15
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> root = [6,7,8,2,7,1,3,9,null,1,4,null,null,null,5]
<strong>Output:</strong> 19
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 10<sup>4</sup>]</code>.</li>
	<li><code>1 &lt;= Node.val &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Tree](https://leetcode.com/tag/tree/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Binary Tree](https://leetcode.com/tag/binary-tree/)

## Solution 1.

```js

var deepestLeavesSum = function(root) {
    //bfs 
    if(!root) return 0;
    var ans = 0;
    var queue = [];
    queue.push(root)
    while(queue.length>0){
        ans = 0;
        var length = queue.length;
        console.log(queue)
        for(var i = 0;i<length;i++){
            var node = queue.shift()
            ans += node.val
            if(node.left)queue.push(node.left)
            if(node.right)queue.push(node.right)
        }
    }
    return ans
};

```
