# [1493. Longest Subarray of 1's After Deleting One Element (Medium)](https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/)

<p>Given a binary array <code>nums</code>, you should delete one element from it.</p>

<p>Return <em>the size of the longest non-empty subarray containing only </em><code>1</code><em>'s in the resulting array</em>. Return <code>0</code> if there is no such subarray.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,0,1]
<strong>Output:</strong> 3
<strong>Explanation: </strong>After deleting the number in position 2, [1,1,1] contains 3 numbers with value of 1's.</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [0,1,1,1,0,1,1,0,1]
<strong>Output:</strong> 5
<strong>Explanation: </strong>After deleting the number in position 4, [0,1,1,1,1,1,0,1] longest subarray with value of 1's is [1,1,1,1,1].</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,1]
<strong>Output:</strong> 2
<strong>Explanation: </strong>You must delete one element.</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,0,0,1,1,1,0,1]
<strong>Output:</strong> 4
</pre>

<p><strong>Example 5:</strong></p>

<pre><strong>Input:</strong> nums = [0,0,0]
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>nums[i]</code> is either <code>0</code> or <code>1</code>.</li>
</ul>

**Related Topics**:  
[Math](https://leetcode.com/tag/math/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/), [Sliding Window](https://leetcode.com/tag/sliding-window/)

## Solution 1. sliding both sides together

```JS

// OJ: https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var longestSubarray = function(A) {
    var N = A.length, i = 0, j = 0, zero = 0;
    for (; j < N; ++j) {
        zero += A[j] == 0;
        if (zero > 1) {
            zero -= A[i] == 0; // update the state using A[i]
            ++i; // increment i
        }
    }
    return j - i - 1;
};

```

## Solution 2. shrinkable window

```JS

/**
 * @param {number[]} nums
 * @return {number}
 */
var longestSubarray = function(A) {
    var N = A.length, i = 0, j = 0, ans = 0, zero = 0;
    for (; j < N; ++j) {
        zero += A[j] == 0;
        for (; zero > 1; ++i) {
            zero -= A[i] == 0;
        }
        ans = Math.max(ans, j - i);
    }
    return ans
};
```
