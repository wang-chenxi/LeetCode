# [901. Online Stock Span (Medium)](https://leetcode.com/problems/online-stock-span/)

<p>Design an algorithm that collects daily price quotes for some stock and returns <strong>the span</strong> of that stock's price for the current day.</p>

<p>The <strong>span</strong> of the stock's price today is defined as the maximum number of consecutive days (starting from today and going backward) for which the stock price was less than or equal to today's price.</p>

<ul>
	<li>For example, if the price of a stock over the next <code>7</code> days were <code>[100,80,60,70,60,75,85]</code>, then the stock spans would be <code>[1,1,1,2,1,4,6]</code>.</li>
</ul>

<p>Implement the <code>StockSpanner</code> class:</p>

<ul>
	<li><code>StockSpanner()</code> Initializes the object of the class.</li>
	<li><code>int next(int price)</code> Returns the <strong>span</strong> of the stock's price given that today's price is <code>price</code>.</li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input</strong>
["StockSpanner", "next", "next", "next", "next", "next", "next", "next"]
[[], [100], [80], [60], [70], [60], [75], [85]]
<strong>Output</strong>
[null, 1, 1, 1, 2, 1, 4, 6]

<strong>Explanation</strong>
StockSpanner stockSpanner = new StockSpanner();
stockSpanner.next(100); // return 1
stockSpanner.next(80);  // return 1
stockSpanner.next(60);  // return 1
stockSpanner.next(70);  // return 2
stockSpanner.next(60);  // return 1
stockSpanner.next(75);  // return 4, because the last 4 prices (including today's price of 75) were less than or equal to today's price.
stockSpanner.next(85);  // return 6
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= price &lt;= 10<sup>5</sup></code></li>
	<li>At most <code>10<sup>4</sup></code> calls will be made to <code>next</code>.</li>
</ul>


**Related Topics**:  
[Stack](https://leetcode.com/tag/stack/), [Design](https://leetcode.com/tag/design/), [Monotonic Stack](https://leetcode.com/tag/monotonic-stack/), [Data Stream](https://leetcode.com/tag/data-stream/)

**Similar Questions**:
* [Daily Temperatures (Medium)](https://leetcode.com/problems/daily-temperatures/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/online-stock-span/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
var StockSpanner = function() {
    this.prices = []
};
/** 
 * @param {number} price
 * @return {number}
 */
StockSpanner.prototype.next = function(price) {
    this.prices.push(price)
    var count = 0;
    for(var i = this.prices.length-1;i>=0;i--){
        if(this.prices[i]<=price){
            count++
        }else{
            break
        }
    }
    return count
};
/** 
 * Your StockSpanner object will be instantiated and called as such:
 * var obj = new StockSpanner()
 * var param_1 = obj.next(price)
 */

```