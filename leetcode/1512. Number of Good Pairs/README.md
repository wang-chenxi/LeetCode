# [1512. Number of Good Pairs (Easy)](https://leetcode.com/problems/number-of-good-pairs/)

<p>Given an array of integers <code>nums</code>, return <em>the number of <strong>good pairs</strong></em>.</p>

<p>A pair <code>(i, j)</code> is called <em>good</em> if <code>nums[i] == nums[j]</code> and <code>i</code> &lt; <code>j</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3,1,1,3]
<strong>Output:</strong> 4
<strong>Explanation:</strong> There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,1,1]
<strong>Output:</strong> 6
<strong>Explanation:</strong> Each pair in the array are <em>good</em>.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3]
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 100</code></li>
	<li><code>1 &lt;= nums[i] &lt;= 100</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Math](https://leetcode.com/tag/math/), [Counting](https://leetcode.com/tag/counting/)

**Similar Questions**:

- [Number of Pairs of Interchangeable Rectangles (Medium)](https://leetcode.com/problems/number-of-pairs-of-interchangeable-rectangles/)
- [Substrings That Begin and End With the Same Letter (Medium)](https://leetcode.com/problems/substrings-that-begin-and-end-with-the-same-letter/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/number-of-good-pairs/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var numIdenticalPairs = function (nums) {
  var array = Array(100).fill(0);
  for (var i = 0; i < nums.length; i++) {
    array[nums[i]]++;
  }
  var ans = 0;
  for (var j = 0; j < 100; j++) {
    if (array[j] > 1) {
      ans += (array[j] * (array[j] - 1)) / 2;
    }
  }
  return ans;
};
```
