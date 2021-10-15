# [419. Battleships in a Board (Medium)](https://leetcode.com/problems/battleships-in-a-board/)

<p>Given an <code>m x n</code> matrix <code>board</code> where each cell is a battleship <code>'X'</code> or empty <code>'.'</code>, return <em>the number of the <strong>battleships</strong> on</em> <code>board</code>.</p>

<p><strong>Battleships</strong> can only be placed horizontally or vertically on <code>board</code>. In other words, they can only be made of the shape <code>1 x k</code> (<code>1</code> row, <code>k</code> columns) or <code>k x 1</code> (<code>k</code> rows, <code>1</code> column), where <code>k</code> can be of any size. At least one horizontal or vertical cell separates between two battleships (i.e., there are no adjacent battleships).</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/04/10/battelship-grid.jpg" style="width: 333px; height: 333px;">
<pre><strong>Input:</strong> board = [["X",".",".","X"],[".",".",".","X"],[".",".",".","X"]]
<strong>Output:</strong> 2
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> board = [["."]]
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>m == board.length</code></li>
	<li><code>n == board[i].length</code></li>
	<li><code>1 &lt;= m, n &lt;= 200</code></li>
	<li><code>board[i][j]</code> is either <code>'.'</code> or <code>'X'</code>.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> Could you do it in one-pass, using only <code>O(1)</code> extra memory and without modifying the values <code>board</code>?</p>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Matrix](https://leetcode.com/tag/matrix/)

## Testcases

[["X",".",".","X"],[".",".",".","X"],[".",".",".","X"]]
[["."]]

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/battleships-in-a-board/
// Author: github.com/wang-chenxi
// Time: O(n^2)
// Space: O(n)
/**
 * @param {character[][]} board
 * @return {number}
 */
var countBattleships = function(board) {
    var count = 0;
    var set = new Set();
    var row = board.length;
    var col = board[0].length;
    for(var i = 0; i<row;i++){
        for(var j = 0;j<col;j++){
            console.log(board[i][j],i,j)
            if(board[i][j]=="."||set.has(i+"_"+j)) continue
            checkShips(board,i,j,set)
            count++;
        }
    }
    return count
};
var checkShips = (board,row,col,set)=>{
    if(row <0 || col <0 || row>=board.length||col>=board[0].length||board[row][col]=="."||set.has(row+"_"+col)) return
    set.add(row+"_"+col)
    checkShips(board,row-1,col,set)
    checkShips(board,row+1,col,set)
    checkShips(board,row,col-1,set)
    checkShips(board,row,col+1,set)
}

```
