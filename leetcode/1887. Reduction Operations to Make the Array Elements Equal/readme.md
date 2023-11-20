1887. Reduction Operations to Make the Array Elements Equal

```js

/**
 * @param {number[]} nums
 * @return {number}
 */
var reductionOperations = function(nums) {
    var queue = new MaxPriorityQueue()
    var map = new Map()
    var cnt = 0
    for(var i = 0;i<nums.length;i++){
        if(!map.has(nums[i])){
            map.set(nums[i],1)
            queue.enqueue(nums[i],nums[i])
            cnt++
        }else{
            map.set(nums[i],map.get(nums[i])+1)
        }

    }
    if(cnt ==1) return 0
    var ans = 0;
    var steps = cnt -1
    while(steps >0){
        var cur = queue.dequeue().element
        var curSteps = map.get(cur) *steps
        ans += curSteps
        steps --
    }
    
    return ans
};

```