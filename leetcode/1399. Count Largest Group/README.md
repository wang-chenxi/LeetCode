# [1399. Count Largest Group (Easy)](https://leetcode.com/problems/count-largest-group/)

<p>You are given an integer <code>n</code>.</p>

<p>Each number from <code>1</code> to <code>n</code> is grouped according to the sum of its digits.</p>

<p>Return <em>the number of groups that have the largest size</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 13
<strong>Output:</strong> 4
<strong>Explanation:</strong> There are 9 groups in total, they are grouped according sum of its digits of numbers from 1 to 13:
[1,10], [2,11], [3,12], [4,13], [5], [6], [7], [8], [9].
There are 4 groups with largest size.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 2
<strong>Output:</strong> 2
<strong>Explanation:</strong> There are 2 groups [1], [2] of size 1.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 10<sup>4</sup></code></li>
</ul>

**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [Math](https://leetcode.com/tag/math/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/count-largest-group/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @return {number}
 */
var countLargestGroup = function (n) {
  var ans = Array(n).fill(0);
  for (var i = 1; i <= n; i++) {
    var sum = 0;
    var num = i;
    while (num > 0) {
      sum += num % 10;
      num = Math.floor(num / 10);
    }
    ans[sum - 1] += 1;
  }
  var max = 0;
  var count = 1;
  for (var j = 0; j < n; j++) {
    console.log(ans[j]);
    if (ans[j] == max) count++;
    if (ans[j] > max) {
      max = ans[j];
      count = 1;
    }
  }
  return count;
};
```
