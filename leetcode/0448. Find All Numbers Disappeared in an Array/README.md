# [448. Find All Numbers Disappeared in an Array (Easy)](https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/)

<p>Given an array <code>nums</code> of <code>n</code> integers where <code>nums[i]</code> is in the range <code>[1, n]</code>, return <em>an array of all the integers in the range</em> <code>[1, n]</code> <em>that do not appear in</em> <code>nums</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [4,3,2,7,8,2,3,1]
<strong>Output:</strong> [5,6]
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [1,1]
<strong>Output:</strong> [2]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == nums.length</code></li>
	<li><code>1 &lt;= n &lt;= 10<sup>5</sup></code></li>
	<li><code>1 &lt;= nums[i] &lt;= n</code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> Could you do it without extra space and in <code>O(n)</code> runtime? You may assume the returned list does not count as extra space.</p>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/)

**Similar Questions**:

- [First Missing Positive (Hard)](https://leetcode.com/problems/first-missing-positive/)
- [Find All Duplicates in an Array (Medium)](https://leetcode.com/problems/find-all-duplicates-in-an-array/)
- [Find Unique Binary String (Medium)](https://leetcode.com/problems/find-unique-binary-string/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var findDisappearedNumbers = function (nums) {
  nums.sort(function (a, b) {
    return a > b ? 1 : -1;
  });
  var j = 0;
  var ans = [];
  var i = 1;
  while (j < nums.length) {
    while (nums[j] == nums[j - 1]) j++;
    if (j >= nums.length) break;
    if (i != nums[j]) {
      ans.push(i);
    } else {
      j++;
    }
    i++;
  }
  for (; i <= nums.length; i++) {
    console.log(i, nums.length);
    ans.push(i);
  }
  return ans;
};
```
