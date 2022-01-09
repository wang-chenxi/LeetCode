# [1550. Three Consecutive Odds (Easy)](https://leetcode.com/problems/three-consecutive-odds/)

Given an integer array <code>arr</code>, return <code>true</code>&nbsp;if there are three consecutive odd numbers in the array. Otherwise, return&nbsp;<code>false</code>.

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> arr = [2,6,4,1]
<strong>Output:</strong> false
<b>Explanation:</b> There are no three consecutive odds.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> arr = [1,2,34,3,4,5,7,23,12]
<strong>Output:</strong> true
<b>Explanation:</b> [5,7,23] are three consecutive odds.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= arr.length &lt;= 1000</code></li>
	<li><code>1 &lt;= arr[i] &lt;= 1000</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/three-consecutive-odds/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} arr
 * @return {boolean}
 */
var threeConsecutiveOdds = function (arr) {
  if (arr.length < 3) return false;
  var count = 0;
  while (arr.length > 0) {
    if (arr.shift() % 2 == 1) {
      count++;
    } else {
      count = 0;
    }
    if (count == 3) break;
  }
  if (count > 2) return true;
  else return false;
};
```
