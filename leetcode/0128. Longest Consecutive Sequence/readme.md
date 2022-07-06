# [128. Longest Consecutive Sequence (Medium)](https://leetcode.com/problems/longest-consecutive-sequence/)

<p>Given an unsorted array of integers <code>nums</code>, return <em>the length of the longest consecutive elements sequence.</em></p>

<p>You must write an algorithm that runs in&nbsp;<code>O(n)</code>&nbsp;time.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [100,4,200,1,3,2]
<strong>Output:</strong> 4
<strong>Explanation:</strong> The longest consecutive elements sequence is <code>[1, 2, 3, 4]</code>. Therefore its length is 4.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [0,3,7,2,5,8,4,6,0,1]
<strong>Output:</strong> 9
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Union Find](https://leetcode.com/tag/union-find/)

**Similar Questions**:

- [Binary Tree Longest Consecutive Sequence (Medium)](https://leetcode.com/problems/binary-tree-longest-consecutive-sequence/)
- [Find Three Consecutive Integers That Sum to a Given Number (Medium)](https://leetcode.com/problems/find-three-consecutive-integers-that-sum-to-a-given-number/)
- [Maximum Consecutive Floors Without Special Floors (Medium)](https://leetcode.com/problems/maximum-consecutive-floors-without-special-floors/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/longest-consecutive-sequence/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var longestConsecutive = function (nums) {
  var set = new Set(nums);
  var max = 0;
  for (var n of set) {
    if (!set.has(n - 1)) {
      let y = n + 1;
      while (set.has(y)) {
        set.delete(y);
        y++;
      }
      max = Math.max(max, y - n);
    }
  }
  return max;
};
```
