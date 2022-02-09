# [728. Self Dividing Numbers (Easy)](https://leetcode.com/problems/self-dividing-numbers/)

<p>A <strong>self-dividing number</strong> is a number that is divisible by every digit it contains.</p>

<ul>
	<li>For example, <code>128</code> is <strong>a self-dividing number</strong> because <code>128 % 1 == 0</code>, <code>128 % 2 == 0</code>, and <code>128 % 8 == 0</code>.</li>
</ul>

<p>A <strong>self-dividing number</strong> is not allowed to contain the digit zero.</p>

<p>Given two integers <code>left</code> and <code>right</code>, return <em>a list of all the <strong>self-dividing numbers</strong> in the range</em> <code>[left, right]</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> left = 1, right = 22
<strong>Output:</strong> [1,2,3,4,5,6,7,8,9,11,12,15,22]
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> left = 47, right = 85
<strong>Output:</strong> [48,55,66,77]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= left &lt;= right &lt;= 10<sup>4</sup></code></li>
</ul>

**Related Topics**:  
[Math](https://leetcode.com/tag/math/)

**Similar Questions**:

- [Perfect Number (Easy)](https://leetcode.com/problems/perfect-number/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/self-dividing-numbers/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} left
 * @param {number} right
 * @return {number[]}
 */
var selfDividingNumbers = function (left, right) {
  var ans = [];
  for (var i = left; i <= right; i++) {
    var dividen = i % 10;
    var target = i;
    while (dividen != 0) {
      console.log(dividen, i);
      if (target % dividen != 0) {
        break;
      } else {
        i = Math.floor(i / 10);
        dividen = i % 10;
      }
    }
    if (dividen == 0 && i == 0) ans.push(target);
    i = target;
  }
  return ans;
};
```
