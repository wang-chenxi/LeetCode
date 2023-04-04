2405. Optimal Partition of String

// OJ: https://leetcode.com/problems/optimal-partition-of-string
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {string} s
 * @return {number}
 */
var partitionString = function(s) {
    var cnt = 0
    var set = new Set()
    var cur =""
    for(var i = 0;i<s.length;i++){
        if(!set.has(s[i])){
            set.add(s[i])
            cur += s[i]
        }else{
            cnt ++
            cur = s[i]
            set = new Set()
            set.add(s[i])
        }
    }
    return cur.length>0? cnt+1:cnt
};