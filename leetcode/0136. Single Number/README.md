# [136. Single Number (Easy)](https://leetcode.com/problems/single-number/)

<p>Given a <strong>non-empty</strong>&nbsp;array of integers <code>nums</code>, every element appears <em>twice</em> except for one. Find that single one.</p>

<p>You must&nbsp;implement a solution with a linear runtime complexity and use&nbsp;only constant&nbsp;extra space.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [2,2,1]
<strong>Output:</strong> 1
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [4,1,2,1,2]
<strong>Output:</strong> 4
</pre><p><strong>Example 3:</strong></p>
<pre><strong>Input:</strong> nums = [1]
<strong>Output:</strong> 1
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 3 * 10<sup>4</sup></code></li>
	<li><code>-3 * 10<sup>4</sup> &lt;= nums[i] &lt;= 3 * 10<sup>4</sup></code></li>
	<li>Each element in the array appears twice except for one element which appears only once.</li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Bit Manipulation](https://leetcode.com/tag/bit-manipulation/)

**Similar Questions**:

- [Single Number II (Medium)](https://leetcode.com/problems/single-number-ii/)
- [Single Number III (Medium)](https://leetcode.com/problems/single-number-iii/)
- [Missing Number (Easy)](https://leetcode.com/problems/missing-number/)
- [Find the Duplicate Number (Medium)](https://leetcode.com/problems/find-the-duplicate-number/)
- [Find the Difference (Easy)](https://leetcode.com/problems/find-the-difference/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/single-number/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var singleNumber = function(nums) {
    var set = new Set()
    for(var i = 0;i<nums.length;i++){
        if(set.has(nums[i])){
            set.delete(nums[i])
        }else set.add(nums[i])
    }
    return set.values().next().value
};

```
