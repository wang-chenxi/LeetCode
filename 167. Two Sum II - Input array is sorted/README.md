# [167. Two Sum II - Input array is sorted (Easy)](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

<p>Given an array of integers <code>numbers</code> that is already <strong><em>sorted in non-decreasing order</em></strong>, find two numbers such that they add up to a specific <code>target</code> number.</p>

<p>Return<em> the indices of the two numbers (<strong>1-indexed</strong>) as an integer array </em><code>answer</code><em> of size </em><code>2</code><em>, where </em><code>1 &lt;= answer[0] &lt; answer[1] &lt;= numbers.length</code>.</p>

<p>The tests are generated such that there is <strong>exactly one solution</strong>. You <strong>may not</strong> use the same element twice.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>

<pre><strong>Input:</strong> numbers = [2,7,11,15], target = 9
<strong>Output:</strong> [1,2]
<strong>Explanation:</strong> The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
</pre>

<p><strong>Example 2:</strong></p>

<pre><strong>Input:</strong> numbers = [2,3,4], target = 6
<strong>Output:</strong> [1,3]
</pre>

<p><strong>Example 3:</strong></p>

<pre><strong>Input:</strong> numbers = [-1,0], target = -1
<strong>Output:</strong> [1,2]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>2 &lt;= numbers.length &lt;= 3 * 10<sup>4</sup></code></li>
	<li><code>-1000 &lt;= numbers[i] &lt;= 1000</code></li>
	<li><code>numbers</code> is sorted in <strong>non-decreasing order</strong>.</li>
	<li><code>-1000 &lt;= target &lt;= 1000</code></li>
	<li>The tests are generated such that there is <strong>exactly one solution</strong>.</li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Two Pointers](https://leetcode.com/tag/two-pointers/), [Binary Search](https://leetcode.com/tag/binary-search/)

**Similar Questions**:
* [Two Sum (Easy)](https://leetcode.com/problems/two-sum/)
* [Two Sum IV - Input is a BST (Easy)](https://leetcode.com/problems/two-sum-iv-input-is-a-bst/)
* [Two Sum Less Than K (Easy)](https://leetcode.com/problems/two-sum-less-than-k/)

## Test Cases
[2,7,11,15]
9
[2,3,4]
6
[-1,0]
-1

## Solution 1 - hashmap.

```JAVA

// OJ: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
class Solution {
    public int[] twoSum(int[] numbers, int target) {
        Map<Integer, Integer> ansMap = new HashMap<Integer, Integer>();
        for(int i=0; i<numbers.length;i++){
            if (!ansMap.keySet().contains(numbers[i])){
                ansMap.put(target-numbers[i],i+1);
            }else{
                return new int[] {ansMap.get(numbers[i]), i+1};
            }
        }
        return new int[]{};
    }
}

```

## Solution 2 - two pointer.

```JAVA

// OJ: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
class Solution {
    public int[] twoSum(int[] numbers, int target) {
        int i = 1;
        int j = numbers.length;
        while(numbers[i-1]+numbers[j-1]!=target){
            if(numbers[i-1]+numbers[j-1]>target){
                j--;
            }else{
                i++;
            }
        }
        return new int[]{i,j};
    }
}

```