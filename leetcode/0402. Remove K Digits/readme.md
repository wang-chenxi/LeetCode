### 402. Remove K Digits

// OJ: https://leetcode.com/problems/remove-k-digits
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {string} num
 * @param {number} k
 * @return {string}
 */
var removeKdigits = function(num, k) {
    var stack = []
    var removed = 0
    for(var n of num){
        while(removed<k&&stack.length&&stack[stack.length-1]>n){
                stack.pop()
                removed ++
            }
        stack.push(n)
    }
    while(removed<k){
        if(stack.length>1&&(stack[stack.length-1]<stack[stack.length-2])){
            stack[stack.length-2]= stack[stack.length-1]
        }
        stack.pop()
        removed++
    }
    while(stack[0]==="0") stack.shift()
    if(!stack.length)return "0"
    return stack.join("")
};