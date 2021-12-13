# [83. Remove Duplicates from Sorted List (Easy)](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

<p>Given the <code>head</code> of a sorted linked list, <em>delete all duplicates such that each element appears only once</em>. Return <em>the linked list <strong>sorted</strong> as well</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/01/04/list1.jpg" style="width: 302px; height: 242px;">
<pre><strong>Input:</strong> head = [1,1,2]
<strong>Output:</strong> [1,2]
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/01/04/list2.jpg" style="width: 542px; height: 222px;">
<pre><strong>Input:</strong> head = [1,1,2,3,3]
<strong>Output:</strong> [1,2,3]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is in the range <code>[0, 300]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
	<li>The list is guaranteed to be <strong>sorted</strong> in ascending order.</li>
</ul>

**Related Topics**:  
[Linked List](https://leetcode.com/tag/linked-list/)

**Similar Questions**:

- [Remove Duplicates from Sorted List II (Medium)](https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/)
- [Remove Duplicates From an Unsorted Linked List (Medium)](https://leetcode.com/problems/remove-duplicates-from-an-unsorted-linked-list/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/remove-duplicates-from-sorted-list/
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
var deleteDuplicates = function (head) {
  if (!head) return null;
  if (!head.next) return head;
  var walker = head;
  var runner = head.next;
  while (runner) {
    if (walker.val == runner.val) {
      if (!runner.next) {
        walker.next = null;
        return head;
      }
      walker.next = runner.next;
    } else {
      walker = runner;
    }
    runner = runner.next;
  }
  return head;
};
```
