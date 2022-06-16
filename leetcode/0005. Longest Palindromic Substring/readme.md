# [5. Longest Palindromic Substring (Medium)](https://leetcode.com/problems/longest-palindromic-substring/)

<p>Given a string <code>s</code>, return <em>the longest palindromic substring</em> in <code>s</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> s = "babad"
<strong>Output:</strong> "bab"
<strong>Explanation:</strong> "aba" is also a valid answer.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> s = "cbbd"
<strong>Output:</strong> "bb"
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 1000</code></li>
	<li><code>s</code> consist of only digits and English letters.</li>
</ul>


**Related Topics**:  
[String](https://leetcode.com/tag/string/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

**Similar Questions**:
* [Shortest Palindrome (Hard)](https://leetcode.com/problems/shortest-palindrome/)
* [Palindrome Permutation (Easy)](https://leetcode.com/problems/palindrome-permutation/)
* [Palindrome Pairs (Hard)](https://leetcode.com/problems/palindrome-pairs/)
* [Longest Palindromic Subsequence (Medium)](https://leetcode.com/problems/longest-palindromic-subsequence/)
* [Palindromic Substrings (Medium)](https://leetcode.com/problems/palindromic-substrings/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/longest-palindromic-substring/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} s
 * @return {string}
 */
// Expand Around Center solution
// T O(N^2)
// S O(1)
var longestPalindrome = function(s) {
  var max = '';
  for (var i = 0; i < s.length; i++) {
    // this loop is to take into account 
    // different palindromes like 'aba' and 'abba'
    for (var j = 0; j < 2; j++) {
      var left = i;
      var right = i + j;
      while (s[left] && s[left] === s[right]) {
        left--;
        right++;
      }
      // here imagine we get into string like
      // "sabbad", then
      // right = 5
      // left = 0
      // and actual length of "abba" should be "4"
      // 5 - 0 - 1 === 4
      if ((right - left - 1) > max.length) {
        max = s.substring(left + 1, right);
      }
    }
  }
  return max;
};

```