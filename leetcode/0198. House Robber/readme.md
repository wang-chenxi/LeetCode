## [House Robber] (https://leetcode.com/problems/house-robber/submissions/859856939/)
```js
/**
 * @param {number[]} nums
 * @return {number}
 */
var rob = function(nums) {
    var sumMax = [0];
    for(var i =0;i<nums.length;i++){
        var curSum = nums[i];
        curSum += Math.max(sumMax[i-1]||0,sumMax[i-2]||0)
        sumMax.push(curSum)
        console.log(curSum,sumMax)
    }
    return Math.max(sumMax[i],sumMax[i-1])
};

```