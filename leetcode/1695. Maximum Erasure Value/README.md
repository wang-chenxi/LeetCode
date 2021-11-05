# [1695. Maximum Erasure Value (Medium)](https://leetcode.com/problems/maximum-erasure-value/)

<p>You are given an array of positive integers <code>nums</code> and want to erase a subarray containing&nbsp;<strong>unique elements</strong>. The <strong>score</strong> you get by erasing the subarray is equal to the <strong>sum</strong> of its elements.</p>

<p>Return <em>the <strong>maximum score</strong> you can get by erasing <strong>exactly one</strong> subarray.</em></p>

<p>An array <code>b</code> is called to be a <span class="tex-font-style-it">subarray</span> of <code>a</code> if it forms a contiguous subsequence of <code>a</code>, that is, if it is equal to <code>a[l],a[l+1],...,a[r]</code> for some <code>(l,r)</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [4,2,4,5,6]
<strong>Output:</strong> 17
<strong>Explanation:</strong> The optimal subarray here is [2,4,5,6].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [5,2,1,2,5,2,1,2,5]
<strong>Output:</strong> 8
<strong>Explanation:</strong> The optimal subarray here is [5,2,1] or [1,2,5].
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>1 &lt;= nums[i] &lt;= 10<sup>4</sup></code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Sliding Window](https://leetcode.com/tag/sliding-window/)

**Similar Questions**:

- [Longest Substring Without Repeating Characters (Medium)](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/maximum-erasure-value/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var maximumUniqueSubarray = function(nums) {
    var i = 0, j = 0, sum = 0;
    var max = 0,N=nums.length;
    var set = new Set();
    for(;j<N;j++){
        if(!set.has(nums[j])){
            sum += nums[j]
        }else{
            for(;nums[i]!=nums[j];i++){
                sum -= nums[i]
                set.delete(nums[i])
            }
            ++i;
        }
        set.add(nums[j])
        max = Math.max(max,sum)
    }
    return max
}

```
