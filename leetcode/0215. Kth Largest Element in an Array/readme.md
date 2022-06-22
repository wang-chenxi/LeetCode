# [215. Kth Largest Element in an Array (Medium)](https://leetcode.com/problems/kth-largest-element-in-an-array/)

<p>Given an integer array <code>nums</code> and an integer <code>k</code>, return <em>the</em> <code>k<sup>th</sup></code> <em>largest element in the array</em>.</p>

<p>Note that it is the <code>k<sup>th</sup></code> largest element in the sorted order, not the <code>k<sup>th</sup></code> distinct element.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [3,2,1,5,6,4], k = 2
<strong>Output:</strong> 5
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [3,2,3,1,2,4,5,5,6], k = 4
<strong>Output:</strong> 4
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= k &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-10<sup>4</sup> &lt;= nums[i] &lt;= 10<sup>4</sup></code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Divide and Conquer](https://leetcode.com/tag/divide-and-conquer/), [Sorting](https://leetcode.com/tag/sorting/), [Heap (Priority Queue)](https://leetcode.com/tag/heap-priority-queue/), [Quickselect](https://leetcode.com/tag/quickselect/)

**Similar Questions**:
* [Wiggle Sort II (Medium)](https://leetcode.com/problems/wiggle-sort-ii/)
* [Top K Frequent Elements (Medium)](https://leetcode.com/problems/top-k-frequent-elements/)
* [Third Maximum Number (Easy)](https://leetcode.com/problems/third-maximum-number/)
* [Kth Largest Element in a Stream (Easy)](https://leetcode.com/problems/kth-largest-element-in-a-stream/)
* [K Closest Points to Origin (Medium)](https://leetcode.com/problems/k-closest-points-to-origin/)
* [Find the Kth Largest Integer in the Array (Medium)](https://leetcode.com/problems/find-the-kth-largest-integer-in-the-array/)
* [Find Subsequence of Length K With the Largest Sum (Easy)](https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum/)
* [K Highest Ranked Items Within a Price Range (Medium)](https://leetcode.com/problems/k-highest-ranked-items-within-a-price-range/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/kth-largest-element-in-an-array/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var findKthLargest = function(nums, k) {
    var cnt =0;
    var pq = new MinPriorityQueue({priority: x =>x})
    for (var num of nums){
        if(cnt<k){
            pq.enqueue(num)
            console.log(pq)
            cnt ++
        }
        else if(num>pq.front().element){
            pq.dequeue().element
            pq.enqueue(num)
            console.log(pq)
        }
    }
    return pq.front().element
};

```