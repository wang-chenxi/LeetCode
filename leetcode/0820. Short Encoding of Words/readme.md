# [820. Short Encoding of Words (Medium)](https://leetcode.com/problems/short-encoding-of-words/)

<p>A <strong>valid encoding</strong> of an array of <code>words</code> is any reference string <code>s</code> and array of indices <code>indices</code> such that:</p>

<ul>
	<li><code>words.length == indices.length</code></li>
	<li>The reference string <code>s</code> ends with the <code>'#'</code> character.</li>
	<li>For each index <code>indices[i]</code>, the <strong>substring</strong> of <code>s</code> starting from <code>indices[i]</code> and up to (but not including) the next <code>'#'</code> character is equal to <code>words[i]</code>.</li>
</ul>

<p>Given an array of <code>words</code>, return <em>the <strong>length of the shortest reference string</strong> </em><code>s</code><em> possible of any <strong>valid encoding</strong> of </em><code>words</code><em>.</em></p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> words = ["time", "me", "bell"]
<strong>Output:</strong> 10
<strong>Explanation:</strong> A valid encoding would be s = <code>"time#bell#" and indices = [0, 2, 5</code>].
words[0] = "time", the substring of s starting from indices[0] = 0 to the next '#' is underlined in "<u>time</u>#bell#"
words[1] = "me", the substring of s starting from indices[1] = 2 to the next '#' is underlined in "ti<u>me</u>#bell#"
words[2] = "bell", the substring of s starting from indices[2] = 5 to the next '#' is underlined in "time#<u>bell</u>#"
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> words = ["t"]
<strong>Output:</strong> 2
<strong>Explanation:</strong> A valid encoding would be s = "t#" and indices = [0].
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= words.length &lt;= 2000</code></li>
	<li><code>1 &lt;= words[i].length &lt;= 7</code></li>
	<li><code>words[i]</code> consists of only lowercase letters.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Trie](https://leetcode.com/tag/trie/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/short-encoding-of-words/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string[]} words
 * @return {number}
 */
const minimumLengthEncoding = function (words) {
    const set = new Set(words);
    for(const word of words) {
        for(let k = 1; k < word.length; k++) {
            const w = word.slice(k);
            set.delete(w);
        }
    }
    let ans = 0;
    for(const word of set)
        ans += word.length + 1;
    return ans;
};
        for (var parent of set){

```