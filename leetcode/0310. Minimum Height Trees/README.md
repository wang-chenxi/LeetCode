# [310. Minimum Height Trees (Medium)](https://leetcode.com/problems/minimum-height-trees/)

<p>A tree is an undirected graph in which any two vertices are connected by&nbsp;<i>exactly</i>&nbsp;one path. In other words, any connected graph without simple cycles is a tree.</p>

<p>Given a tree of <code>n</code> nodes&nbsp;labelled from <code>0</code> to <code>n - 1</code>, and an array of&nbsp;<code>n - 1</code>&nbsp;<code>edges</code> where <code>edges[i] = [a<sub>i</sub>, b<sub>i</sub>]</code> indicates that there is an undirected edge between the two nodes&nbsp;<code>a<sub>i</sub></code> and&nbsp;<code>b<sub>i</sub></code> in the tree,&nbsp;you can choose any node of the tree as the root. When you select a node <code>x</code> as the root, the result tree has height <code>h</code>. Among all possible rooted trees, those with minimum height (i.e. <code>min(h)</code>)&nbsp; are called <strong>minimum height trees</strong> (MHTs).</p>

<p>Return <em>a list of all <strong>MHTs'</strong> root labels</em>.&nbsp;You can return the answer in <strong>any order</strong>.</p>

<p>The <strong>height</strong> of a rooted tree is the number of edges on the longest downward path between the root and a leaf.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/09/01/e1.jpg" style="width: 800px; height: 213px;">
<pre><strong>Input:</strong> n = 4, edges = [[1,0],[1,2],[1,3]]
<strong>Output:</strong> [1]
<strong>Explanation:</strong> As shown, the height of the tree is 1 when the root is the node with label 1 which is the only MHT.
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/09/01/e2.jpg" style="width: 800px; height: 321px;">
<pre><strong>Input:</strong> n = 6, edges = [[3,0],[3,1],[3,2],[3,4],[5,4]]
<strong>Output:</strong> [3,4]
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> n = 1, edges = []
<strong>Output:</strong> [0]
</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> n = 2, edges = [[0,1]]
<strong>Output:</strong> [0,1]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 2 * 10<sup>4</sup></code></li>
	<li><code>edges.length == n - 1</code></li>
	<li><code>0 &lt;= a<sub>i</sub>, b<sub>i</sub> &lt; n</code></li>
	<li><code>a<sub>i</sub> != b<sub>i</sub></code></li>
	<li>All the pairs <code>(a<sub>i</sub>, b<sub>i</sub>)</code> are distinct.</li>
	<li>The given input is <strong>guaranteed</strong> to be a tree and there will be <strong>no repeated</strong> edges.</li>
</ul>

**Related Topics**:  
[Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Graph](https://leetcode.com/tag/graph/), [Topological Sort](https://leetcode.com/tag/topological-sort/)

**Similar Questions**:

- [Course Schedule (Medium)](https://leetcode.com/problems/course-schedule/)
- [Course Schedule II (Medium)](https://leetcode.com/problems/course-schedule-ii/)

## Solution 1.BFS nested loop, will return TLE

```JS

// OJ: https://leetcode.com/problems/minimum-height-trees/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
};
/**
 * @param {number} n
 * @param {number[][]} edges
 * @return {number[]}
 */
var findMinHeightTrees = function(n, edges) {
    //define the map for retriving nodes
    var map = new Map();
    for(var i = 0; i<n;i++){
        map.set(i,[])
    }
    for(var i = 0;i<edges.length;i++){
        map.get(edges[i][0]).push(edges[i][1])
        map.get(edges[i][1]).push(edges[i][0])
    }
    // define helper method
    var checkingLevel = function(node,map){
        var queue = [node]
        var height = 0;
        var visited = new Set();
        while(queue.length != 0){
            var cnt = queue.length
            for(var i = 0; i<cnt;i++){
                var current = queue.shift()
                visited.add(current)
                var list = map.get(current)
                for(var leaf of list){
                    if(!visited.has(leaf)){
                        queue.push(leaf)
                    }
                }
            }
            height ++;
        }
        return height;
    }
    var currentMin = Infinity, ans = [];
    for(var i = 0;i<n;i++){
        var height = checkingLevel(i,map)
        console.log(i,height)
        if(height<currentMin){
            currentMin = height
            ans = [i]
        }else if(height == currentMin){
            ans.push(i)
        }
    }
    return ans
};

```
