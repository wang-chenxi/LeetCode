# [1354. Construct Target Array With Multiple Sums (Hard)](https://leetcode.com/problems/construct-target-array-with-multiple-sums/)

<p>You are given an array <code>target</code> of n integers. From a starting array <code>arr</code> consisting of <code>n</code> 1's, you may perform the following procedure :</p>

<ul>
	<li>let <code>x</code> be the sum of all elements currently in your array.</li>
	<li>choose index <code>i</code>, such that <code>0 &lt;= i &lt; n</code> and set the value of <code>arr</code> at index <code>i</code> to <code>x</code>.</li>
	<li>You may repeat this procedure as many times as needed.</li>
</ul>

<p>Return <code>true</code> <em>if it is possible to construct the</em> <code>target</code> <em>array from</em> <code>arr</code><em>, otherwise, return</em> <code>false</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> target = [9,3,5]
<strong>Output:</strong> true
<strong>Explanation:</strong> Start with arr = [1, 1, 1] 
[1, 1, 1], sum = 3 choose index 1
[1, 3, 1], sum = 5 choose index 2
[1, 3, 5], sum = 9 choose index 0
[9, 3, 5] Done
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> target = [1,1,1,2]
<strong>Output:</strong> false
<strong>Explanation:</strong> Impossible to create target array from [1,1,1,1].
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> target = [8,5]
<strong>Output:</strong> true
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == target.length</code></li>
	<li><code>1 &lt;= n &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>1 &lt;= target[i] &lt;= 10<sup>9</sup></code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Heap (Priority Queue)](https://leetcode.com/tag/heap-priority-queue/)

## Solution 1.

<div class="content-area__2vnF"><div class="discuss-markdown-container"><p><em>(Note: This is part of a series of Leetcode solution explanations. If you like this solution or find it useful,</em> <em><strong>please upvote</strong></em> <em>this post.)</em></p><p>
</p><hr>
<h4><em><strong>Idea:</strong></em></h4>
<p></p><p>One thing we can notice right away: The sum of the elements in <strong>A</strong> will always be larger than any single element of <strong>A</strong>, since <strong>A</strong> starts off with all positive numbers. Therefore, the sum will only ever go up as we iterate through the solution process. This means that we will only ever have one attempt to place a given number in its correct spot.</p><p>
</p><p>It also means that the <em>last</em> step will always be to settle the highest value of the target array, which means we can reconstruct the nature of <strong>A</strong> right before the last step as well. From there, we'll have to keep dealing with the largest remaining value, on and on, working backwards until we either succeed or fail.</p><p>
</p><p>Since we are going to have to deal with the target values in descending value order, it stands to reason that we should use a <strong>max priority queue</strong> or <strong>max-heap</strong> structure to keep track of the target values, especially since we don't care about the values' indices.</p><p>
</p><p>Once we have all the <strong>target</strong> values inserted into the priority queue (<strong>pq/heap</strong>) and the <strong>sum</strong> calculated, we can proceed to deal with the values in order. At each step, we should remove the max value, compute its replacement's value, then reinsert that replacement back into <strong>pq</strong>. If, at the start of an iteration, we see that the max value in <strong>pq</strong> is a <strong>1</strong>, then that means that all values in <strong>pq</strong> are <strong>1</strong>s, and we should <strong>return true</strong>.</p><p>
</p><p>On the other hand, if we find ourselves about to insert a number less than <strong>1</strong> into <strong>pq</strong>, we know we've failed and should <strong>return false</strong>, as we will have passed the prescribed starting position.</p><p>
</p><p>But at this point, we'll still obtain a <strong>TLE</strong> result and will need to optimize some more. Consider the situation in which we process the max value only to find that we're about to reinsert a number that is <em>still</em> the max value. In some edge cases, it could take thousands of iterations to fully process this value so that we can move on to another, when all that processing can be done more simply in one step.</p><p>
</p><p>Take, for example, <strong>target = [3,5,33]</strong>. Normally, we'd remove the <strong>33</strong> and compute its replacement to be <strong>25</strong>, then from <strong>25</strong> to <strong>17</strong>, then <strong>17</strong> to <strong>9</strong>, then finally <strong>9</strong> to <strong>1</strong>. Each time, we're removing the sum of all the remaining values (<strong>3 + 5 = 8</strong>) from the current number. In any valid target array, as we noted at the very beginning, the max value <em>must</em> be larger than the sum of the remaining elements, since it came from that sum plus the value that was replaced.</p><p>
</p><p>That means that we should be able to remove the remaining sum (<strong>8</strong>) from our current max value (<strong>33</strong>) as many times as we possibly can, since only the remainder will bring us below that sum. This we can achieve quite easily with the <strong>mod operator</strong> which will result in our replacement value (<strong>33 % 8 = 1</strong>) without the need to iterate through every step.</p><p>
</p><p>As noted recently, if we find that the max value is actually less than the remaining sum, then the array must not be valid, and we can <strong>return false</strong>. Also, if <strong>num</strong> should end up being <strong>0</strong> after applying the mod operator, then we should <strong>return false</strong>, except for the edge case where <strong>sum = 1</strong>. Alternately, we could instead push <strong>sum</strong> onto <strong>pq</strong> intead of <strong>num</strong>, which will immediately trigger a failure in all but the edge case.</p><p>
</p><hr>
<h4><em><strong>Implementation:</strong></em></h4>
<p></p><p>Javascript's <strong>MaxPriorityQueue()</strong> npm is convenient, but not terribly efficient. A custom <strong>max-heap</strong> implementation is more performant. Both options are included below.</p><p>
</p><p>Python defaults to a <strong>min-heap</strong>, so we can simulate a <strong>max-heap</strong> by changing the sign on each element when it is inserted and removed from the heap.</p><p>
</p><hr>
<p></p></div></div>

```js

// OJ: https://leetcode.com/problems/construct-target-array-with-multiple-sums/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {number[]} target
 * @return {boolean}
 */
var isPossible = function(target) {
    let pq = new MaxPriorityQueue({priority: x => x}), sum = 0
    for (let num of target) sum += num, pq.enqueue(num)
    while (pq.front().element !== 1) {
        let num = pq.dequeue().element
        sum -= num
        if (num <= sum || sum < 1) return false
        num %= sum, sum += num, pq.enqueue(num || sum)
    }
    return true
};

```