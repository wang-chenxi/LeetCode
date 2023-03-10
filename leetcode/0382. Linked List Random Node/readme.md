0382. Linked List Random Node

```js

// OJ: https://leetcode.com/problems/linked-list-random-node
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
 * @param {ListNode} head
 */
var Solution = function(head) {
    this.arr = []
    var getArr = () =>{
        var walker = head
        while(walker){
            this.arr.push(walker.val)
            walker = walker.next
        }
    }
    getArr()
    this.len = this.arr.length
};
/**
 * @return {number}
 */
Solution.prototype.getRandom = function() {
    var selected = Math.floor(this.len*Math.random())
    return this.arr[selected]
};
/** 
 * Your Solution object will be instantiated and called as such:
 * var obj = new Solution(head)
 * var param_1 = obj.getRandom()
 */


```