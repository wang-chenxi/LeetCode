# [946. Validate Stack Sequences (Medium)](https://leetcode.com/problems/validate-stack-sequences/)

<p>Given two integer arrays <code>pushed</code> and <code>popped</code> each with distinct values, return <code>true</code><em> if this could have been the result of a sequence of push and pop operations on an initially empty stack, or </em><code>false</code><em> otherwise.</em></p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> pushed = [1,2,3,4,5], popped = [4,5,3,2,1]
<strong>Output:</strong> true
<strong>Explanation:</strong> We might do the following sequence:
push(1), push(2), push(3), push(4),
pop() -&gt; 4,
push(5),
pop() -&gt; 5, pop() -&gt; 3, pop() -&gt; 2, pop() -&gt; 1
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> pushed = [1,2,3,4,5], popped = [4,3,5,1,2]
<strong>Output:</strong> false
<strong>Explanation:</strong> 1 cannot be popped before 2.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= pushed.length &lt;= 1000</code></li>
	<li><code>0 &lt;= pushed[i] &lt;= 1000</code></li>
	<li>All the elements of <code>pushed</code> are <strong>unique</strong>.</li>
	<li><code>popped.length == pushed.length</code></li>
	<li><code>popped</code> is a permutation of <code>pushed</code>.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Stack](https://leetcode.com/tag/stack/), [Simulation](https://leetcode.com/tag/simulation/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/validate-stack-sequences/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} pushed
 * @param {number[]} popped
 * @return {boolean}
 */
var validateStackSequences = (pushed, popped) => {
  var stack = [];
  var i = 0;
  for (var num of pushed) {
    stack.push(num); // we are pushing the number to the stack
    while (stack.length > 0 && stack[stack.length - 1] === popped[i]) {
      // if the last element of the stack is equal to the popped element
      stack.pop(); // we are popping the element
      i++; // we are incrementing the index of the popped element
    }
  }
  return stack.length === 0; // if the stack is empty then we have a valid sequence
};

```