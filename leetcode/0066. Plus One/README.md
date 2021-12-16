# [66. Plus One (Easy)](https://leetcode.com/problems/plus-one/)

<p>You are given a <strong>large integer</strong> represented as an integer array <code>digits</code>, where each <code>digits[i]</code> is the <code>i<sup>th</sup></code> digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading <code>0</code>'s.</p>

<p>Increment the large integer by one and return <em>the resulting array of digits</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> digits = [1,2,3]
<strong>Output:</strong> [1,2,4]
<strong>Explanation:</strong> The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> digits = [4,3,2,1]
<strong>Output:</strong> [4,3,2,2]
<strong>Explanation:</strong> The array represents the integer 4321.
Incrementing by one gives 4321 + 1 = 4322.
Thus, the result should be [4,3,2,2].
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> digits = [0]
<strong>Output:</strong> [1]
<strong>Explanation:</strong> The array represents the integer 0.
Incrementing by one gives 0 + 1 = 1.
Thus, the result should be [1].
</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> digits = [9]
<strong>Output:</strong> [1,0]
<strong>Explanation:</strong> The array represents the integer 9.
Incrementing by one gives 9 + 1 = 10.
Thus, the result should be [1,0].
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= digits.length &lt;= 100</code></li>
	<li><code>0 &lt;= digits[i] &lt;= 9</code></li>
	<li><code>digits</code> does not contain any leading <code>0</code>'s.</li>
</ul>

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Math](https://leetcode.com/tag/math/)

**Similar Questions**:

- [Multiply Strings (Medium)](https://leetcode.com/problems/multiply-strings/)
- [Add Binary (Easy)](https://leetcode.com/problems/add-binary/)
- [Plus One Linked List (Medium)](https://leetcode.com/problems/plus-one-linked-list/)
- [Add to Array-Form of Integer (Easy)](https://leetcode.com/problems/add-to-array-form-of-integer/)

## Solution 1.

```JS

// OJ: https://leetcode.com/problems/plus-one/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} digits
 * @return {number[]}
 */
var plusOne = function(digits) {
    var plus = true;
    var helper=(digit)=>{
        var add = 0;
        digit = digit -'0'
        if(plus){
            var add =1;
        }
        console.log(digit+add,digit,add)
        if(digit+add<=9){
            digit=digit+add
            plus=false
            console.log(plus)
        }else if(digit+add==10){
            digit=0;
            plus=true
        }else{
            digit=digit+add-10;
            plus=true
        }
        return digit
    }
    var add = 0;
    for(var i = digits.length-1;i>=0;i--){
        if(plus){
        add = helper(digits[i])
        digits[i] = add
        console.log(add,plus)
        if(i==0){
            if(plus){
                digits.unshift(1)
            }
        }
        }
    }
    return digits
};

```

A good template

```JS
// OJ: https://leetcode.com/problems/plus-one/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} digits
 * @return {number[]}
 */
var plusOne = function(A) {
    let N = A.length, carry = 1;
    for (let i = N - 1; i >= 0 && carry; --i) {
        carry += A[i];
        A[i] = carry % 10;
        carry = Math.floor(carry / 10);
    }
    if (carry) A.unshift(1);
    return A;
};

```
