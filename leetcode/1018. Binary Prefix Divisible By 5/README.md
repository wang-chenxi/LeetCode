# [1018. Binary Prefix Divisible By 5 (Easy)](https://leetcode.com/problems/binary-prefix-divisible-by-5/)

<p>You are given a binary array <code>nums</code> (<strong>0-indexed</strong>).</p>

<p>We define <code>x<sub>i</sub></code> as the number whose binary representation is the subarray <code>nums[0..i]</code> (from most-significant-bit to least-significant-bit).</p>

<ul>
	<li>For example, if <code>nums = [1,0,1]</code>, then <code>x<sub>0</sub> = 1</code>, <code>x<sub>1</sub> = 2</code>, and <code>x<sub>2</sub> = 5</code>.</li>
</ul>

<p>Return <em>an array of booleans </em><code>answer</code><em> where </em><code>answer[i]</code><em> is </em><code>true</code><em> if </em><code>x<sub>i</sub></code><em> is divisible by </em><code>5</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [0,1,1]
<strong>Output:</strong> [true,false,false]
<strong>Explanation:</strong> The input numbers in binary are 0, 01, 011; which are 0, 1, and 3 in base-10.
Only the first number is divisible by 5, so answer[0] is true.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1,1,1]
<strong>Output:</strong> [false,false,false]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>nums[i]</code> is either <code>0</code> or <code>1</code>.</li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/binary-prefix-divisible-by-5/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {boolean[]}
 */
var prefixesDivBy5 = function (nums) {
  var ans = [];
  var num = 0;
  for (var i = 0; i < nums.length; i++) {
    num = (2 * num + nums[i]) % 5;
    ans.push(num == 0);
  }
  return ans;
};
/*
(a+b) % x == (a%x + b%x) %x
*/
```

## Solution 2.

```js
/**
 * @param {number[]} nums
 * @return {boolean[]}
 */
var prefixesDivBy5 = function (nums) {
  var ans = [];
  var num = "";
  for (var i = 0; i < nums.length; i++) {
    num = num + nums[i];
    if (BigInt("0b" + num) % 5n == 0) {
      ans.push(true);
    } else {
      ans.push(false);
    }
  }
  return ans;
};
```
