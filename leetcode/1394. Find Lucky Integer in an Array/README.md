# [1394. Find Lucky Integer in an Array (Easy)](https://leetcode.com/problems/find-lucky-integer-in-an-array/)

<p>Given an array of integers <code>arr</code>, a <strong>lucky integer</strong> is an integer that has a frequency in the array equal to its value.</p>

<p>Return <em>the largest <strong>lucky integer</strong> in the array</em>. If there is no <strong>lucky integer</strong> return <code>-1</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> arr = [2,2,3,4]
<strong>Output:</strong> 2
<strong>Explanation:</strong> The only lucky number in the array is 2 because frequency[2] == 2.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> arr = [1,2,2,3,3,3]
<strong>Output:</strong> 3
<strong>Explanation:</strong> 1, 2 and 3 are all lucky numbers, return the largest of them.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> arr = [2,2,2,3,3]
<strong>Output:</strong> -1
<strong>Explanation:</strong> There are no lucky numbers in the array.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= arr.length &lt;= 500</code></li>
	<li><code>1 &lt;= arr[i] &lt;= 500</code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Counting](https://leetcode.com/tag/counting/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/find-lucky-integer-in-an-array/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} arr
 * @return {number}
 */
var findLucky = function (arr) {
  var length = arr.length;
  var map = new Map();
  for (var i = 0; i < length; i++) {
    if (!map.has(arr[i])) {
      map.set(arr[i], 1);
    } else {
      map.set(arr[i], map.get(arr[i]) + 1);
    }
  }
  var ans = -1;
  for (let key of map.keys()) {
    if (key == map.get(key) && key > ans) {
      ans = key;
    }
  }
  return ans;
};
```
