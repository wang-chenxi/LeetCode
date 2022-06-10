# [3. Longest Substring Without Repeating Characters (Medium)](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

<p>Given a string <code>s</code>, find the length of the <strong>longest substring</strong> without repeating characters.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> s = "abcabcbb"
<strong>Output:</strong> 3
<strong>Explanation:</strong> The answer is "abc", with the length of 3.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> s = "bbbbb"
<strong>Output:</strong> 1
<strong>Explanation:</strong> The answer is "b", with the length of 1.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> s = "pwwkew"
<strong>Output:</strong> 3
<strong>Explanation:</strong> The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= s.length &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>s</code> consists of English letters, digits, symbols and spaces.</li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Sliding Window](https://leetcode.com/tag/sliding-window/)

**Similar Questions**:
* [Longest Substring with At Most Two Distinct Characters (Medium)](https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/)
* [Longest Substring with At Most K Distinct Characters (Medium)](https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/)
* [Subarrays with K Different Integers (Hard)](https://leetcode.com/problems/subarrays-with-k-different-integers/)
* [Maximum Erasure Value (Medium)](https://leetcode.com/problems/maximum-erasure-value/)
* [Number of Equal Count Substrings (Medium)](https://leetcode.com/problems/number-of-equal-count-substrings/)
* [Minimum Consecutive Cards to Pick Up (Medium)](https://leetcode.com/problems/minimum-consecutive-cards-to-pick-up/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/longest-substring-without-repeating-characters/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {
    var i = 0;
    var set = new Set()
    var array = []
    var len = 0;
    while(i<s.length){
        array.push(s[i])
        if(!set.has(s[i])){
            set.add(s[i])
        }else{
            if(array.length-1>len) len = array.length-1
            while(array.length>0){
                var cur = array.shift()
                if(cur == s[i]) break
                set.delete(cur)
            }           
        }
        i++
    }
    return Math.max(len, array.length)
};

```