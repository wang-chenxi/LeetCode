# [49. Group Anagrams (Medium)](https://leetcode.com/problems/group-anagrams/)

<p>Given an array of strings <code>strs</code>, group <strong>the anagrams</strong> together. You can return the answer in <strong>any order</strong>.</p>

<p>An <strong>Anagram</strong> is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> strs = ["eat","tea","tan","ate","nat","bat"]
<strong>Output:</strong> [["bat"],["nat","tan"],["ate","eat","tea"]]
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> strs = [""]
<strong>Output:</strong> [[""]]
</pre><p><strong class="example">Example 3:</strong></p>
<pre><strong>Input:</strong> strs = ["a"]
<strong>Output:</strong> [["a"]]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= strs.length &lt;= 10<sup>4</sup></code></li>
	<li><code>0 &lt;= strs[i].length &lt;= 100</code></li>
	<li><code>strs[i]</code> consists of lowercase English letters.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Sorting](https://leetcode.com/tag/sorting/)

**Similar Questions**:
* [Valid Anagram (Easy)](https://leetcode.com/problems/valid-anagram/)
* [Group Shifted Strings (Medium)](https://leetcode.com/problems/group-shifted-strings/)
* [Find Resultant Array After Removing Anagrams (Easy)](https://leetcode.com/problems/find-resultant-array-after-removing-anagrams/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/group-anagrams/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function(strs) {
    var map = new Map()
    var ans = []
    for(var word of strs){
        var sorted = word.split("").sort().join("");
        console.log(sorted)
        if(!map.has(sorted)){
            map.set(sorted,ans.length)
            ans.push([word])
        }else{
            ans[map.get(sorted)].push(word)
        }
    }
    return ans
};

```