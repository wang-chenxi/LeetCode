# [334. Increasing Triplet Subsequence (Medium)](https://leetcode.com/problems/increasing-triplet-subsequence/)

<p>Given an integer array <code>nums</code>, return <code>true</code><em> if there exists a triple of indices </em><code>(i, j, k)</code><em> such that </em><code>i &lt; j &lt; k</code><em> and </em><code>nums[i] &lt; nums[j] &lt; nums[k]</code>. If no such indices exists, return <code>false</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3,4,5]
<strong>Output:</strong> true
<strong>Explanation:</strong> Any triplet where i &lt; j &lt; k is valid.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [5,4,3,2,1]
<strong>Output:</strong> false
<strong>Explanation:</strong> No triplet exists.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [2,1,5,0,4,6]
<strong>Output:</strong> true
<strong>Explanation:</strong> The triplet (3, 4, 5) is valid because nums[3] == 0 &lt; nums[4] == 4 &lt; nums[5] == 6.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 5 * 10<sup>5</sup></code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you implement a solution that runs in <code>O(n)</code> time complexity and <code>O(1)</code> space complexity?

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Greedy](https://leetcode.com/tag/greedy/)

**Similar Questions**:
* [Longest Increasing Subsequence (Medium)](https://leetcode.com/problems/longest-increasing-subsequence/)
* [Count Special Quadruplets (Easy)](https://leetcode.com/problems/count-special-quadruplets/)
* [Count Good Triplets in an Array (Hard)](https://leetcode.com/problems/count-good-triplets-in-an-array/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/increasing-triplet-subsequence/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {boolean}
 */
var increasingTriplet = function(nums) {
    if(nums.length<3) return false
    var smallest = Number.MAX_VALUE
    var smaller = Number.MAX_VALUE
    for(var num of nums){
        if(num<=smallest) smallest = num
        else if(num<=smaller) smaller = num
        else return true
    }
    return false
};

```