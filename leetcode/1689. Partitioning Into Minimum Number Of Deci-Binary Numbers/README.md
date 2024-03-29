# [1689. Partitioning Into Minimum Number Of Deci-Binary Numbers (Medium)](https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/)

<p>A decimal number is called <strong>deci-binary</strong> if each of its digits is either <code>0</code> or <code>1</code> without any leading zeros. For example, <code>101</code> and <code>1100</code> are <strong>deci-binary</strong>, while <code>112</code> and <code>3001</code> are not.</p>

<p>Given a string <code>n</code> that represents a positive decimal integer, return <em>the <strong>minimum</strong> number of positive <strong>deci-binary</strong> numbers needed so that they sum up to </em><code>n</code><em>.</em></p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = "32"
<strong>Output:</strong> 3
<strong>Explanation:</strong> 10 + 11 + 11 = 32
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = "82734"
<strong>Output:</strong> 8
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> n = "27346209830709182346"
<strong>Output:</strong> 9
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n.length &lt;= 10<sup>5</sup></code></li>
	<li><code>n</code> consists of only digits.</li>
	<li><code>n</code> does not contain any leading zeros and represents a positive integer.</li>
</ul>


**Related Topics**:  
[String](https://leetcode.com/tag/string/), [Greedy](https://leetcode.com/tag/greedy/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} n
 * @return {number}
 */
var minPartitions = function(n) {
    var digit = 0;
    const myArray = n.split("");
    while(myArray.length){
        var cur = myArray.pop()/1
        if(cur>digit) digit = cur
    }
    return digit
};

```