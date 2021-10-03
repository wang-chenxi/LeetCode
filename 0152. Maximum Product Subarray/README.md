# [152. Maximum Product Subarray (Medium)](https://leetcode.com/problems/maximum-product-subarray/)

<p>Given an integer array <code>nums</code>, find a contiguous non-empty subarray within the array that has the largest product, and return <em>the product</em>.</p>

<p>It is <strong>guaranteed</strong> that the answer will fit in a <strong>32-bit</strong> integer.</p>

<p>A <strong>subarray</strong> is a contiguous subsequence of the array.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [2,3,-2,4]
<strong>Output:</strong> 6
<strong>Explanation:</strong> [2,3] has the largest product 6.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [-2,0,-1]
<strong>Output:</strong> 0
<strong>Explanation:</strong> The result cannot be 2, because [-2,-1] is not a subarray.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 2 * 10<sup>4</sup></code></li>
	<li><code>-10 &lt;= nums[i] &lt;= 10</code></li>
	<li>The product of any prefix or suffix of <code>nums</code> is <strong>guaranteed</strong> to fit in a <strong>32-bit</strong> integer.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

**Similar Questions**:
* [Maximum Subarray (Easy)](https://leetcode.com/problems/maximum-subarray/)
* [House Robber (Medium)](https://leetcode.com/problems/house-robber/)
* [Product of Array Except Self (Medium)](https://leetcode.com/problems/product-of-array-except-self/)
* [Maximum Product of Three Numbers (Easy)](https://leetcode.com/problems/maximum-product-of-three-numbers/)
* [Subarray Product Less Than K (Medium)](https://leetcode.com/problems/subarray-product-less-than-k/)

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/maximum-product-subarray/
// Author: github.com/wang-chenxi
// Time: O(n)
// Space: O(1)
class Solution {
    public int maxProduct(int[] nums) {
//[2,3,-2,4]
        // ?: 1 1
        // 2:  2 2 (2,2,2)
        // 3: 3 6 (6 6 3)
        // -2: -12 -2 (-6, -12, -2)
        // 4: -48 4 (-48, -8, 4)
        int mn = 1, mx = 1, ans = Integer.MIN_VALUE;
        for (int n : nums) {
            int a = mn * n, b = mx * n;
            mn = Math.min(Math.min(a, b), n);
            mx = Math.max(Math.max(a, b), n);
            ans = Math.max(ans, mx);
        }
        return ans;
    }
}

```

## Solution 2.

```JAVA

class Solution {
    public int maxProduct(int[] nums) {
//[2,3,-2,4]
// 2:2,2,2=>(2,2);
// 3:6,6,3=>(6,3);
//-2:-6,-12,-2=>(-2,-12);
// 4:-8,-48,4 => (4,-48); 
   //if the array is greater than a single element     
   if(nums.length==0){
       return 0;
   } 
   //avoid potential troubles     
   int maxProduct = nums[0];
   int min = nums[0];
   int max = nums[0];     
   for(int m = 1; m<nums.length;m++){
       int n = nums[m];
       int a = min *n;
       int b = max *n;
       min = Math.min(Math.min(a,b),n);
       max = Math.max(Math.max(a,b),n);
       maxProduct = Math.max(max, maxProduct);
   } 
   return maxProduct;     
    }
}

```