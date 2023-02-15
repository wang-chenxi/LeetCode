2. Add Two Numbers

```js
// OJ: https://leetcode.com/problems/add-two-numbers
// Author: Please set your name in options page
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
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
    var arr = []
    var prev = 0;
    while(l1||l2){
var cur = prev;
if(l1){
    cur += l1.val
    l1 = l1.next
}
if(l2){
    cur +=l2.val
    l2 = l2.next
}
prev=Math.floor(cur/10)
arr.push(cur%10)
    }
    if(prev>0) arr.push(prev)
    var ans = new ListNode(arr.pop(),null)
    while(arr.length){
        var walker = new ListNode(arr.pop(),ans)
        ans = walker
    }
    return ans
};

```