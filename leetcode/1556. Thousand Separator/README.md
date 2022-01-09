# [1556. Thousand Separator (Easy)](https://leetcode.com/problems/thousand-separator/)

<p>Given an integer <code>n</code>, add a dot (".") as the thousands separator and return it in string format.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 987
<strong>Output:</strong> "987"
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 1234
<strong>Output:</strong> "1.234"
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= n &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

**Related Topics**:  
[String](https://leetcode.com/tag/string/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/thousand-separator/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @return {string}
 */
var thousandSeparator = function (n) {
  var ans = "";
  var count = 0;
  while (n > 0) {
    if (count % 3 == 0 && count != 0) {
      ans = "." + ans;
    }
    var num = n % 10;
    ans = num + ans;
    n = Math.floor(n / 10);
    count++;
  }
  return ans;
};
```
