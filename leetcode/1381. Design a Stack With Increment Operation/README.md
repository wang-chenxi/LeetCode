# [1381. Design a Stack With Increment Operation (Medium)](https://leetcode.com/problems/design-a-stack-with-increment-operation/)

<p>Design a stack which supports the following operations.</p>

<p>Implement the <code>CustomStack</code> class:</p>

<ul>
	<li><code>CustomStack(int maxSize)</code> Initializes the object with <code>maxSize</code> which is the maximum number of elements in the stack or do nothing if the stack reached the <code>maxSize</code>.</li>
	<li><code>void push(int x)</code>&nbsp;Adds <code>x</code> to the top of the stack if the stack hasn't reached the <code>maxSize</code>.</li>
	<li><code>int pop()</code>&nbsp;Pops and returns the top of stack or <strong>-1</strong> if the stack is empty.</li>
	<li><code>void inc(int k, int val)</code> Increments the bottom <code>k</code> elements of the stack by <code>val</code>. If there are less than <code>k</code> elements in the stack, just increment all the elements in the stack.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input</strong>
["CustomStack","push","push","pop","push","push","push","increment","increment","pop","pop","pop","pop"]
[[3],[1],[2],[],[2],[3],[4],[5,100],[2,100],[],[],[],[]]
<strong>Output</strong>
[null,null,null,2,null,null,null,null,null,103,202,201,-1]
<strong>Explanation</strong>
CustomStack customStack = new CustomStack(3); // Stack is Empty []
customStack.push(1);                          // stack becomes [1]
customStack.push(2);                          // stack becomes [1, 2]
customStack.pop();                            // return 2 --&gt; Return top of the stack 2, stack becomes [1]
customStack.push(2);                          // stack becomes [1, 2]
customStack.push(3);                          // stack becomes [1, 2, 3]
customStack.push(4);                          // stack still [1, 2, 3], Don't add another elements as size is 4
customStack.increment(5, 100);                // stack becomes [101, 102, 103]
customStack.increment(2, 100);                // stack becomes [201, 202, 103]
customStack.pop();                            // return 103 --&gt; Return top of the stack 103, stack becomes [201, 202]
customStack.pop();                            // return 202 --&gt; Return top of the stack 102, stack becomes [201]
customStack.pop();                            // return 201 --&gt; Return top of the stack 101, stack becomes []
customStack.pop();                            // return -1 --&gt; Stack is empty return -1.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= maxSize &lt;= 1000</code></li>
	<li><code>1 &lt;= x &lt;= 1000</code></li>
	<li><code>1 &lt;= k &lt;= 1000</code></li>
	<li><code>0 &lt;= val &lt;= 100</code></li>
	<li>At most&nbsp;<code>1000</code>&nbsp;calls will be made to each method of <code>increment</code>, <code>push</code> and <code>pop</code> each separately.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Stack](https://leetcode.com/tag/stack/), [Design](https://leetcode.com/tag/design/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/design-a-stack-with-increment-operation/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number} maxSize
 */
var CustomStack = function(maxSize) {
    this.maxSize = maxSize
    this.stack = []
};
/** 
 * @param {number} x
 * @return {void}
 */
CustomStack.prototype.push = function(x) {
    if(this.stack.length < this.maxSize){
        this.stack[this.stack.length]=x
    }
};
/**
 * @return {number}
 */
CustomStack.prototype.pop = function() {
    if(this.stack.length>0){
    var top = this.stack[this.stack.length-1]
    delete this.stack[this.stack.length-1]
    this.stack.length --
    return top
    }else{
        return -1
    }
};
/** 
 * @param {number} k 
 * @param {number} val
 * @return {void}
 */
CustomStack.prototype.increment = function(k, val) {
    var len = Math.min(k,this.stack.length)
    for(var i = 0;i<len;i++){
        this.stack[i]+=val
    }
};
/** 
 * Your CustomStack object will be instantiated and called as such:
 * var obj = new CustomStack(maxSize)
 * obj.push(x)
 * var param_2 = obj.pop()
 * obj.increment(k,val)
 */

```