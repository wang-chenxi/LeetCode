# [53. Maximum Subarray (Easy)](https://leetcode.com/problems/maximum-subarray/)

<p>Given an integer array <code>nums</code>, find the contiguous subarray (containing at least one number) which has the largest sum and return <em>its sum</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [-2,1,-3,4,-1,2,1,-5,4]
<strong>Output:</strong> 6
<strong>Explanation:</strong> [4,-1,2,1] has the largest sum = 6.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1]
<strong>Output:</strong> 1
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [5,4,-1,7,8]
<strong>Output:</strong> 23
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 3 * 10<sup>4</sup></code></li>
	<li><code>-10<sup>5</sup> &lt;= nums[i] &lt;= 10<sup>5</sup></code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> If you have figured out the <code>O(n)</code> solution, try coding another solution using the <strong>divide and conquer</strong> approach, which is more subtle.

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Divide and Conquer](https://leetcode.com/tag/divide-and-conquer/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

**Similar Questions**:
* [Best Time to Buy and Sell Stock (Easy)](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
* [Maximum Product Subarray (Medium)](https://leetcode.com/problems/maximum-product-subarray/)
* [Degree of an Array (Easy)](https://leetcode.com/problems/degree-of-an-array/)
* [Longest Turbulent Subarray (Medium)](https://leetcode.com/problems/longest-turbulent-subarray/)
* [Maximum Absolute Sum of Any Subarray (Medium)](https://leetcode.com/problems/maximum-absolute-sum-of-any-subarray/)
* [Maximum Subarray Sum After One Operation (Medium)](https://leetcode.com/problems/maximum-subarray-sum-after-one-operation/)

## Solution 1.

```cpp

// OJ: https://leetcode.com/problems/maximum-subarray/
// Author: github.com/wang-chenxi
// Time: O(n)
// Space: O(1)
//This solution focuses on finding the max current values and compare the new sum with current maxSum. 
class Solution {
    public int maxSubArray(int[] nums) {
    int maxSum = nums[0];
    int sum = nums[0];
    for(int i=1;i<nums.length;i++){
       sum = Math.max(nums[i],sum+nums[i]);
       maxSum = Math.max(sum,maxSum);
            }
    return maxSum;    
    }
}

```