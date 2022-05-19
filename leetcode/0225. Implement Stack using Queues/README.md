# [225. Implement Stack using Queues (Easy)](https://leetcode.com/problems/implement-stack-using-queues/)

<p>Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (<code>push</code>, <code>top</code>, <code>pop</code>, and <code>empty</code>).</p>

<p>Implement the <code>MyStack</code> class:</p>

<ul>
	<li><code>void push(int x)</code> Pushes element x to the top of the stack.</li>
	<li><code>int pop()</code> Removes the element on the top of the stack and returns it.</li>
	<li><code>int top()</code> Returns the element on the top of the stack.</li>
	<li><code>boolean empty()</code> Returns <code>true</code> if the stack is empty, <code>false</code> otherwise.</li>
</ul>

<p><b>Notes:</b></p>

<ul>
	<li>You must use <strong>only</strong> standard operations of a queue, which means that only <code>push to back</code>, <code>peek/pop from front</code>, <code>size</code> and <code>is empty</code> operations are valid.</li>
	<li>Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input</strong>
["MyStack", "push", "push", "top", "pop", "empty"]
[[], [1], [2], [], [], []]
<strong>Output</strong>
[null, null, null, 2, 2, false]

<strong>Explanation</strong>
MyStack myStack = new MyStack();
myStack.push(1);
myStack.push(2);
myStack.top(); // return 2
myStack.pop(); // return 2
myStack.empty(); // return False
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= x &lt;= 9</code></li>
	<li>At most <code>100</code> calls will be made to <code>push</code>, <code>pop</code>, <code>top</code>, and <code>empty</code>.</li>
	<li>All the calls to <code>pop</code> and <code>top</code> are valid.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow-up:</strong> Can you implement the stack using only one queue?</p>


**Related Topics**:  
[Stack](https://leetcode.com/tag/stack/), [Design](https://leetcode.com/tag/design/), [Queue](https://leetcode.com/tag/queue/)

**Similar Questions**:
* [Implement Queue using Stacks (Easy)](https://leetcode.com/problems/implement-queue-using-stacks/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/implement-stack-using-queues/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
var MyStack = function() {
    this.stack = []
};
/** 
 * @param {number} x
 * @return {void}
 */
MyStack.prototype.push = function(x) {
    this.stack.length ++
    this.stack[this.stack.length-1] = x
};
/**
 * @return {number}
 */
MyStack.prototype.pop = function() {
    var node = this.stack[this.stack.length-1]
    this.stack[this.stack.length-1]=null
    this.stack.length --
    return node
};
/**
 * @return {number}
 */
MyStack.prototype.top = function() {
    return this.stack[this.stack.length-1]
};
/**
 * @return {boolean}
 */
MyStack.prototype.empty = function() {
    return this.stack.length==0
};
/** 
 * Your MyStack object will be instantiated and called as such:
 * var obj = new MyStack()
 * obj.push(x)
 * var param_2 = obj.pop()
 * var param_3 = obj.top()
 * var param_4 = obj.empty()
 */

```