# [934. Shortest Bridge (Medium)](https://leetcode.com/problems/shortest-bridge/)

<p>In a given 2D binary array <code>grid</code>, there are two islands.&nbsp; (An island is a 4-directionally connected group of&nbsp;<code>1</code>s not connected to any other 1s.)</p>

<p>Now, we may change <code>0</code>s to <code>1</code>s so as to connect the two islands together to form 1 island.</p>

<p>Return the smallest number of <code>0</code>s that must be flipped.&nbsp; (It is guaranteed that the answer is at least 1.)</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> grid = [[0,1],[1,0]]
<strong>Output:</strong> 1
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> grid = [[0,1,0],[0,0,0],[0,0,1]]
<strong>Output:</strong> 2
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> grid = [[1,1,1,1,1],[1,0,0,0,1],[1,0,1,0,1],[1,0,0,0,1],[1,1,1,1,1]]
<strong>Output:</strong> 1
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>2 &lt;= grid.length == grid[0].length &lt;= 100</code></li>
	<li><code>grid[i][j] == 0</code> or <code>grid[i][j] == 1</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Matrix](https://leetcode.com/tag/matrix/)

## Solution 1.

```DFS + BFS

/**
 * @param {number[][]} A
 * @return {number}
 */
var shortestBridge = function (A) {
    let aIsland = [];
    let bIsland = [];

    for (let i = 0; i < A.length; i++) {
        for (let j = 0; j < A[0].length; j++) {

            if (A[i][j] == 1) {


                if (!aIsland.length) {
                    dfs(A, i, j, aIsland)
                } else if (!bIsland.length) {
                    dfs(A, i, j, bIsland)
                }
            }
        }
    }


    let diff = aIsland.length > bIsland.length ? calculateDistance(bIsland, aIsland) : calculateDistance(aIsland, bIsland);
    return diff


    function dfs(A, i, j, result) {

        if (i < 0 || j < 0 || i >= A.length || j >= A.length || A[i][j] != 1) return;

        //mark as visited
        A[i][j] = 0;
        result.push([i, j])

        dfs(A, i - 1, j, result);
        dfs(A, i + 1, j, result);
        dfs(A, i, j - 1, result);
        dfs(A, i, j + 1, result);
    }



    function calculateDistance(aDistances, bDistance) {
        let min = Infinity;

        for (let i = 0; i < aDistances.length; i++) {
            for (let j = 0; j < bDistance.length; j++) {

                //find distance and  -1 beacuse beacuse it includes on of the points
                let calculateDiff = Math.abs(aDistances[i][0] - bDistance[j][0]) + Math.abs(aDistances[i][1] - bDistance[j][1]) - 1
                min = Math.min(calculateDiff, min)
            }
        }

        return min
    }
};

```
