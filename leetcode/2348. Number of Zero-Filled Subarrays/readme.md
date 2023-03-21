### 2348. Number of Zero-Filled Subarrays

```js
// OJ: https://leetcode.com/problems/number-of-zero-filled-subarrays
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @return {number}
 */
var zeroFilledSubarray = function(nums) {
    var count = 0;
    var length = 0;
    for(var n of nums){
        if(n===0){
            length++;
            count += length
        }else{
            length=0;
        }
    }
return count
};

```