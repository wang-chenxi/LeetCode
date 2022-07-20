# [792. Number of Matching Subsequences (Medium)](https://leetcode.com/problems/number-of-matching-subsequences/)

<p>Given a string <code>s</code> and an array of strings <code>words</code>, return <em>the number of</em> <code>words[i]</code> <em>that is a subsequence of</em> <code>s</code>.</p>

<p>A <strong>subsequence</strong> of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.</p>

<ul>
	<li>For example, <code>"ace"</code> is a subsequence of <code>"abcde"</code>.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> s = "abcde", words = ["a","bb","acd","ace"]
<strong>Output:</strong> 3
<strong>Explanation:</strong> There are three strings in words that are a subsequence of s: "a", "acd", "ace".
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> s = "dsahjpjauf", words = ["ahjpjau","ja","ahbwzgqnuk","tnmlanowax"]
<strong>Output:</strong> 2
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>1 &lt;= words.length &lt;= 5000</code></li>
	<li><code>1 &lt;= words[i].length &lt;= 50</code></li>
	<li><code>s</code> and <code>words[i]</code> consist of only lowercase English letters.</li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Trie](https://leetcode.com/tag/trie/), [Sorting](https://leetcode.com/tag/sorting/)

**Similar Questions**:
* [Is Subsequence (Easy)](https://leetcode.com/problems/is-subsequence/)
* [Shortest Way to Form String (Medium)](https://leetcode.com/problems/shortest-way-to-form-string/)
* [Count Vowel Substrings of a String (Easy)](https://leetcode.com/problems/count-vowel-substrings-of-a-string/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/number-of-matching-subsequences/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} s
 * @param {string[]} words
 * @return {number}
 */
var numMatchingSubseq = function (S, words) {
  let count = 0
  const map = new Map()
  // to reduce duplicate culculation efforts
  for(const w of words){
    map.set(w, (map.get(w) || 0) + 1)
  }
  // to see if the w is a subsequence
  for (let [w, val] of map) {
    let i = 0, j = 0
    while (j < w.length && i < S.length) {
      if (w[j] == S[i]) {
        j += 1
        i += 1
      }else {
        i += 1
      }
    }
    if (j == w.length) {
      count += map.get(w)
    }    
  }
  return count
};

```