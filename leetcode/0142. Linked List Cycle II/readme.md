142. Linked List Cycle II


```js
// OJ: https://leetcode.com/problems/linked-list-cycle-ii
// Author: Please set your name in options page
// Time: O()
// Space: O()

/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var detectCycle = function(head) {
    var walker = head
    var runner = head
    while(runner != null && runner.next!=null){
        walker = walker.next
    }
        runner = runner.next.next
        if(walker ===runner)break
    if(runner==null||runner.next==null)return null
    while(head!=walker){
        head = head.next
    }
        walker = walker.next
    return walker
    // a full explanation to the solution: https://ithelp.ithome.com.tw/articles/10223721
}

    ```