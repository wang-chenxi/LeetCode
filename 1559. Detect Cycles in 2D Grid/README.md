# [1559. Detect Cycles in 2D Grid (Medium)](https://leetcode.com/problems/detect-cycles-in-2d-grid/)

<p>Given a 2D array of characters <code>grid</code> of size <code>m x n</code>, you need to find if there exists any cycle consisting of the <strong>same value</strong> in <code>grid</code>.</p>

<p>A cycle is a path of <strong>length 4 or more</strong> in the grid that starts and ends at the same cell. From a given cell, you can move to one of the cells adjacent to it - in one of the four directions (up, down, left, or right), if it has the <strong>same value</strong> of the current cell.</p>

<p>Also, you cannot move to the cell that you visited in your last move. For example, the cycle <code>(1, 1) -&gt; (1, 2) -&gt; (1, 1)</code> is invalid because from <code>(1, 2)</code> we visited <code>(1, 1)</code> which was the last visited cell.</p>

<p>Return <code>true</code> if any cycle of the same value exists in <code>grid</code>, otherwise, return <code>false</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2020/07/15/1.png" style="width: 231px; height: 152px;"></strong></p>

<pre><strong>Input:</strong> grid = [["a","a","a","a"],["a","b","b","a"],["a","b","b","a"],["a","a","a","a"]]
<strong>Output:</strong> true
<strong>Explanation: </strong>There are two valid cycles shown in different colors in the image below:
<img alt="" src="https://assets.leetcode.com/uploads/2020/07/15/11.png" style="width: 225px; height: 163px;">
</pre>

<p><strong>Example 2:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2020/07/15/22.png" style="width: 236px; height: 154px;"></strong></p>

<pre><strong>Input:</strong> grid = [["c","c","c","a"],["c","d","c","c"],["c","c","e","c"],["f","c","c","c"]]
<strong>Output:</strong> true
<strong>Explanation: </strong>There is only one valid cycle highlighted in the image below:
<img alt="" src="https://assets.leetcode.com/uploads/2020/07/15/2.png" style="width: 229px; height: 157px;">
</pre>

<p><strong>Example 3:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2020/07/15/3.png" style="width: 183px; height: 120px;"></strong></p>

<pre><strong>Input:</strong> grid = [["a","b","b"],["b","z","b"],["b","b","a"]]
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>m == grid.length</code></li>
	<li><code>n == grid[i].length</code></li>
	<li><code>1 &lt;= m, n &lt;= 500</code></li>
	<li><code>grid</code> consists only of lowercase English letters.</li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Union Find](https://leetcode.com/tag/union-find/), [Matrix](https://leetcode.com/tag/matrix/)

## Testcases

[["a","a","a","a"],["a","b","b","a"],["a","b","b","a"],["a","a","a","a"]]
[["c","c","c","a"],["c","d","c","c"],["c","c","e","c"],["f","c","c","c"]]
[["a","b","b"],["b","z","b"],["b","b","a"]]

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/detect-cycles-in-2d-grid/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {character[][]} grid
 * @return {boolean}
 */
var containsCycle = function(grid) {
    var step = new Map();
    var currentStep = 0;
    for(var i = 0;i<grid.length;i++){
        for(var j = 0;j<grid[0].length;j++){
            if(step.has(i+"_"+j)) continue;
            var letter = grid[i][j]
            if(checkCycle(grid,i,j,letter,step,currentStep)) return true
    }
}
    return false
};
var checkCycle = (grid,row,col,letter,step,currentStep)=>{
    if(row<0||col<0||row>=grid.length||col>=grid[0].length||step.get(row+"_"+col)==currentStep-1||!grid[row][col].includes(letter)) return false
       currentStep++;
    if(!step.has(row+"_"+col)){
        step.set(row+"_"+col,currentStep)
    }else{
        if(grid[row][col].includes("+")){
        return true
    }
        grid[row][col]=letter+"+"
    }
    return checkCycle(grid,row+1,col,letter,step,currentStep)
    || checkCycle(grid,row-1,col,letter,step,currentStep)
    || checkCycle(grid,row,col+1,letter,step,currentStep)
    || checkCycle(grid,row,col-1,letter,step,currentStep)
}

```
