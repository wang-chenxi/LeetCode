# [345. Reverse Vowels of a String (Easy)](https://leetcode.com/problems/reverse-vowels-of-a-string/)

<p>Given a string <code>s</code>, reverse only all the vowels in the string and return it.</p>

<p>The vowels are <code>'a'</code>, <code>'e'</code>, <code>'i'</code>, <code>'o'</code>, and <code>'u'</code>, and they can appear in both lower and upper cases, more than once.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> s = "hello"
<strong>Output:</strong> "holle"
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> s = "leetcode"
<strong>Output:</strong> "leotcede"
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 3 * 10<sup>5</sup></code></li>
	<li><code>s</code> consist of <strong>printable ASCII</strong> characters.</li>
</ul>


**Related Topics**:  
[Two Pointers](https://leetcode.com/tag/two-pointers/), [String](https://leetcode.com/tag/string/)

**Similar Questions**:
* [Reverse String (Easy)](https://leetcode.com/problems/reverse-string/)
* [Remove Vowels from a String (Easy)](https://leetcode.com/problems/remove-vowels-from-a-string/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/reverse-vowels-of-a-string/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
};
/**
 * @param {string} s
 * @return {string}
 */
var reverseVowels = function(s) {
    var theArray = s.split("")
    var i = 0,j = theArray.length-1
    var set = new Set()
    set.add("a").add("e").add("u").add("i").add("o").add("A").add("E").add("O").add("U").add("I")
    console.log("test")
    while(i<j){
        if(set.has(theArray[i])){
            while(i<j){
                console.log(theArray[j])
                if(set.has(theArray[j])){
                    console.log(i,j)
                    var temp = theArray[i]
                    theArray[i]=theArray[j]
                    theArray[j]= temp
                    j--
                    break
                }
                j--
            }
        }
        i++
    }
    return theArray.join('')
};

```