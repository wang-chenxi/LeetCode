### 63. Unique Paths II

// OJ: https://leetcode.com/problems/unique-paths-ii
// Author: Please set your name in options page
// Time: O()
// Space: O()

```js
/**
 * @param {number[][]} obstacleGrid
 * @return {number}
 */
var uniquePathsWithObstacles = function(obstacleGrid) {
    var m = obstacleGrid.length;
    var n = obstacleGrid[0].length;
    var memo = new Map();
    var findPath = function(i,j) {
        if (i<0 || j<0) return 0;
        if (obstacleGrid[i][j] === 1) return 0;
        //important:the basecase
        if(i==0 && j==0) return 1
        if (memo.has(i+","+j)) return memo.get(i+","+j);
        var up = findPath(i-1,j);
        var left = findPath(i,j-1);
        var totalPath = up + left;
        memo.set(i+","+j,totalPath);
        return totalPath;
    };
    if (obstacleGrid[0][0] == 1) return 0;
    if (m == 1 && n == 1) return 1;
    return findPath(m-1,n-1);
};