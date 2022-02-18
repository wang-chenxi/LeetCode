# [657. Robot Return to Origin (Easy)](https://leetcode.com/problems/robot-return-to-origin/)

<p>There is a robot starting at the position <code>(0, 0)</code>, the origin, on a 2D plane. Given a sequence of its moves, judge if this robot <strong>ends up at </strong><code>(0, 0)</code> after it completes its moves.</p>

<p>You are given a string <code>moves</code> that represents the move sequence of the robot where <code>moves[i]</code> represents its <code>i<sup>th</sup></code> move. Valid moves are <code>'R'</code> (right), <code>'L'</code> (left), <code>'U'</code> (up), and <code>'D'</code> (down).</p>

<p>Return <code>true</code><em> if the robot returns to the origin after it finishes all of its moves, or </em><code>false</code><em> otherwise</em>.</p>

<p><strong>Note</strong>: The way that the robot is "facing" is irrelevant. <code>'R'</code> will always make the robot move to the right once, <code>'L'</code> will always make it move left, etc. Also, assume that the magnitude of the robot's movement is the same for each move.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> moves = "UD"
<strong>Output:</strong> true
<strong>Explanation</strong>: The robot moves up once, and then down once. All moves have the same magnitude, so it ended up at the origin where it started. Therefore, we return true.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> moves = "LL"
<strong>Output:</strong> false
<strong>Explanation</strong>: The robot moves left twice. It ends up two "moves" to the left of the origin. We return false because it is not at the origin at the end of its moves.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= moves.length &lt;= 2 * 10<sup>4</sup></code></li>
	<li><code>moves</code> only contains the characters <code>'U'</code>, <code>'D'</code>, <code>'L'</code> and <code>'R'</code>.</li>
</ul>

**Related Topics**:  
[String](https://leetcode.com/tag/string/), [Simulation](https://leetcode.com/tag/simulation/)

**Similar Questions**:

- [Number of Provinces (Medium)](https://leetcode.com/problems/number-of-provinces/)
- [Execution of All Suffix Instructions Staying in a Grid (Medium)](https://leetcode.com/problems/execution-of-all-suffix-instructions-staying-in-a-grid/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/robot-return-to-origin/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} moves
 * @return {boolean}
 */
var judgeCircle = function (moves) {
  const position = [0, 0];
  moves = moves.split("");
  while (moves[0]) {
    const step = moves.shift();
    if (step == "R") {
      position[0] += 1;
    }
    if (step == "L") {
      position[0] -= 1;
    }
    if (step == "U") {
      position[1] += 1;
    }
    if (step == "D") {
      position[1] -= 1;
    }
    console.log(position);
  }
  return position[0] == 0 && position[1] == 0;
};
```
