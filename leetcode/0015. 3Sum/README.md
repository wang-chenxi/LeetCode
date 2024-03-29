# [15. 3Sum (Medium)](https://leetcode.com/problems/3sum/)

<p>Given an integer array nums, return all the triplets <code>[nums[i], nums[j], nums[k]]</code> such that <code>i != j</code>, <code>i != k</code>, and <code>j != k</code>, and <code>nums[i] + nums[j] + nums[k] == 0</code>.</p>

<p>Notice that the solution set must not contain duplicate triplets.</p>

<p>&nbsp;</p>
<p><strong>Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [-1,0,1,2,-1,-4]
<strong>Output:</strong> [[-1,-1,2],[-1,0,1]]
</pre><p><strong>Example 2:</strong></p>
<pre><strong>Input:</strong> nums = []
<strong>Output:</strong> []
</pre><p><strong>Example 3:</strong></p>
<pre><strong>Input:</strong> nums = [0]
<strong>Output:</strong> []
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= nums.length &lt;= 3000</code></li>
	<li><code>-10<sup>5</sup> &lt;= nums[i] &lt;= 10<sup>5</sup></code></li>
</ul>


**Related Topics**:  
[Array](https://leetcode.com/tag/array/), [Two Pointers](https://leetcode.com/tag/two-pointers/)

**Similar Questions**:
* [Two Sum (Easy)](https://leetcode.com/problems/two-sum/)
* [3Sum Closest (Medium)](https://leetcode.com/problems/3sum-closest/)
* [4Sum (Medium)](https://leetcode.com/problems/4sum/)
* [3Sum Smaller (Medium)](https://leetcode.com/problems/3sum-smaller/)

## Testcases

[-1,0,1,2,-1,-4]
[]
[0]

## Solution 1.

```JAVA

// OJ: https://leetcode.com/problems/3sum/
// Author: github.com/wang-chenxi
// Time: O()
// Space: O()
class Solution {
    public List<List<Integer>> threeSum(int[] nums) {
        List<List<Integer>> results = new ArrayList<List<Integer>>();
        if(nums.length<3){
            return results;
        }
        Arrays.sort(nums);
        for(int i = 0; i<nums.length-2;i++){
            if(i >0 && nums[i] == nums[i-1]){
                continue;
            }
            int left = i+1;
            int right = nums.length-1;
            int sum = 0 - nums[i];
            Set<Integer> lefts = new HashSet<>();
            while(left<right){
                if(lefts.contains(nums[left])){
                    left ++;
                }
                if(nums[left] + nums[right] == sum){
                    List<Integer> result = new ArrayList<Integer>();
                    result.add(nums[i]);
                    result.add(nums[left]);
                    result.add(nums[right]);
                 results.add(result);   
                    lefts.add(nums[left]);
                    left ++;
                    right --;
                }else if(nums[left] +nums[right] <sum){
                    left ++;
                }else{
                    right --;
                }
            }
        }
        return results;
    }
}

```