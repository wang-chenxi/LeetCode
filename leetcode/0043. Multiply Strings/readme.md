43. Multiply Strings

// OJ: https://leetcode.com/problems/multiply-strings
// Author: Please set your name in options page
// Time: O()
// Space: O()
        dp[i+j+1] = unitsDigit;
        //Update
        dp[i+j] += carryOver
       }
    }
        const carryOver = Math.floor(product/10)
      for(let j = num2.length-1; j >= 0; j--){
      //Define
        const prevRemainder  = dp[i+j+1] 
        const product = num1[i]*num2[j]+prevRemainder
        const unitsDigit = product%10
const multiply = function(num1, num2) {
    const dp = [...Array(num1.length+num2.length)].fill(0); 
    for(let i = num1.length-1; i >= 0; i--){
    //Delete leading-zeroes
    let idx = 0
    while(dp[idx] === 0) dp.shift()
    if(!dp.length) return "0"
    return dp.join("") 
};