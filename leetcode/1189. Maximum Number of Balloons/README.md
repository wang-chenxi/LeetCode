# [1189. Maximum Number of Balloons (Easy)](https://leetcode.com/problems/maximum-number-of-balloons/)

<p>Given a string <code>text</code>, you want to use the characters of <code>text</code> to form as many instances of the word <strong>"balloon"</strong> as possible.</p>

<p>You can use each character in <code>text</code> <strong>at most once</strong>. Return the maximum number of instances that can be formed.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2019/09/05/1536_ex1_upd.JPG" style="width: 132px; height: 35px;"></strong></p>

<pre><strong>Input:</strong> text = "nlaebolko"
<strong>Output:</strong> 1
</pre>

<p><strong>Example 2:</strong></p>

<p><strong><img alt="" src="https://assets.leetcode.com/uploads/2019/09/05/1536_ex2_upd.JPG" style="width: 267px; height: 35px;"></strong></p>

<pre><strong>Input:</strong> text = "loonbalxballpoon"
<strong>Output:</strong> 2
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> text = "leetcode"
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= text.length &lt;= 10<sup>4</sup></code></li>
	<li><code>text</code> consists of lower case English letters only.</li>
</ul>

**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Counting](https://leetcode.com/tag/counting/)

## Solution 1.

```js
// OJ: https://leetcode.com/problems/maximum-number-of-balloons/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} text
 * @return {number}
 */
const maxNumberOfBalloons = (text) => {
  let obj = {},
    balloonCount = 0;
  //iterate the whole text to get num of chars
  for (let el of text) {
    obj[el] = (obj[el] || 0) + 1;
  }
  // iterate the whole map to get the count
  while (
    obj["a"] > 0 &&
    obj["b"] > 0 &&
    obj["l"] > 1 &&
    obj["n"] > 0 &&
    obj["o"] > 1
  ) {
    balloonCount++;
    obj["a"]--;
    obj["b"]--;
    obj["l"] -= 2;
    obj["n"]--;
    obj["o"] -= 2;
  }
  return balloonCount;
};
```
