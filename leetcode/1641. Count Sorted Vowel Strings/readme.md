# [1641. Count Sorted Vowel Strings (Medium)](https://leetcode.com/problems/count-sorted-vowel-strings/)

<p>Given an integer <code>n</code>, return <em>the number of strings of length </em><code>n</code><em> that consist only of vowels (</em><code>a</code><em>, </em><code>e</code><em>, </em><code>i</code><em>, </em><code>o</code><em>, </em><code>u</code><em>) and are <strong>lexicographically sorted</strong>.</em></p>

<p>A string <code>s</code> is <strong>lexicographically sorted</strong> if for all valid <code>i</code>, <code>s[i]</code> is the same as or comes before <code>s[i+1]</code> in the alphabet.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> n = 1
<strong>Output:</strong> 5
<strong>Explanation:</strong> The 5 sorted strings that consist of vowels only are <code>["a","e","i","o","u"].</code>
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> n = 2
<strong>Output:</strong> 15
<strong>Explanation:</strong> The 15 sorted strings that consist of vowels only are
["aa","ae","ai","ao","au","ee","ei","eo","eu","ii","io","iu","oo","ou","uu"].
Note that "ea" is not a valid string since 'e' comes after 'a' in the alphabet.
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> n = 33
<strong>Output:</strong> 66045
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 50</code>&nbsp;</li>
</ul>


**Related Topics**:  
[Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

## Solution 1.


<p>get the answer from: https://leetcode.com/problems/count-sorted-vowel-strings/discuss/918400/Javascript-Math-O(1)</p>

<li>Choose how many vowels will be used (1~5)</li>
<li>Get all sets of possible <code>(k-1)</code> converting points <code>C(n-1, k-1)</code> where <code>k</code> is the number of used vowels.</li>
</ol>
<p></p><p>Since there are 5 vowels at most, the time complexity is O(1)</p><p>
</p><p>For example, if given n = 6, there are 5 cases:</p><p>
</p><ol>
<li>Choose 1 vowel: 5 cases only;</li>
<li>Choose 2 vowels:<br>
There are <code>C(5,2) = 10</code> types of vowel combinations could be choose. Lets choose <code>a</code> and <code>i</code> as example.<br>
One case is <code>a-a-a-a-i-i</code>. From this case, there is <strong>only one converting point to change <code>a</code> to <code>i</code></strong>. There are <code>n-1 = 5</code> candidates to be converting point, so the total number of possible strings is <code>C(5,2)*C(5,1)=50</code>;</li>
<li>Choose 3 vowels:<br>
Take <code>a-a-e-i-i-i</code> as example. We have to <strong>choose 2 positions as converting points</strong> to convert <code>a-&gt;e</code> and <code>e-&gt;i</code> respectively. That is, <code>C(n-1, 2) = C(5, 2) = 10</code>.<br>
So the total possible number in this case is <code>C(5,3)C(n-1,2) = 100</code></li>
<li>Choose 4 vowels: <code>C(5,4)C(n-1,3) = 50</code></li>
<li>Choose 5 vowels: <code>C(n-1,4) = 5</code></li>
</ol>
<p></p><p>Sum of the 5 cases = <code>5+50+100+50+5 = 210</code></p><p>

```js
var countVowelStrings = function(n) {
    return 5 + 10 * combination(n-1, 1) + 10 * combination(n-1, 2) + 5 * combination(n-1, 3) + combination(n-1, 4);
};

function combination(n, k) {
    if (k === 1)
        return n;
    
    return combination(n-1, k-1)*n/k;
}
```