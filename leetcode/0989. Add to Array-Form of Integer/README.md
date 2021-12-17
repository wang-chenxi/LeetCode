# [989. Add to Array-Form of Integer (Easy)](https://leetcode.com/problems/add-to-array-form-of-integer/)

<p>The <strong>array-form</strong> of an integer <code>num</code> is an array representing its digits in left to right order.</p>

<ul>
	<li>For example, for <code>num = 1321</code>, the array form is <code>[1,3,2,1]</code>.</li>
</ul>

<p>Given <code>num</code>, the <strong>array-form</strong> of an integer, and an integer <code>k</code>, return <em>the <strong>array-form</strong> of the integer</em> <code>num + k</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> num = [1,2,0,0], k = 34
<strong>Output:</strong> [1,2,3,4]
<strong>Explanation:</strong> 1200 + 34 = 1234
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> num = [2,7,4], k = 181
<strong>Output:</strong> [4,5,5]
<strong>Explanation:</strong> 274 + 181 = 455
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> num = [2,1,5], k = 806
<strong>Output:</strong> [1,0,2,1]
<strong>Explanation:</strong> 215 + 806 = 1021
</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> num = [9,9,9,9,9,9,9,9,9,9], k = 1
<strong>Output:</strong> [1,0,0,0,0,0,0,0,0,0,0]
<strong>Explanation:</strong> 9999999999 + 1 = 10000000000
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= num.length &lt;= 10<sup>4</sup></code></li>
	<li><code>0 &lt;= num[i] &lt;= 9</code></li>
	<li><code>num</code>&nbsp;does not contain any leading zeros except for the zero itself.</li>
	<li><code>1 &lt;= k &lt;= 10<sup>4</sup></code></li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Math](https://leetcode.com/tag/math/)

**Similar Questions**:

- [Add Two Numbers (Medium)](https://leetcode.com/problems/add-two-numbers/)
- [Plus One (Easy)](https://leetcode.com/problems/plus-one/)
- [Add Binary (Easy)](https://leetcode.com/problems/add-binary/)
- [Add Strings (Easy)](https://leetcode.com/problems/add-strings/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/add-to-array-form-of-integer/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} num
 * @param {number} k
 * @return {number[]}
 */
var addToArrayForm = function (num, k) {
  var carry = k;
  for (var i = num.length - 1; i >= 0; i--) {
    if (carry == 0) break;
    carry += num[i];
    num[i] = carry % 10;
    carry = Math.floor(carry / 10);
  }
  if (carry) {
    var digits = carry.toString().split("");
    console.log(digits);
    for (var j = digits.length - 1; j >= 0; j--) {
      var digit = digits[j];
      num.unshift(digit);
    }
  }
  return num;
};
```
