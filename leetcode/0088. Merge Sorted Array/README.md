# [88. Merge Sorted Array (Easy)](https://leetcode.com/problems/merge-sorted-array/)

<p>Given two sorted integer arrays <code>nums1</code> and <code>nums2</code>, merge <code>nums2</code> into <code>nums1</code> as one sorted array.</p>

<p>The number of elements initialized in <code>nums1</code> and <code>nums2</code> are <code>m</code> and <code>n</code> respectively. You may assume that <code>nums1</code> has a size equal to <code>m + n</code> such that it has enough space to hold additional elements from <code>nums2</code>.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
<strong>Output:</strong> [1,2,2,3,5,6]
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums1 = [1], m = 1, nums2 = [], n = 0
<strong>Output:</strong> [1]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>nums1.length == m + n</code></li>
	<li><code>nums2.length == n</code></li>
	<li><code>0 &lt;= m, n &lt;= 200</code></li>
	<li><code>1 &lt;= m + n &lt;= 200</code></li>
	<li><code>-10<sup>9</sup> &lt;= nums1[i], nums2[i] &lt;= 10<sup>9</sup></code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:&nbsp;</strong>Can you come up with an algorithm that runs in&nbsp;<code>O(m + n)</code>&nbsp;time?

**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Two Pointers](https://leetcode.com/tag/two-pointers/)

**Similar Questions**:
* [Merge Two Sorted Lists (Easy)](https://leetcode.com/problems/merge-two-sorted-lists/)
* [Squares of a Sorted Array (Easy)](https://leetcode.com/problems/squares-of-a-sorted-array/)
* [Interval List Intersections (Medium)](https://leetcode.com/problems/interval-list-intersections/)

## Test Cases
[1,2,3,0,0,0]
3
[2,5,6]
3
[1]
1
[]
0

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/merge-sorted-array/
// Author: github.com/wang-chenxi
// Time: O(m+n)
// Space: O(1)
class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        int i = m-1;
        int j = n-1; 
        int k = nums1.length-1;
        if (n==0){
            return;
        } else{ 
        for( ; i>=0 && j>=0;k--){
            if(nums1[i]>nums2[j]){
                nums1[k] = nums1[i];
                i--;
            }else if(nums1[i]<nums2[j]){
                nums1[k] = nums2[j];
                j--;
            }else{
                nums1[k] = nums1[i];
                nums1[k-1] = nums2[j];
                i--;
                j--;
                k--;
            }
        }   
        while(j>=0){
            nums1[k] = nums2[j];
            k--;
            j--;
        }
            return;
            }
    }
}

```

## Solution 2.

```JAVA

// OJ: https://leetcode.com/problems/merge-sorted-array/
// Author: github.com/wang-chenxi
// Time: O(m+n)
// Space: O(1)
class Solution {
    public void merge(int[] A, int m, int[] B, int n) {
        int i = m - 1, j = n - 1, k = m + n - 1;
        for (; k >= 0; --k) {
            if (j == -1 || (i >= 0 && A[i] >= B[j])) {
                A[k] = A[i];
                --i;
            } else {
                A[k] = B[j];
                --j;
            }
        }
    }
}

```