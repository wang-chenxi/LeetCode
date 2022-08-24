# [234. Palindrome Linked List (Easy)](https://leetcode.com/problems/palindrome-linked-list/)

<p>Given the <code>head</code> of a singly linked list, return <code>true</code> if it is a palindrome.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/03/pal1linked-list.jpg" style="width: 422px; height: 62px;">
<pre><strong>Input:</strong> head = [1,2,2,1]
<strong>Output:</strong> true
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/03/pal2linked-list.jpg" style="width: 182px; height: 62px;">
<pre><strong>Input:</strong> head = [1,2]
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is in the range <code>[1, 10<sup>5</sup>]</code>.</li>
	<li><code>0 &lt;= Node.val &lt;= 9</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you do it in <code>O(n)</code> time and <code>O(1)</code> space?

**Related Topics**:  
[Linked List](https://leetcode.com/tag/linked-list/), [Two Pointers](https://leetcode.com/tag/two-pointers/), [Stack](https://leetcode.com/tag/stack/), [Recursion](https://leetcode.com/tag/recursion/)

**Similar Questions**:
* [Palindrome Number (Easy)](https://leetcode.com/problems/palindrome-number/)
* [Valid Palindrome (Easy)](https://leetcode.com/problems/valid-palindrome/)
* [Reverse Linked List (Easy)](https://leetcode.com/problems/reverse-linked-list/)
* [Maximum Twin Sum of a Linked List (Medium)](https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/palindrome-linked-list/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {boolean}
 */
var isPalindrome = function(head) {
    var list = []
    var walker = head
    while(walker){
        list.push(walker.val)
        walker = walker.next
    }
    while(list.length>1){
        if(list.pop()!=list.shift()) return false
    }
    return true
};

```