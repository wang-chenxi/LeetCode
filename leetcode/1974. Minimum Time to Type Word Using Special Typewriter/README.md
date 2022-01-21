# [1974. Minimum Time to Type Word Using Special Typewriter (Easy)](https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/)

<p>There is a special typewriter with lowercase English letters <code>'a'</code> to <code>'z'</code> arranged in a <strong>circle</strong> with a <strong>pointer</strong>. A character can <strong>only</strong> be typed if the pointer is pointing to that character. The pointer is <strong>initially</strong> pointing to the character <code>'a'</code>.</p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/07/31/chart.jpg" style="width: 530px; height: 410px;">
<p>Each second, you may perform one of the following operations:</p>

<ul>
	<li>Move the pointer one character <strong>counterclockwise</strong> or <strong>clockwise</strong>.</li>
	<li>Type the character the pointer is <strong>currently</strong> on.</li>
</ul>

<p>Given a string <code>word</code>, return the<strong> minimum</strong> number of seconds to type out the characters in <code>word</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> word = "abc"
<strong>Output:</strong> 5
<strong>Explanation: 
</strong>The characters are printed as follows:
- Type the character 'a' in 1 second since the pointer is initially on 'a'.
- Move the pointer clockwise to 'b' in 1 second.
- Type the character 'b' in 1 second.
- Move the pointer clockwise to 'c' in 1 second.
- Type the character 'c' in 1 second.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> word = "bza"
<strong>Output:</strong> 7
<strong>Explanation:
</strong>The characters are printed as follows:
- Move the pointer clockwise to 'b' in 1 second.
- Type the character 'b' in 1 second.
- Move the pointer counterclockwise to 'z' in 2 seconds.
- Type the character 'z' in 1 second.
- Move the pointer clockwise to 'a' in 1 second.
- Type the character 'a' in 1 second.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> word = "zjpc"
<strong>Output:</strong> 34
<strong>Explanation:</strong>
The characters are printed as follows:
- Move the pointer counterclockwise to 'z' in 1 second.
- Type the character 'z' in 1 second.
- Move the pointer clockwise to 'j' in 10 seconds.
- Type the character 'j' in 1 second.
- Move the pointer clockwise to 'p' in 6 seconds.
- Type the character 'p' in 1 second.
- Move the pointer counterclockwise to 'c' in 13 seconds.
- Type the character 'c' in 1 second.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= word.length &lt;= 100</code></li>
	<li><code>word</code> consists of lowercase English letters.</li>
</ul>

**Related Topics**:  
[String](https://leetcode.com/tag/string/), [Greedy](https://leetcode.com/tag/greedy/)

**Similar Questions**:

- [Minimum Distance to Type a Word Using Two Fingers ](https://leetcode.com/problems/minimum-distance-to-type-a-word-using-two-fingers/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} word
 * @return {number}
 */
var minTimeToType = function (word) {
  var ans = 0;
  var position = 97;
  for (var i = 0; i < word.length; i++) {
    var diff = Math.abs(word.charCodeAt(i) - position);
    position = word.charCodeAt(i);
    if (diff < 13) ans += diff + 1;
    else ans += 27 - diff;
  }
  return ans;
};
```
