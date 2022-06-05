# [1721. Swapping Nodes in a Linked List (Medium)](https://leetcode.com/problems/swapping-nodes-in-a-linked-list/)

<p>You are given the <code>head</code> of a linked list, and an integer <code>k</code>.</p>

<p>Return <em>the head of the linked list after <strong>swapping</strong> the values of the </em><code>k<sup>th</sup></code> <em>node from the beginning and the </em><code>k<sup>th</sup></code> <em>node from the end (the list is <strong>1-indexed</strong>).</em></p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/09/21/linked1.jpg" style="width: 400px; height: 112px;">
<pre><strong>Input:</strong> head = [1,2,3,4,5], k = 2
<strong>Output:</strong> [1,4,3,2,5]
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> head = [7,9,6,6,7,8,3,0,9,5], k = 5
<strong>Output:</strong> [7,9,6,6,8,7,3,0,9,5]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is <code>n</code>.</li>
	<li><code>1 &lt;= k &lt;= n &lt;= 10<sup>5</sup></code></li>
	<li><code>0 &lt;= Node.val &lt;= 100</code></li>
</ul>


**Related Topics**:  
[Linked List](https://leetcode.com/tag/linked-list/), [Two Pointers](https://leetcode.com/tag/two-pointers/)

**Similar Questions**:
* [Remove Nth Node From End of List (Medium)](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)
* [Swap Nodes in Pairs (Medium)](https://leetcode.com/problems/swap-nodes-in-pairs/)
* [Reverse Nodes in k-Group (Hard)](https://leetcode.com/problems/reverse-nodes-in-k-group/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/swapping-nodes-in-a-linked-list/
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
 * @param {number} k
 * @return {ListNode}
 */
var swapNodes = function(head, k) {
    var list = []
    var walker = head;
    while(walker){
        list.push(walker)
        walker = walker.next
    }
    var size = list.length;
    if(size==1) return head
    var index = size - k;
    var kthNode = list[k-1]
    var kthToEnd = list[index]
    var kValue = kthNode.val;
    kthNode.val = kthToEnd.val;
    kthToEnd.val = kValue;
    return head
};

```