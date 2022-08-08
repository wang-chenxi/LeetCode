# [300. Longest Increasing Subsequence (Medium)](https://leetcode.com/problems/longest-increasing-subsequence/)

<p>Given an integer array <code>nums</code>, return the length of the longest strictly increasing subsequence.</p>

<p>A <strong>subsequence</strong> is a sequence that can be derived from an array by deleting some or no elements without changing the order of the remaining elements. For example, <code>[3,6,2,7]</code> is a subsequence of the array <code>[0,3,1,6,2,2,7]</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [10,9,2,5,3,7,101,18]
<strong>Output:</strong> 4
<strong>Explanation:</strong> The longest increasing subsequence is [2,3,7,101], therefore the length is 4.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [0,1,0,3,2,3]
<strong>Output:</strong> 4
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [7,7,7,7,7,7,7]
<strong>Output:</strong> 1
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 2500</code></li>
	<li><code>-10<sup>4</sup> &lt;= nums[i] &lt;= 10<sup>4</sup></code></li>
</ul>

<p>&nbsp;</p>
<p><b>Follow up:</b>&nbsp;Can you come up with an algorithm that runs in&nbsp;<code>O(n log(n))</code> time complexity?</p>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Binary Search](https://leetcode.com/tag/binary-search/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

**Similar Questions**:
* [Increasing Triplet Subsequence (Medium)](https://leetcode.com/problems/increasing-triplet-subsequence/)
* [Russian Doll Envelopes (Hard)](https://leetcode.com/problems/russian-doll-envelopes/)
* [Maximum Length of Pair Chain (Medium)](https://leetcode.com/problems/maximum-length-of-pair-chain/)
* [Number of Longest Increasing Subsequence (Medium)](https://leetcode.com/problems/number-of-longest-increasing-subsequence/)
* [Minimum ASCII Delete Sum for Two Strings (Medium)](https://leetcode.com/problems/minimum-ascii-delete-sum-for-two-strings/)
* [Minimum Number of Removals to Make Mountain Array (Hard)](https://leetcode.com/problems/minimum-number-of-removals-to-make-mountain-array/)
* [Find the Longest Valid Obstacle Course at Each Position (Hard)](https://leetcode.com/problems/find-the-longest-valid-obstacle-course-at-each-position/)
* [Minimum Operations to Make the Array K-Increasing (Hard)](https://leetcode.com/problems/minimum-operations-to-make-the-array-k-increasing/)
* [Longest Ideal Subsequence (Medium)](https://leetcode.com/problems/longest-ideal-subsequence/)
* [Maximum Number of Books You Can Take (Hard)](https://leetcode.com/problems/maximum-number-of-books-you-can-take/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/longest-increasing-subsequence/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var lengthOfLIS = function(nums) {
    var list = new Array(nums.length).fill(1)
    var ans = 0;
    for(var i = nums.length-1;i>=0;i--){
        var cur = nums[i];
        for(var j=i+1;j<nums.length;j++){
            if(nums[j]>cur){
                list[i]= Math.max(list[i],list[j]+1)
            }
    }
                ans = Math.max(ans,list[i])
    }
    return ans
};

```