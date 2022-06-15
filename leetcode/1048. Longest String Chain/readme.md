# [1048. Longest String Chain (Medium)](https://leetcode.com/problems/longest-string-chain/)

<p>You are given an array of <code>words</code> where each word consists of lowercase English letters.</p>

<p><code>word<sub>A</sub></code> is a <strong>predecessor</strong> of <code>word<sub>B</sub></code> if and only if we can insert <strong>exactly one</strong> letter anywhere in <code>word<sub>A</sub></code> <strong>without changing the order of the other characters</strong> to make it equal to <code>word<sub>B</sub></code>.</p>

<ul>
	<li>For example, <code>"abc"</code> is a <strong>predecessor</strong> of <code>"ab<u>a</u>c"</code>, while <code>"cba"</code> is not a <strong>predecessor</strong> of <code>"bcad"</code>.</li>
</ul>

<p>A <strong>word chain</strong><em> </em>is a sequence of words <code>[word<sub>1</sub>, word<sub>2</sub>, ..., word<sub>k</sub>]</code> with <code>k &gt;= 1</code>, where <code>word<sub>1</sub></code> is a <strong>predecessor</strong> of <code>word<sub>2</sub></code>, <code>word<sub>2</sub></code> is a <strong>predecessor</strong> of <code>word<sub>3</sub></code>, and so on. A single word is trivially a <strong>word chain</strong> with <code>k == 1</code>.</p>

<p>Return <em>the <strong>length</strong> of the <strong>longest possible word chain</strong> with words chosen from the given list of </em><code>words</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> words = ["a","b","ba","bca","bda","bdca"]
<strong>Output:</strong> 4
<strong>Explanation</strong>: One of the longest word chains is ["a","<u>b</u>a","b<u>d</u>a","bd<u>c</u>a"].
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> words = ["xbc","pcxbcf","xb","cxbc","pcxbc"]
<strong>Output:</strong> 5
<strong>Explanation:</strong> All the words can be put in a word chain ["xb", "xb<u>c</u>", "<u>c</u>xbc", "<u>p</u>cxbc", "pcxbc<u>f</u>"].
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> words = ["abcd","dbqca"]
<strong>Output:</strong> 1
<strong>Explanation:</strong> The trivial word chain ["abcd"] is one of the longest word chains.
["abcd","dbqca"] is not a valid word chain because the ordering of the letters is changed.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= words.length &lt;= 1000</code></li>
	<li><code>1 &lt;= words[i].length &lt;= 16</code></li>
	<li><code>words[i]</code> only consists of lowercase English letters.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [Two Pointers](https://leetcode.com/tag/two-pointers/), [String](https://leetcode.com/tag/string/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/longest-string-chain/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string[]} words
 * @return {number}
 */
var longestStrChain = function(words) {
    // create a set to organize all word with same length in same set, ordered by len as index
    let W = Array.from({length: 17}, _ => new Set())
    for (let i = 0; i < words.length; i++) 
        W[words[i].length].add(words[i])
    // create a map for dynamic programming
    let dp = new Map(), best = 1
    // start from longest, and if we find there's no i-1, we could skip calculate the adding (since it never happen), the best is the longest chain
    for (let i = 16; i; i--) {
        if (!W[i-1].size) continue
        for (let word of W[i]) {
            // wanna check if there's existing chain value for this word, if not, reset it as head value
            let wVal = dp.get(word) || 1
            for (let j = 0; j < word.length; j++) {
                let pred = word.slice(0,j) + word.slice(j+1)
                if (W[i-1].has(pred) && wVal >= (dp.get(pred) || 1)) {
                    dp.set(pred, wVal + 1)
                    best = Math.max(best, wVal + 1)
                }
            }
        }
    }
    return best
};

```