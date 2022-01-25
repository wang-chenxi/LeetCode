# [771. Jewels and Stones (Easy)](https://leetcode.com/problems/jewels-and-stones/)

<p>You're given strings <code>jewels</code> representing the types of stones that are jewels, and <code>stones</code> representing the stones you have. Each character in <code>stones</code> is a type of stone you have. You want to know how many of the stones you have are also jewels.</p>

<p>Letters are case sensitive, so <code>"a"</code> is considered a different type of stone from <code>"A"</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> jewels = "aA", stones = "aAAbbbb"
<strong>Output:</strong> 3
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> jewels = "z", stones = "ZZ"
<strong>Output:</strong> 0
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;=&nbsp;jewels.length, stones.length &lt;= 50</code></li>
	<li><code>jewels</code> and <code>stones</code> consist of only English letters.</li>
	<li>All the characters of&nbsp;<code>jewels</code> are <strong>unique</strong>.</li>
</ul>

**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/jewels-and-stones/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} jewels
 * @param {string} stones
 * @return {number}
 */
var numJewelsInStones = function (jewels, stones) {
  var count = 0;
  var jewelsArr = jewels.split("").sort();
  var stoneArr = stones.split("").sort();
  var i = jewelsArr.shift();
  var j = stoneArr.shift();
  console.log(jewelsArr, stoneArr, i, j);
  while (i && j) {
    while (j < i) {
      j = stoneArr.shift();
      console.log(1);
    }
    while (j == i) {
      count++;
      j = stoneArr.shift();
      console.log(2);
    }
    i = jewelsArr.shift();
    console.log(i, j);
    console.log(3);
  }
  return count;
};
```
