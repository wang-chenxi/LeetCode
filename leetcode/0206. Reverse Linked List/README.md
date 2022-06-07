# [206. Reverse Linked List (Easy)](https://leetcode.com/problems/reverse-linked-list/)

<p>Given the <code>head</code> of a singly linked list, reverse the list, and return <em>the reversed list</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/02/19/rev1ex1.jpg" style="width: 542px; height: 222px;">
<pre><strong>Input:</strong> head = [1,2,3,4,5]
<strong>Output:</strong> [5,4,3,2,1]
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/02/19/rev1ex2.jpg" style="width: 182px; height: 222px;">
<pre><strong>Input:</strong> head = [1,2]
<strong>Output:</strong> [2,1]
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> head = []
<strong>Output:</strong> []
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is the range <code>[0, 5000]</code>.</li>
	<li><code>-5000 &lt;= Node.val &lt;= 5000</code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> A linked list can be reversed either iteratively or recursively. Could you implement both?</p>


**Related Topics**:  
[Linked List](https://leetcode.com/tag/linked-list/), [Recursion](https://leetcode.com/tag/recursion/)

**Similar Questions**:
* [Reverse Linked List II (Medium)](https://leetcode.com/problems/reverse-linked-list-ii/)
* [Binary Tree Upside Down (Medium)](https://leetcode.com/problems/binary-tree-upside-down/)
* [Palindrome Linked List (Easy)](https://leetcode.com/problems/palindrome-linked-list/)
* [Reverse Nodes in Even Length Groups (Medium)](https://leetcode.com/problems/reverse-nodes-in-even-length-groups/)
* [Maximum Twin Sum of a Linked List (Medium)](https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/reverse-linked-list/
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
 * @return {ListNode}
 */
var reverseList = function(head) {
    if(!head)return head
    var list = []
    var walker = head;
    while(walker){
        list.push(new ListNode(val=walker.val))
        walker = walker.next
    }
    var ans = list.pop()
    var runner = ans
    while(list.length){
        runner.next = list.pop()
        runner = runner.next
    }
    return ans
};

```