# [985. Sum of Even Numbers After Queries (Medium)](https://leetcode.com/problems/sum-of-even-numbers-after-queries/)

<p>You are given an integer array <code>nums</code> and an array <code>queries</code> where <code>queries[i] = [val<sub>i</sub>, index<sub>i</sub>]</code>.</p>

<p>For each query <code>i</code>, first, apply <code>nums[index<sub>i</sub>] = nums[index<sub>i</sub>] + val<sub>i</sub></code>, then print the sum of the even values of <code>nums</code>.</p>

<p>Return <em>an integer array </em><code>answer</code><em> where </em><code>answer[i]</code><em> is the answer to the </em><code>i<sup>th</sup></code><em> query</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
<strong>Output:</strong> [8,6,2,4]
<strong>Explanation:</strong> At the beginning, the array is [1,2,3,4].
After adding 1 to nums[0], the array is [2,2,3,4], and the sum of even values is 2 + 2 + 4 = 8.
After adding -3 to nums[1], the array is [2,-1,3,4], and the sum of even values is 2 + 4 = 6.
After adding -4 to nums[0], the array is [-2,-1,3,4], and the sum of even values is -2 + 4 = 2.
After adding 2 to nums[3], the array is [-2,-1,3,6], and the sum of even values is -2 + 6 = 4.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1], queries = [[4,0]]
<strong>Output:</strong> [0]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-10<sup>4</sup> &lt;= nums[i] &lt;= 10<sup>4</sup></code></li>
	<li><code>1 &lt;= queries.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-10<sup>4</sup> &lt;= val<sub>i</sub> &lt;= 10<sup>4</sup></code></li>
	<li><code>0 &lt;= index<sub>i</sub> &lt; nums.length</code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Simulation](https://leetcode.com/tag/simulation/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/sum-of-even-numbers-after-queries/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number[][]} queries
 * @return {number[]}
 */
var sumEvenAfterQueries = function(nums, queries) {
    var base = 0;
    for(var num of nums){
        base += num%2==0? num:0;
    }
    var ans = []
    for(var i = 0; i < queries.length;i++){
        base -= nums[queries[i][1]]%2==0? nums[queries[i][1]]:0
        nums[queries[i][1]]+=queries[i][0]     
        base += nums[queries[i][1]]%2==0? nums[queries[i][1]]:0
        ans.push(base)
    }
    return ans
}
        base += nums[queries[i][1]]%2==0? nums[queries[i][1]]:0

```