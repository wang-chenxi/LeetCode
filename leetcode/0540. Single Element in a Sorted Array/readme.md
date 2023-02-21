540. Single Element in a Sorted Array


```js
// OJ: https://leetcode.com/problems/single-element-in-a-sorted-array
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var singleNonDuplicate = function(nums) {
    if (nums.length===1) return nums[0]
    var i = 0;
    var j = i+1;
    while(i<nums.length){
        if(nums[i]!=nums[j]) return nums[i]
        else{
            i += 2;
            j = i+1;
        }
    }
};

```