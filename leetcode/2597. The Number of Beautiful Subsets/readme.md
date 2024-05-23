### 2597. The Number of Beautiful Subsets

```js
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var beautifulSubsets = function(nums, k) {
    let ans = 0
    let backtrack = (arr,map)=>{
        for(let i = 0;i<arr.length;i++){
            let cur = arr[i]
            if(map.get(cur)) continue
            else{
                ans++
                let n1 = cur+k
                // since all n are positive so it does not matter if the res is negative in set
                let n2 = cur-k
                map.set(n1,(map.get(n1)??0)+1)
                map.set(n2,(map.get(n2)??0)+1)
                let newArr = arr.slice(i+1)
                backtrack(newArr,map)
                map.set(n1,(map.get(n1))-1)
                map.set(n2,(map.get(n2))-1)
            }
        }
    }
    backtrack(nums, new Map())
    return ans
};

```