# [217. Contains Duplicate (Easy)](https://leetcode.com/problems/contains-duplicate/)

<p>Given an integer array <code>nums</code>, return <code>true</code> if any value appears <strong>at least twice</strong> in the array, and return <code>false</code> if every element is distinct.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [1,2,3,1]
<strong>Output:</strong> true
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [1,2,3,4]
<strong>Output:</strong> false
</pre><p><strong>Example 3:</strong></p>
<pre><strong>Input:</strong> nums = [1,1,1,3,3,4,3,2,4,2]
<strong>Output:</strong> true
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/)

**Similar Questions**:
* [Contains Duplicate II (Easy)](https://leetcode.com/problems/contains-duplicate-ii/)
* [Contains Duplicate III (Medium)](https://leetcode.com/problems/contains-duplicate-iii/)

## Solutions.

```cpp
// OJ: https://leetcode.com/problems/contains-duplicate/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
    //solution 1 set
    var set = new Set();
    for (let i = 0; i < nums.length; ++i) {
        if (set.has(nums[i])) {
            return true;
        }
        set.add(nums[i]);
    }
    return false;

    //solution 2 map
    var map =new Map();
    for(i=0;i<nums.length;i++){
        if(map.has(nums[i])){
           return true;
           }else{
            map.set(nums[i],i)
        }
    }
    return false;
};
```