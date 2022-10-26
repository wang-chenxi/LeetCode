# [523. Continuous Subarray Sum (Medium)](https://leetcode.com/problems/continuous-subarray-sum/)

<p>Given an integer array <code>nums</code> and an integer <code>k</code>, return <code>true</code> <em>if </em><code>nums</code><em> has a continuous subarray of size <strong>at least two</strong> whose elements sum up to a multiple of</em> <code>k</code><em>, or </em><code>false</code><em> otherwise</em>.</p>

<p>An integer <code>x</code> is a multiple of <code>k</code> if there exists an integer <code>n</code> such that <code>x = n * k</code>. <code>0</code> is <strong>always</strong> a multiple of <code>k</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [23,<u>2,4</u>,6,7], k = 6
<strong>Output:</strong> true
<strong>Explanation:</strong> [2, 4] is a continuous subarray of size 2 whose elements sum up to 6.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [<u>23,2,6,4,7</u>], k = 6
<strong>Output:</strong> true
<strong>Explanation:</strong> [23, 2, 6, 4, 7] is an continuous subarray of size 5 whose elements sum up to 42.
42 is a multiple of 6 because 42 = 7 * 6 and 7 is an integer.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [23,2,6,4,7], k = 13
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>0 &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
	<li><code>0 &lt;= sum(nums[i]) &lt;= 2<sup>31</sup> - 1</code></li>
	<li><code>1 &lt;= k &lt;= 2<sup>31</sup> - 1</code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Math](https://leetcode.com/tag/math/), [Prefix Sum](https://leetcode.com/tag/prefix-sum/)

**Similar Questions**:
* [Subarray Sum Equals K (Medium)](https://leetcode.com/problems/subarray-sum-equals-k/)
* [Minimum Number of Operations to Make Array Continuous (Hard)](https://leetcode.com/problems/minimum-number-of-operations-to-make-array-continuous/)
* [Intervals Between Identical Elements (Medium)](https://leetcode.com/problems/intervals-between-identical-elements/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/continuous-subarray-sum/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {boolean}
 */
var checkSubarraySum = function(nums, k) {
    //a template question
    // check if a rem is repeated, if so, it means that a k's multiple created
    let sum = 0;
    let prevRem = 0;
    var set = new Set();
    for(var n of nums){
        sum += n;
        let rem = sum%=k;
        if(set.has(rem)) return true
        set.add(prevRem)
        prevRem = rem
    }
    return false
};

```