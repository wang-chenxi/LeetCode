# 1402. Reducing Dishes

## Problem

A chef has collected data on the satisfaction level of his n dishes. Chef can cook any dish in 1 unit of time.

Like-time coefficient of a dish is defined as the time taken to cook that dish including previous dishes multiplied by its satisfaction level i.e. time[i] * satisfaction[i].

Return the maximum sum of like-time coefficient that the chef can obtain after dishes preparation.

Dishes can be prepared in any order and the chef can discard some dishes to get this maximum value.

**Example 1:**

Input: satisfaction = [-1,-8,0,5,-9]
Output: 14
Explanation: After Removing the second and last dishes, the maximum total Like-time coefficient will be equal to (-1*1 + 0*2 + 5*3 = 14).

**Example 2:**

Input: satisfaction = [4,3,2]
Output: 20
Explanation: Dishes can be prepared in any order, (2*1 + 3*2 + 4*3 = 20)

**Constraints:**

- n == satisfaction.length
- 1 <= n <= 500
- -10^3 <= satisfaction[i] <= 10^3


## 解题思路

这道题可以通过将 satisfaction 数组按从大到小的顺序排序，然后从大到小遍历数组，每次计算移除当前元素所得到的 Like-time coefficient 和当前最大值的比较，来求得最大值。

## 解法

```javascript
var maxSatisfaction = function(satisfaction) {
    satisfaction.sort((a,b)=>b-a)
    var sumOfUnitTime = 0;
    var sumAllTime = 0;
    var cnt = satisfaction.length
    for(var n of satisfaction){
        sumOfUnitTime += n
        var curMax = n*cnt
        sumAllTime += curMax
        cnt --
    }
    var ans = sumAllTime;
    cnt = satisfaction.length
    for(var i = 0; i<cnt;i++){
        sumAllTime -= sumOfUnitTime
        sumOfUnitTime -= satisfaction.pop()
        ans = Math.max(sumAllTime,ans)
    }
    return ans>0? ans:0
};
```

### 复杂度分析
时间复杂度：O(nlogn)，其中 n 是 satisfaction 数组的长度。排序需要 O(nlogn) 的时间，遍历数组的过程中需要 O(n) 的时间。

空间复杂度：O(logn)，排序需要使用 O(logn) 的栈空间。