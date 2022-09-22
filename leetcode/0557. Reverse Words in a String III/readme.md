# [557. Reverse Words in a String III (Easy)](https://leetcode.com/problems/reverse-words-in-a-string-iii/)

<p>Given a string <code>s</code>, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> s = "Let's take LeetCode contest"
<strong>Output:</strong> "s'teL ekat edoCteeL tsetnoc"
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> s = "God Ding"
<strong>Output:</strong> "doG gniD"
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>s</code> contains printable <strong>ASCII</strong> characters.</li>
	<li><code>s</code> does not contain any leading or trailing spaces.</li>
	<li>There is <strong>at least one</strong> word in <code>s</code>.</li>
	<li>All the words in <code>s</code> are separated by a single space.</li>
</ul>


**Related Topics**:  
[Two Pointers](https://leetcode.com/tag/two-pointers/), [String](https://leetcode.com/tag/string/)

**Similar Questions**:
* [Reverse String II (Easy)](https://leetcode.com/problems/reverse-string-ii/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/reverse-words-in-a-string-iii/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} s
 * @return {string}
 */
var reverseWords = function(s) {
    var words = s.split(" ")
    var helper = function(word){
    return word.split("").reverse().join("");
}
    for(var i =0;i<words.length;i++){
        words.push(helper(words.shift()))
    }
    return words.join(" ")
};

```