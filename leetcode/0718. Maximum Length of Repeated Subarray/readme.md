# [718. Maximum Length of Repeated Subarray (Medium)](https://leetcode.com/problems/maximum-length-of-repeated-subarray/)

<p>Given two integer arrays <code>nums1</code> and <code>nums2</code>, return <em>the maximum length of a subarray that appears in <strong>both</strong> arrays</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums1 = [1,2,3,2,1], nums2 = [3,2,1,4,7]
<strong>Output:</strong> 3
<strong>Explanation:</strong> The repeated subarray with maximum length is [3,2,1].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums1 = [0,0,0,0,0], nums2 = [0,0,0,0,0]
<strong>Output:</strong> 5
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums1.length, nums2.length &lt;= 1000</code></li>
	<li><code>0 &lt;= nums1[i], nums2[i] &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Binary Search](https://leetcode.com/tag/binary-search/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Sliding Window](https://leetcode.com/tag/sliding-window/), [Rolling Hash](https://leetcode.com/tag/rolling-hash/), [Hash Function](https://leetcode.com/tag/hash-function/)

**Similar Questions**:
* [Minimum Size Subarray Sum (Medium)](https://leetcode.com/problems/minimum-size-subarray-sum/)
* [Longest Common Subpath (Hard)](https://leetcode.com/problems/longest-common-subpath/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/maximum-length-of-repeated-subarray/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findLength = function (nums1, nums2) {
  const dp = new Array(nums1.length + 1).fill(0).map(() => new Array(nums2.length + 1).fill(0));
  let maxLength = 0;
  for (let i = 1; i <= nums1.length; i++)
    for (let j = 1; j <= nums2.length; j++)
      if (nums1[i - 1] == nums2[j - 1]) {
        dp[i][j] = 1 + dp[i - 1][j - 1];
        maxLength = Math.max(maxLength, dp[i][j]);
      }
  return maxLength;
};

```