# [1460. Make Two Arrays Equal by Reversing Sub-arrays (Easy)](https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/)

<p>You are given two integer arrays of equal length <code>target</code> and <code>arr</code>. In one step, you can select any <strong>non-empty sub-array</strong> of <code>arr</code> and reverse it. You are allowed to make any number of steps.</p>

<p>Return <code>true</code> <em>if you can make </em><code>arr</code><em> equal to </em><code>target</code><em>&nbsp;or </em><code>false</code><em> otherwise</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> target = [1,2,3,4], arr = [2,4,1,3]
<strong>Output:</strong> true
<strong>Explanation:</strong> You can follow the next steps to convert arr to target:
1- Reverse sub-array [2,4,1], arr becomes [1,4,2,3]
2- Reverse sub-array [4,2], arr becomes [1,2,4,3]
3- Reverse sub-array [4,3], arr becomes [1,2,3,4]
There are multiple ways to convert arr to target, this is not the only way to do so.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> target = [7], arr = [7]
<strong>Output:</strong> true
<strong>Explanation:</strong> arr is equal to target without any reverses.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> target = [3,7,9], arr = [3,7,11]
<strong>Output:</strong> false
<strong>Explanation:</strong> arr does not have value 9 and it can never be converted to target.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>target.length == arr.length</code></li>
	<li><code>1 &lt;= target.length &lt;= 1000</code></li>
	<li><code>1 &lt;= target[i] &lt;= 1000</code></li>
	<li><code>1 &lt;= arr[i] &lt;= 1000</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Sorting](https://leetcode.com/tag/sorting/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} target
 * @param {number[]} arr
 * @return {boolean}
 */
var canBeEqual = function (target, arr) {
  target = target.sort();
  arr = arr.sort();
  while (target[0]) {
    if (target.pop() != arr.pop()) return false;
  }
  return true;
};
```
