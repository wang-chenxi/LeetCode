# [1281. Subtract the Product and Sum of Digits of an Integer (Easy)](https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/)

Given an integer number <code>n</code>, return the difference between the product of its digits and the sum of its digits.

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 234
<strong>Output:</strong> 15 
<b>Explanation:</b> 
Product of digits = 2 * 3 * 4 = 24 
Sum of digits = 2 + 3 + 4 = 9 
Result = 24 - 9 = 15
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 4421
<strong>Output:</strong> 21
<b>Explanation: 
</b>Product of digits = 4 * 4 * 2 * 1 = 32 
Sum of digits = 4 + 4 + 2 + 1 = 11 
Result = 32 - 11 = 21
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 10^5</code></li>
</ul>

**Related Topics**:  
[Math](https://leetcode.com/tag/math/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @return {number}
 */
var subtractProductAndSum = function (n) {
  var arr = [];
  var remain = 0;
  while (n > 0) {
    arr.push(n % 10);
    n = Math.floor(n / 10);
  }
  console.log(arr);
  var sum = 0;
  var product = 1;
  for (var i = 0; i < arr.length; i++) {
    product *= arr[i];
    sum += arr[i];
  }
  return product - sum;
};
```
