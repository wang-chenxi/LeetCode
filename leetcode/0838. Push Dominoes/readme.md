# [838. Push Dominoes (Medium)](https://leetcode.com/problems/push-dominoes/)

<p>There are <code>n</code> dominoes in a line, and we place each domino vertically upright. In the beginning, we simultaneously push some of the dominoes either to the left or to the right.</p>

<p>After each second, each domino that is falling to the left pushes the adjacent domino on the left. Similarly, the dominoes falling to the right push their adjacent dominoes standing on the right.</p>

<p>When a vertical domino has dominoes falling on it from both sides, it stays still due to the balance of the forces.</p>

<p>For the purposes of this question, we will consider that a falling domino expends no additional force to a falling or already fallen domino.</p>

<p>You are given a string <code>dominoes</code> representing the initial state where:</p>

<ul>
	<li><code>dominoes[i] = 'L'</code>, if the <code>i<sup>th</sup></code> domino has been pushed to the left,</li>
	<li><code>dominoes[i] = 'R'</code>, if the <code>i<sup>th</sup></code> domino has been pushed to the right, and</li>
	<li><code>dominoes[i] = '.'</code>, if the <code>i<sup>th</sup></code> domino has not been pushed.</li>
</ul>

<p>Return <em>a string representing the final state</em>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> dominoes = "RR.L"
<strong>Output:</strong> "RR.L"
<strong>Explanation:</strong> The first domino expends no additional force on the second domino.
</pre>

<p><strong>Example 2:</strong></p>
<img alt="" src="https://s3-lc-upload.s3.amazonaws.com/uploads/2018/05/18/domino.png" style="height: 196px; width: 512px;">
<pre><strong>Input:</strong> dominoes = ".L.R...LR..L.."
<strong>Output:</strong> "LL.RR.LLRRLL.."
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == dominoes.length</code></li>
	<li><code>1 &lt;= n &lt;= 10<sup>5</sup></code></li>
	<li><code>dominoes[i]</code> is either <code>'L'</code>, <code>'R'</code>, or <code>'.'</code>.</li>
</ul>


**Related Topics**:  
[Two Pointers](https://leetcode.com/tag/two-pointers/), [String](https://leetcode.com/tag/string/), [Dynamic Programming](https://leetcode.com/tag/dynamic-programming/)

<div class="discuss-markdown-container"><p>We are going to approach this problem by using dp Array</p><p>
</p><p>Lets take example<br>
From the left of dominoes we are pushing towards Right and we are storing the index of the last right push if the left push is on the particular point we are putting the index as -1 and also if there are no right push as of now and we have "." means also we are considering -1.<br>
Given Input =&gt;  ".L.R...LR..L.."<br>
After the left-side right push dpL =&gt; [ -1,-1,-1,3,3,3,3,-1,8,8,8,-1,-1,-1]</p><p>
</p><p>After that we have to take the right-side left push we are keeping the 'R' and "." as -1 and storing the index of the left push from the right side.<br>
After the right-side-left-push dpR =&gt;[1,1,-1,-1,7,7,7,7,-1,11,11,11,-1,-1]</p><p>
</p><p>Then For finalizing result string we are doing followin checks</p><p>
</p><ol>
<li>if both the dp consist of -1 that means no push occured on the particular domino so we are adding "."</li>
<li>Then are checking is any one of the dp having the push like its having any index other than -1. If dpR consist means that is left push vice versa for the dp L.</li>
<li>Then if the both contains index we are calculating the nearest index and putting their value if both are equal we are adding "."</li>
</ol>
<p></p><p>Please upvote this solution if you like this</p><p>
</p><pre><code><span class="hljs-comment">/**
 * <span class="hljs-doctag">@param <span class="hljs-type">{string}</span> <span class="hljs-variable">dominoes</span></span>
 * <span class="hljs-doctag">@return <span class="hljs-type">{string}</span></span>
 */</span>
<span class="hljs-keyword">var</span> pushDominoes = <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params">d</span>) </span>{
    <span class="hljs-keyword">let</span> dpL = [];
    <span class="hljs-keyword">let</span> dpR = [];
    <span class="hljs-keyword">for</span>(<span class="hljs-keyword">let</span> i =<span class="hljs-number">0</span>;i&lt;d.length;i++){
        <span class="hljs-keyword">if</span>(d[i]===<span class="hljs-string">'R'</span>){
            dpL[i] = i;
        } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(d[i]===<span class="hljs-string">'L'</span>){
            dpL[i] = -<span class="hljs-number">1</span>;
        } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(dpL[i]!=-<span class="hljs-number">1</span>){
            dpL[i] = dpL[i-<span class="hljs-number">1</span>]===<span class="hljs-literal">undefined</span> ? -<span class="hljs-number">1</span>:dpL[i-<span class="hljs-number">1</span>];
        }
        <span class="hljs-keyword">let</span> j = d.length-i-<span class="hljs-number">1</span>;
        <span class="hljs-keyword">if</span>(d[j]===<span class="hljs-string">'L'</span>){
            dpR[j] = j;
        } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(d[j]===<span class="hljs-string">'R'</span>){
            dpR[j] = -<span class="hljs-number">1</span>;
        } <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(dpR[j]!=-<span class="hljs-number">1</span>){
            dpR[j] = dpR[j+<span class="hljs-number">1</span>]===<span class="hljs-literal">undefined</span> ? -<span class="hljs-number">1</span>:dpR[j+<span class="hljs-number">1</span>];
        }
    }
    <span class="hljs-keyword">let</span> res = <span class="hljs-string">''</span>;
    <span class="hljs-keyword">for</span>(<span class="hljs-keyword">let</span> i=<span class="hljs-number">0</span>;i&lt;d.length;i++){
		<span class="hljs-comment">// check 1</span>
        <span class="hljs-keyword">if</span>(dpR[i]==-<span class="hljs-number">1</span>&amp;dpL[i]==-<span class="hljs-number">1</span>){
            res+=<span class="hljs-string">"."</span>
            }
        <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(dpL[i]!==-<span class="hljs-number">1</span> &amp;&amp; dpR[i]!==-<span class="hljs-number">1</span>){
			<span class="hljs-comment">//  check 3</span>
            <span class="hljs-keyword">if</span>(<span class="hljs-built_in">Math</span>.abs(dpL[i]-i)===<span class="hljs-built_in">Math</span>.abs(dpR[i]-i)){
                res+=<span class="hljs-string">"."</span>;
            }
            <span class="hljs-keyword">else</span> <span class="hljs-keyword">if</span>(<span class="hljs-built_in">Math</span>.abs(dpL[i]-i)&lt;<span class="hljs-built_in">Math</span>.abs(dpR[i]-i)){
                res+=<span class="hljs-string">'R'</span>;
            }
            <span class="hljs-keyword">else</span>{
                res+=<span class="hljs-string">'L'</span>;
            }
        }
        <span class="hljs-keyword">else</span>{
			<span class="hljs-comment">// check 2</span>
            res+=dpL[i]===-<span class="hljs-number">1</span>?<span class="hljs-string">'L'</span>:<span class="hljs-string">'R'</span>
        }
    }
    <span class="hljs-keyword">return</span> res;
};
</code></pre><p></p></div>