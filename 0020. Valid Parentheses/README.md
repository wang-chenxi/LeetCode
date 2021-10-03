# [20. Valid Parentheses (Easy)](https://leetcode.com/problems/valid-parentheses/)

<p>Given a string <code>s</code> containing just the characters <code>'('</code>, <code>')'</code>, <code>'{'</code>, <code>'}'</code>, <code>'['</code> and <code>']'</code>, determine if the input string is valid.</p>

<p>An input string is valid if:</p>

<ol>
	<li>Open brackets must be closed by the same type of brackets.</li>
	<li>Open brackets must be closed in the correct order.</li>
</ol>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> s = "()"
<strong>Output:</strong> true
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> s = "()[]{}"
<strong>Output:</strong> true
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> s = "(]"
<strong>Output:</strong> false
</pre>

<p><strong>Example 4:</strong></p>

<pre><strong>Input:</strong> s = "([)]"
<strong>Output:</strong> false
</pre>

<p><strong>Example 5:</strong></p>

<pre><strong>Input:</strong> s = "{[]}"
<strong>Output:</strong> true
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 10<sup>4</sup></code></li>
	<li><code>s</code> consists of parentheses only <code>'()[]{}'</code>.</li>
</ul>


**Related Topics**:  
[String](https://leetcode.com/tag/string/), [Stack](https://leetcode.com/tag/stack/)

**Similar Questions**:
* [Generate Parentheses (Medium)](https://leetcode.com/problems/generate-parentheses/)
* [Longest Valid Parentheses (Hard)](https://leetcode.com/problems/longest-valid-parentheses/)
* [Remove Invalid Parentheses (Hard)](https://leetcode.com/problems/remove-invalid-parentheses/)
* [Check If Word Is Valid After Substitutions (Medium)](https://leetcode.com/problems/check-if-word-is-valid-after-substitutions/)

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/valid-parentheses/
// Author: github.com/wang-chenxi
// Time: O(N)
// Space: O(1)
class Solution {
    public boolean isValid(String s) {
        // key closing -> value opening
        Map<Character, Character> map = Map.of(')','(',']','[','}','{');
        Stack<Character> stack = new Stack<>();
        //stack is a data structure that first-in then last-out for examp if you push 1,2,3 in stack the stack will be push 1 in bottom then 2 on top of 1 then 3 on top of 2. when you retrieve the order is pop 3 first, then 2, then 1
        char c;
        for(int i = 0; i<s.length();i++){
            c=s.charAt(i);
            if(map.containsKey(c)){
                if(stack.isEmpty()||stack.pop()!=map.get(c)) return false;
            }else{
                stack.push(c);
            }
        }
        return stack.isEmpty();
    }
}

//push() add to top of stack
//pop() take from top of stack

```