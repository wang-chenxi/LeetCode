# [1248. Count Number of Nice Subarrays (Medium)](https://leetcode.com/problems/count-number-of-nice-subarrays/)

<p>Given an array of integers <code>nums</code> and an integer <code>k</code>. A continuous subarray is called <strong>nice</strong> if there are <code>k</code> odd numbers on it.</p>

<p>Return <em>the number of <strong>nice</strong> sub-arrays</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,2,1,1], k = 3
<strong>Output:</strong> 2
<strong>Explanation:</strong> The only sub-arrays with 3 odd numbers are [1,1,2,1] and [1,2,1,1].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [2,4,6], k = 1
<strong>Output:</strong> 0
<strong>Explanation:</strong> There is no odd numbers in the array.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [2,2,2,1,2,2,1,2,2,2], k = 2
<strong>Output:</strong> 16
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 50000</code></li>
	<li><code>1 &lt;= nums[i] &lt;= 10^5</code></li>
	<li><code>1 &lt;= k &lt;= nums.length</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Math](https://leetcode.com/tag/math/), [Sliding Window](https://leetcode.com/tag/sliding-window/)

## Solution 1. Three Pointer

```JS

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numberOfSubarrays = function(A, K) {
    // i -> first left edge that contains k odd numbers
    // j -> first left edge that contains k-1 odd numbers
    // k -> right edge
    // count += j - i
    // K = 3
    //  i    j k
    //  v    v v
    // 10 0 11 1
    var i = 0, j = 0, k = 0, N = A.length, ans = 0, cnt1 = 0, cnt2 = 0;
    for (; k < N; ++k) {
        cnt1 += A[k] % 2;
        cnt2 += A[k] % 2;
        while (cnt1 > K) {
            cnt1 -= A[i] % 2;
            ++i;
        }
        while (cnt2 > K - 1) {
            cnt2 -= A[j] % 2;
            ++j;
        }
        if (cnt1 == K) ans += j - i;
    }
    return ans;
};

```

## Solution 2. At Most K

```JS
// OJ: https://leetcode.com/problems/count-number-of-nice-subarrays/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numberOfSubarrays = function(A, K) {
    // all the windows with EXACTLY K odd numbers =
    // all the windows with at most K odd numbers
    // - all the windows with at most K - 1 odd numbers
    var atMost = function (K) {
        var i = 0, j = 0, N = A.length, ans = 0, cnt = 0;
        for (; j < N; ++j) {
            cnt += A[j] % 2;
            while (cnt > K) {
                cnt -= A[i] % 2;
                ++i;
            }
            ans += j - i + 1;
        }
        return ans;
    }
    return atMost(K) - atMost(K - 1);
};

```
