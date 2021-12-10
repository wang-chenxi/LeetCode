# [35. Search Insert Position (Easy)](https://leetcode.com/problems/search-insert-position/)

<p>Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.</p>

<p>You must&nbsp;write an algorithm with&nbsp;<code>O(log n)</code> runtime complexity.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [1,3,5,6], target = 5
<strong>Output:</strong> 2
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [1,3,5,6], target = 2
<strong>Output:</strong> 1
</pre><p><strong>Example 3:</strong></p>
<pre><strong>Input:</strong> nums = [1,3,5,6], target = 7
<strong>Output:</strong> 4
</pre><p><strong>Example 4:</strong></p>
<pre><strong>Input:</strong> nums = [1,3,5,6], target = 0
<strong>Output:</strong> 0
</pre><p><strong>Example 5:</strong></p>
<pre><strong>Input:</strong> nums = [1], target = 0
<strong>Output:</strong> 0
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-10<sup>4</sup> &lt;= nums[i] &lt;= 10<sup>4</sup></code></li>
	<li><code>nums</code> contains <strong>distinct</strong> values sorted in <strong>ascending</strong> order.</li>
	<li><code>-10<sup>4</sup> &lt;= target &lt;= 10<sup>4</sup></code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Binary Search](https://leetcode.com/tag/binary-search/)

**Similar Questions**:

- [First Bad Version (Easy)](https://leetcode.com/problems/first-bad-version/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/search-insert-position/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function(nums, target) {
    if(target<nums[0]) return 0;
    var leftIndex = 0;
    var rightIndex = nums.length-1;
    var ans;
    while(true){
        var mid = Math.floor((leftIndex+rightIndex)/2)
        console.log(mid)
        if(target==nums[mid]){
            return ans = mid
        }else if(target>nums[rightIndex]) return ans = rightIndex+1;
        else if(target<nums[leftIndex]) return ans = leftIndex;
        else if(target>nums[mid]) leftIndex = mid+1
        else rightIndex = mid
    }
    return ans
};

```
