# [729. My Calendar I (Medium)](https://leetcode.com/problems/my-calendar-i/)

<p>You are implementing a program to use as your calendar. We can add a new event if adding the event will not cause a <strong>double booking</strong>.</p>

<p>A <strong>double booking</strong> happens when two events have some non-empty intersection (i.e., some moment is common to both events.).</p>

<p>The event can be represented as a pair of integers <code>start</code> and <code>end</code> that represents a booking on the half-open interval <code>[start, end)</code>, the range of real numbers <code>x</code> such that <code>start &lt;= x &lt; end</code>.</p>

<p>Implement the <code>MyCalendar</code> class:</p>

<ul>
	<li><code>MyCalendar()</code> Initializes the calendar object.</li>
	<li><code>boolean book(int start, int end)</code> Returns <code>true</code> if the event can be added to the calendar successfully without causing a <strong>double booking</strong>. Otherwise, return <code>false</code> and do not add the event to the calendar.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input</strong>
["MyCalendar", "book", "book", "book"]
[[], [10, 20], [15, 25], [20, 30]]
<strong>Output</strong>
[null, true, false, true]

<strong>Explanation</strong>
MyCalendar myCalendar = new MyCalendar();
myCalendar.book(10, 20); // return True
myCalendar.book(15, 25); // return False, It can not be booked because time 15 is already booked by another event.
myCalendar.book(20, 30); // return True, The event can be booked, as the first event takes every time less than 20, but not including 20.</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= start &lt; end &lt;= 10<sup>9</sup></code></li>
	<li>At most <code>1000</code> calls will be made to <code>book</code>.</li>
</ul>


**Related Topics**:  
[Binary Search](https://leetcode.com/tag/binary-search/), [Design](https://leetcode.com/tag/design/), [Segment Tree](https://leetcode.com/tag/segment-tree/), [Ordered Set](https://leetcode.com/tag/ordered-set/)

**Similar Questions**:
* [My Calendar II (Medium)](https://leetcode.com/problems/my-calendar-ii/)
* [My Calendar III (Hard)](https://leetcode.com/problems/my-calendar-iii/)

## Solution 1.bruteforce

```js

// Brute Force => T.C: O(n^2) | S.C: O(n);
var MyCalendar = function() {
  this.val = [];
};

MyCalendar.prototype.book = function(start, end) {
  for (let book of this.val) {
    if (end > book[0] && start < book[1]) return false;
  }
  this.val.push([start, end]);
  return true;
};

```

## Solution 2. BST

```js

// OJ: https://leetcode.com/problems/my-calendar-i/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
var MyCalendar = function() {
    this.root = null;
};
var Node = function(s,e) {
    this.value = [s,e];
    this.left = null;
    this.right = null;
}
/** 
 * @param {number} start 
 * @param {number} end
 * @return {boolean}
 */
MyCalendar.prototype.book = function(start, end) {
    let { root } = this;
    let openTimeSlot = true;
    if(!root) {
        this.root = new Node(start, end);
        return openTimeSlot;
    }
    let currNode = root;
    const newNode = new Node(start, end);
    while(currNode) {
        if(currNode.value[0] < end && start < currNode.value[1]) {
            openTimeSlot = false;
            break;
        } else {
        if(start < currNode.value[0]) {
            if(!currNode.left) {
                currNode.left = newNode;
            break;
            } else {
                currNode = currNode.left;
            }
        } else {
             if(!currNode.right) {
                currNode.right = newNode;
            break;
            } else {
                currNode = currNode.right;
            }
        }
        }
    }
    return openTimeSlot
};
/** 
 * Your MyCalendar object will be instantiated and called as such:
 * var obj = new MyCalendar()
 * var param_1 = obj.book(start,end)
 */


```