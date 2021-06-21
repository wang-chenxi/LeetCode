# [387. First Unique Character in a String (Easy)](https://leetcode.com/problems/first-unique-character-in-a-string/)

<p>Given a string <code>s</code>, return <em>the first non-repeating character in it and return its index</em>. If it does not exist, return <code>-1</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> s = "leetcode"
<strong>Output:</strong> 0
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> s = "loveleetcode"
<strong>Output:</strong> 2
</pre><p><strong>Example 3:</strong></p>
<pre><strong>Input:</strong> s = "aabb"
<strong>Output:</strong> -1
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 10<sup>5</sup></code></li>
	<li><code>s</code> consists of only lowercase English letters.</li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/)

**Similar Questions**:
* [Sort Characters By Frequency (Medium)](https://leetcode.com/problems/sort-characters-by-frequency/)

## Testcases
"leetcode"
"loveleetcode"
"aabb"

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/first-unique-character-in-a-string/
// Author: github.com/wang-chenxi
// Time: O(N)
// Space: O(N)
class Solution {
    public int firstUniqChar(String s) {
  char sArray[] = s.toCharArray();
        Map<Character, Integer> letters = new HashMap<Character, Integer>();
        for(int i =0; i<sArray.length;i++){
            if(!letters.containsKey(sArray[i])){
                letters.put(sArray[i],1);
            }else{
                letters.put(sArray[i],letters.get(sArray[i])+1);
            }
        }
        for(int i = 0;i<sArray.length;i++){
            if(letters.get(sArray[i])==1){
                return i;
            }
        }
        return -1;
    }
}

```