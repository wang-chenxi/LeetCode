# [1207. Unique Number of Occurrences (Easy)](https://leetcode.com/problems/unique-number-of-occurrences/)

<p>Given an array of integers <code>arr</code>, return <code>true</code> if the number of occurrences of each value in the array is <strong>unique</strong>, or <code>false</code> otherwise.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> arr = [1,2,2,1,1,3]
<strong>Output:</strong> true
<strong>Explanation:</strong>&nbsp;The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> arr = [1,2]
<strong>Output:</strong> false
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> arr = [-3,0,1,-3,1,1,1,-3,10,0]
<strong>Output:</strong> true
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= arr.length&nbsp;&lt;= 1000</code></li>
	<li><code>-1000 &lt;= arr[i] &lt;= 1000</code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/unique-number-of-occurrences/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} arr
 * @return {boolean}
 */
var uniqueOccurrences = function(arr) {
    var map = new Map()
    var set = new Set()
    for(var e of arr){
        if(map.has(e)) map.set(e,map.get(e)+1)
        else map.set(e,1)
    }
    for (var [key, value] of map) {
if(set.has(value)) return false
else (set.add(value))
}
    return true
};

```