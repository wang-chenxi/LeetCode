# [349. Intersection of Two Arrays (Easy)](https://leetcode.com/problems/intersection-of-two-arrays/)

<p>Given two integer arrays <code>nums1</code> and <code>nums2</code>, return <em>an array of their intersection</em>. Each element in the result must be <strong>unique</strong> and you may return the result in <strong>any order</strong>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums1 = [1,2,2,1], nums2 = [2,2]
<strong>Output:</strong> [2]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums1 = [4,9,5], nums2 = [9,4,9,8,4]
<strong>Output:</strong> [9,4]
<strong>Explanation:</strong> [4,9] is also accepted.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums1.length, nums2.length &lt;= 1000</code></li>
	<li><code>0 &lt;= nums1[i], nums2[i] &lt;= 1000</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Two Pointers](https://leetcode.com/tag/two-pointers/), [Binary Search](https://leetcode.com/tag/binary-search/), [Sorting](https://leetcode.com/tag/sorting/)

**Similar Questions**:

- [Intersection of Two Arrays II (Easy)](https://leetcode.com/problems/intersection-of-two-arrays-ii/)
- [Intersection of Three Sorted Arrays (Easy)](https://leetcode.com/problems/intersection-of-three-sorted-arrays/)

## Testcases

```
[1,2,2,1]
[2,2]
[4,9,5]
[9,4,9,8,4]
```

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/intersection-of-two-arrays/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[]}
 */
var intersection = function(nums1, nums2) {
    var set = new Set()
    for(var i = 0; i<nums1.length;i++){
        set.add(nums1[i]);
    }
    var resultSet = new Set();
    for (var j = 0;j<nums2.length;j++){
        if(set.has(nums2[j])){
resultSet.add(nums2[j]);
        }
    }
    var result = []
    for(var n of resultSet){
        result.push(n);
    }
    return result
};

```
