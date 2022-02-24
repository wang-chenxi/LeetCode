# [1903. Largest Odd Number in String (Easy)](https://leetcode.com/problems/largest-odd-number-in-string/)

<p>You are given a string <code>num</code>, representing a large integer. Return <em>the <strong>largest-valued odd</strong> integer (as a string) that is a <strong>non-empty substring</strong> of </em><code>num</code><em>, or an empty string </em><code>""</code><em> if no odd integer exists</em>.</p>

<p>A <strong>substring</strong> is a contiguous sequence of characters within a string.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> num = "52"
<strong>Output:</strong> "5"
<strong>Explanation:</strong> The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> num = "4206"
<strong>Output:</strong> ""
<strong>Explanation:</strong> There are no odd numbers in "4206".
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> num = "35427"
<strong>Output:</strong> "35427"
<strong>Explanation:</strong> "35427" is already an odd number.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= num.length &lt;= 10<sup>5</sup></code></li>
	<li><code>num</code> only consists of digits and does not contain any leading zeros.</li>
</ul>

**Related Topics**:  
[Math](https://leetcode.com/tag/math/), [String](https://leetcode.com/tag/string/), [Greedy](https://leetcode.com/tag/greedy/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/largest-odd-number-in-string/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} num
 * @return {string}
 */
var largestOddNumber = function (num) {
  var length = 1;
  var index = num.length;
  while (length < index) {
    var last = num.slice(-1);
    if (last % 2 != 0) return num;
    num = num.slice(0, -1);
    length++;
  }
  if (num % 2 != 0) return num;
  return "";
};
```
