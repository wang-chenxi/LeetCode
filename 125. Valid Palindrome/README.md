# [125. Valid Palindrome (Easy)](https://leetcode.com/problems/valid-palindrome/)

<p>Given a string <code>s</code>, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> s = "A man, a plan, a canal: Panama"
<strong>Output:</strong> true
<strong>Explanation:</strong> "amanaplanacanalpanama" is a palindrome.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> s = "race a car"
<strong>Output:</strong> false
<strong>Explanation:</strong> "raceacar" is not a palindrome.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 2 * 10<sup>5</sup></code></li>
	<li><code>s</code> consists only of printable ASCII characters.</li>
</ul>


**Related Topics**:  
[Two Pointers](https://leetcode.com/tag/two-pointers/), [String](https://leetcode.com/tag/string/)

**Similar Questions**:
* [Palindrome Linked List (Easy)](https://leetcode.com/problems/palindrome-linked-list/)
* [Valid Palindrome II (Easy)](https://leetcode.com/problems/valid-palindrome-ii/)

## Testcases

* "A man, a plan, a canal: Panama"
* "."
* "A"
* "A."
* "A.a"
* "A. a"
* "...a.."
* ".,"
* "0P"

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/valid-palindrome/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
class Solution {
    public boolean isPalindrome(String s) {
        s = s.toLowerCase();
        int l = 0;
        int r = s.length()-1;
        while(l<r){
            while((!Character.isLetterOrDigit(s.charAt(l)))&&l<r){
                l++;
            }
            while((!Character.isLetterOrDigit(s.charAt(r)))&&l<r){
                r--;
            }
            if(s.charAt(l) == s.charAt(r)){
                l++;
                r--;
            }else{
                return false;
            }
        }
               return true;
    }
}

```