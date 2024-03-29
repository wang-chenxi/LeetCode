# [713. Subarray Product Less Than K (Medium)](https://leetcode.com/problems/subarray-product-less-than-k/)

<p>Given an array of integers <code>nums</code> and an integer <code>k</code>, return <em>the number of contiguous subarrays where the product of all the elements in the subarray is strictly less than </em><code>k</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [10,5,2,6], k = 100
<strong>Output:</strong> 8
<strong>Explanation:</strong> The 8 subarrays that have product less than 100 are:
[10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6]
Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3], k = 0
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 3 * 10<sup>4</sup></code></li>
	<li><code>1 &lt;= nums[i] &lt;= 1000</code></li>
	<li><code>0 &lt;= k &lt;= 10<sup>6</sup></code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Sliding Window](https://leetcode.com/tag/sliding-window/)

**Similar Questions**:

- [Maximum Product Subarray (Medium)](https://leetcode.com/problems/maximum-product-subarray/)
- [Maximum Size Subarray Sum Equals k (Medium)](https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/)
- [Subarray Sum Equals K (Medium)](https://leetcode.com/problems/subarray-sum-equals-k/)
- [Two Sum Less Than K (Easy)](https://leetcode.com/problems/two-sum-less-than-k/)

## Solution 1.bruteforce

```JS

// OJ: https://leetcode.com/problems/subarray-product-less-than-k/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numSubarrayProductLessThanK = function(nums, k) {
    var j=0,N=nums.length,cnt=0;
    for(;j<N;j++){
        var product =1;
        for(var i=j;i>=0;i--){
            product *=nums[i]
            if(product>=k) break
            cnt ++
        }
    }
    return cnt
};

```

## Solution 2.Sliding Window

```JS

// OJ: https://leetcode.com/problems/subarray-product-less-than-k/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numSubarrayProductLessThanK = function(nums, k) {
    var j=0,i=0,N=nums.length,cnt=0,product=1;
    for(;j<N;j++){
        product *=nums[j];
        if(product>=k){
            for(;i<=j;i++){
                if(product <k) break
                product = product/nums[i]
            }
        }
        cnt += j-i+1
    }
    return cnt
};
```
