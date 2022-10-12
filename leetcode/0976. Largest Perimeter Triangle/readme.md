# [976. Largest Perimeter Triangle (Easy)](https://leetcode.com/problems/largest-perimeter-triangle/)

<p>Given an integer array <code>nums</code>, return <em>the largest perimeter of a triangle with a non-zero area, formed from three of these lengths</em>. If it is impossible to form any triangle of a non-zero area, return <code>0</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [2,1,2]
<strong>Output:</strong> 5
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,1]
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>3 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>1 &lt;= nums[i] &lt;= 10<sup>6</sup></code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Math](https://leetcode.com/tag/math/), [Greedy](https://leetcode.com/tag/greedy/), [Sorting](https://leetcode.com/tag/sorting/)

**Similar Questions**:
* [Largest Triangle Area (Easy)](https://leetcode.com/problems/largest-triangle-area/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/largest-perimeter-triangle/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var largestPerimeter = function(nums) {
    nums.sort(function(a,b){
        return b - a
    })
    for(var i = 0;i<nums.length-2;i++){
        if(nums[i]<(nums[i+1]+nums[i+2])) return nums[i]+nums[i+1]+nums[i+2]
        }
    return 0
};

```