# [733. Flood Fill (Easy)](https://leetcode.com/problems/flood-fill/)

<p>An image is represented by an <code>m x n</code> integer grid <code>image</code> where <code>image[i][j]</code> represents the pixel value of the image.</p>

<p>You are also given three integers <code>sr</code>, <code>sc</code>, and <code>newColor</code>. You should perform a <strong>flood fill</strong> on the image starting from the pixel <code>image[sr][sc]</code>.</p>

<p>To perform a <strong>flood fill</strong>, consider the starting pixel, plus any pixels connected <strong>4-directionally</strong> to the starting pixel of the same color as the starting pixel, plus any pixels connected <strong>4-directionally</strong> to those pixels (also with the same color), and so on. Replace the color of all of the aforementioned pixels with <code>newColor</code>.</p>

<p>Return <em>the modified image after performing the flood fill</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/06/01/flood1-grid.jpg" style="width: 613px; height: 253px;">
<pre><strong>Input:</strong> image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1, sc = 1, newColor = 2
<strong>Output:</strong> [[2,2,2],[2,2,0],[2,0,1]]
<strong>Explanation:</strong> From the center of the image with position (sr, sc) = (1, 1) (i.e., the red pixel), all pixels connected by a path of the same color as the starting pixel (i.e., the blue pixels) are colored with the new color.
Note the bottom corner is not colored 2, because it is not 4-directionally connected to the starting pixel.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> image = [[0,0,0],[0,0,0]], sr = 0, sc = 0, newColor = 2
<strong>Output:</strong> [[2,2,2],[2,2,2]]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>m == image.length</code></li>
	<li><code>n == image[i].length</code></li>
	<li><code>1 &lt;= m, n &lt;= 50</code></li>
	<li><code>0 &lt;= image[i][j], newColor &lt; 2<sup>16</sup></code></li>
	<li><code>0 &lt;= sr &lt;&nbsp;m</code></li>
	<li><code>0 &lt;= sc &lt;&nbsp;n</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Depth-First Search](https://leetcode.com/tag/depth-first-search/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/), [Matrix](https://leetcode.com/tag/matrix/)

**Similar Questions**:

- [Island Perimeter (Easy)](https://leetcode.com/problems/island-perimeter/)

## Testcases

```
[[1,1,1],[1,1,0],[1,0,1]]
1
1
2
[[0,0,0],[0,0,0]]
0
0
2
```

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/flood-fill/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[][]} image
 * @param {number} sr
 * @param {number} sc
 * @param {number} newColor
 * @return {number[][]}
 */
var floodFill = function(image, sr, sc, newColor) {
    if(image[sr][sc]==newColor) return image
    var center = [];
    center[0]=[sr,sc];
    var oldColor = image[sr][sc]
    image[sr][sc] = newColor
    var row = image.length;
    var col = image[0].length;
    while(center.length >0){
        var [x,y] = center[0]
        center.shift();
        if(x>=1){
            if(image[x-1][y]==oldColor){
                image[x-1][y]=newColor
                center.push([x-1,y])
            }
        }
        if(x<row-1){
          if(image[x+1][y]==oldColor){
                image[x+1][y]=newColor
                center.push([x+1,y])
            }
        }
        if(y>=1){
          if(image[x][y-1]==oldColor){
                image[x][y-1]=newColor
                center.push([x,y-1])
            }
        }
        if(y<col-1){
          if(image[x][y+1]==oldColor){
                image[x][y+1]=newColor
                center.push([x,y+1])}
        }
}
    return image;
}

```
