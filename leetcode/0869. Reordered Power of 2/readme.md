# [869. Reordered Power of 2 (Medium)](https://leetcode.com/problems/reordered-power-of-2/)

<p>You are given an integer <code>n</code>. We reorder the digits in any order (including the original order) such that the leading digit is not zero.</p>

<p>Return <code>true</code> <em>if and only if we can do this so that the resulting number is a power of two</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 1
<strong>Output:</strong> true
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 10
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 10<sup>9</sup></code></li>
</ul>


**Related Topics**:  
[Math](https://leetcode.com/tag/math/), [Sorting](https://leetcode.com/tag/sorting/), [Counting](https://leetcode.com/tag/counting/), [Enumeration](https://leetcode.com/tag/enumeration/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/reordered-power-of-2/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @return {boolean}
 */
var reorderedPowerOf2 = function(N) {
    let res = N.toString().split("").sort().join("")
    for (let i = 0; i < 30; i++)
        if ((1 << i).toString().split("").sort().join("") === res) return true
    return false
};

```