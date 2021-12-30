# [1122. Relative Sort Array (Easy)](https://leetcode.com/problems/relative-sort-array/)

<p>Given two arrays <code>arr1</code> and <code>arr2</code>, the elements of <code>arr2</code> are distinct, and all elements in <code>arr2</code> are also in <code>arr1</code>.</p>

<p>Sort the elements of <code>arr1</code> such that the relative ordering of items in <code>arr1</code> are the same as in <code>arr2</code>. Elements that do not appear in <code>arr2</code> should be placed at the end of <code>arr1</code> in <strong>ascending</strong> order.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
<strong>Output:</strong> [2,2,2,1,4,3,3,9,6,7,19]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> arr1 = [28,6,22,8,44,17], arr2 = [22,28,8,6]
<strong>Output:</strong> [22,28,8,6,17,44]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= arr1.length, arr2.length &lt;= 1000</code></li>
	<li><code>0 &lt;= arr1[i], arr2[i] &lt;= 1000</code></li>
	<li>All the elements of <code>arr2</code> are <strong>distinct</strong>.</li>
	<li>Each&nbsp;<code>arr2[i]</code> is in <code>arr1</code>.</li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Sorting](https://leetcode.com/tag/sorting/), [Counting Sort](https://leetcode.com/tag/counting-sort/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/relative-sort-array/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} arr1
 * @param {number[]} arr2
 * @return {number[]}
 */
var relativeSortArray = function (arr1, arr2) {
  let map = new Map();
  for (let i = 0; i < arr1.length; i++) {
    if (!map.has(arr1[i])) map.set(arr1[i], 1);
    else map.set(arr1[i], map.get(arr1[i]) + 1);
  }
  let ans = [];
  for (let j = 0; j < arr2.length; j++) {
    let count = map.get(arr2[j]);
    for (let cnt = 0; cnt < count; cnt++) {
      ans.push(arr2[j]);
      if (cnt == count - 1) map.delete(arr2[j]);
    }
  }
  let remain = [];
  for (let key of map.keys()) {
    let count = map.get(key);
    console.log(key, count);
    for (let n = 0; n < count; n++) {
      remain.push(key);
    }
  }
  remain.sort(function (a, b) {
    return a - b;
  });
  return ans.concat(remain);
};
```

let x = new Map();
x.set(1, 2);
x.a = 3;
for (let key in x) // can only enumerate a (properties), not key value pairs
for (let key of x.keys()) // access all the keys
x.forEach((val, key) => {}) // access all the key value pairs
