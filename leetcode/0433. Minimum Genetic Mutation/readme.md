# [433. Minimum Genetic Mutation (Medium)](https://leetcode.com/problems/minimum-genetic-mutation/)

<p>A gene string can be represented by an 8-character long string, with choices from <code>'A'</code>, <code>'C'</code>, <code>'G'</code>, and <code>'T'</code>.</p>

<p>Suppose we need to investigate a mutation from a gene string <code>startGene</code> to a gene string <code>endGene</code> where one mutation is defined as one single character changed in the gene string.</p>

<ul>
	<li>For example, <code>"AACCGGTT" --&gt; "AACCGGTA"</code> is one mutation.</li>
</ul>

<p>There is also a gene bank <code>bank</code> that records all the valid gene mutations. A gene must be in <code>bank</code> to make it a valid gene string.</p>

<p>Given the two gene strings <code>startGene</code> and <code>endGene</code> and the gene bank <code>bank</code>, return <em>the minimum number of mutations needed to mutate from </em><code>startGene</code><em> to </em><code>endGene</code>. If there is no such a mutation, return <code>-1</code>.</p>

<p>Note that the starting point is assumed to be valid, so it might not be included in the bank.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> startGene = "AACCGGTT", endGene = "AACCGGTA", bank = ["AACCGGTA"]
<strong>Output:</strong> 1
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> startGene = "AACCGGTT", endGene = "AAACGGTA", bank = ["AACCGGTA","AACCGCTA","AAACGGTA"]
<strong>Output:</strong> 2
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= bank.length &lt;= 10</code></li>
	<li><code>startGene.length == endGene.length == bank[i].length == 8</code></li>
	<li><code>startGene</code>, <code>endGene</code>, and <code>bank[i]</code> consist of only the characters <code>['A', 'C', 'G', 'T']</code>.</li>
</ul>


**Related Topics**:  
[Hash Table](https://leetcode.com/tag/hash-table/), [String](https://leetcode.com/tag/string/), [Breadth-First Search](https://leetcode.com/tag/breadth-first-search/)

**Similar Questions**:
* [Word Ladder (Hard)](https://leetcode.com/problems/word-ladder/)

## Solution 1.

```js

// OJ: https://leetcode.com/problems/minimum-genetic-mutation/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
/**
 * @param {string} start
 * @param {string} end
 * @param {string[]} bank
 * @return {number}
 */
var minMutation = function(start, end, bank) {
    const choices = ['A', 'C', 'G', 'T'];
    const queue = [start];
    const seen = new Set([start]);
    let steps = 0;
    while (queue.length !== 0) {
        const nodesInQueue = queue.length;
        for (let j = 0; j < nodesInQueue; j++) {
            const node = queue.shift();
            if (node === end)
                return steps;
            for (const choice of choices) {
                for (let i = 0; i < node.length; i++) {
                    const neighbor = node.substring(0, i) + choice + node.substring(i + 1);
                    if (!seen.has(neighbor) && bank.includes(neighbor)) {
                        queue.push(neighbor);
                        seen.add(neighbor);
                    }
                }
            }
        }
        steps++;
    }
    return -1;
}
            if(diff>1) return false
    //check recursively => no, should not use dfs. since it looks for shortest path, we should. go with bfs
//     var checkAndMap = function(theStart,remains,curStep){
//         if(theStart === end){
//                 step = curStep
//                 return
//             }
//         for(var i = 0;i<remains.length;i++){
//             if(isOneDifference(theStart,remains[i])){
//                 console.log("yes",theStart,remains[i])
//             var newStart = remains[i]
//             var newRemains = remains.filter(item => item !=remains[i])
//             console.log(newStart, newRemains)
//             checkAndMap(newStart,newRemains,curStep+1)
//         }
//     }
//     }
//         checkAndMap(start,bank,0)
//         return step
// };

```