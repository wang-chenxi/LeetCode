# [1486. XOR Operation in an Array (Easy)](https://leetcode.com/problems/xor-operation-in-an-array/)

<p>You are given an integer <code>n</code> and an integer <code>start</code>.</p>

<p>Define an array <code>nums</code> where <code>nums[i] = start + 2 * i</code> (<strong>0-indexed</strong>) and <code>n == nums.length</code>.</p>

<p>Return <em>the bitwise XOR of all elements of</em> <code>nums</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 5, start = 0
<strong>Output:</strong> 8
<strong>Explanation:</strong> Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
Where "^" corresponds to bitwise XOR operator.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 4, start = 3
<strong>Output:</strong> 8
<strong>Explanation:</strong> Array nums is equal to [3, 5, 7, 9] where (3 ^ 5 ^ 7 ^ 9) = 8.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 1000</code></li>
	<li><code>0 &lt;= start &lt;= 1000</code></li>
	<li><code>n == nums.length</code></li>
</ul>

**Related Topics**:  
[Math](https://leetcode.com/tag/math/), [Bit Manipulation](https://leetcode.com/tag/bit-manipulation/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/xor-operation-in-an-array/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @param {number} start
 * @return {number}
 */
var xorOperation = function (n, start) {
  var ans = start;
  var count = 1;
  while (count < n) {
    ans = ans ^ (start + 2 * count);
    console.log(start + 2 * count);
    count++;
  }
  return ans;
};
```
