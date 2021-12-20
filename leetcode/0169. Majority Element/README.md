# [169. Majority Element (Easy)](https://leetcode.com/problems/majority-element/)

<p>Given an array <code>nums</code> of size <code>n</code>, return <em>the majority element</em>.</p>

<p>The majority element is the element that appears more than <code>⌊n / 2⌋</code> times. You may assume that the majority element always exists in the array.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [3,2,3]
<strong>Output:</strong> 3
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [2,2,1,1,1,2,2]
<strong>Output:</strong> 2
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == nums.length</code></li>
	<li><code>1 &lt;= n &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow-up:</strong> Could you solve the problem in linear time and in <code>O(1)</code> space?

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Divide and Conquer](https://leetcode.com/tag/divide-and-conquer/), [Sorting](https://leetcode.com/tag/sorting/), [Counting](https://leetcode.com/tag/counting/)

**Similar Questions**:

- [Majority Element II (Medium)](https://leetcode.com/problems/majority-element-ii/)
- [Check If a Number Is Majority Element in a Sorted Array (Easy)](https://leetcode.com/problems/check-if-a-number-is-majority-element-in-a-sorted-array/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/majority-element/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var majorityElement = function (nums) {
  if (nums.length == 1) return nums[0];
  var map = new Map();
  var benchmark = (nums.length - 1) / 2;
  for (var i = 0; i < nums.length; i++) {
    if (map.has(nums[i])) {
      map.set(nums[i], map.get(nums[i]) + 1);
      if (map.get(nums[i]) > benchmark) {
        return nums[i];
      }
    } else {
      map.set(nums[i], 1);
    }
  }
};
```
