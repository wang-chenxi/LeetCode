// OJ: https://leetcode.com/problems/count-odd-numbers-in-an-interval-range
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number} low
 * @param {number} high
 * @return {number}
 */
var countOdds = function(low, high) {
    return (low%2==0&&high%2==0)?Math.floor((high-low)/2):Math.floor((high-low)/2)+1
};