1444. Number of Ways of Cutting a Pizza


```js

// OJ: https://leetcode.com/problems/number-of-ways-of-cutting-a-pizza
// Author: Please set your name in options page
// Time: O()
// Space: O()
 /**
 * @param {string[]} pizza
 * @param {number} k
 * @return {number}
 */
var ways = function(pizza, k) {
  let m = pizza.length, n = pizza[0].length, mod = 10 ** 9 + 7;
  
  // calculate the number of apples in each submatrix of pizza using prefix sum technique
  let appleCount = Array(m + 1).fill(0).map(() => Array(n + 1).fill(0));
  for (let i = m - 1; i >= 0; i--) {
    for (let j = n - 1; j >= 0; j--) {
      let curr = pizza[i][j] === 'A' ? 1 : 0;
      appleCount[i][j] = appleCount[i][j + 1] + appleCount[i + 1][j] - appleCount[i + 1][j + 1] + curr;
    }
  }

  // recursive function to calculate the number of ways to cut pizza with k cuts starting from (i, j) position
  let memo = Array(m).fill(0).map(() => Array(n).fill(0).map(() => Array(k + 1).fill(-1)));
  function dp(i, j, k) {
    if (k === 1) return appleCount[i][j] > 0 ? 1 : 0; // base case: when only one cut is remaining, check if there are apples in the submatrix
    if (appleCount[i][j] === 0) return 0; // base case: if there are no apples in the submatrix, return 0
    if (memo[i][j][k] !== -1) return memo[i][j][k]; // if the current state is already calculated, return it from memoization
    
    let ans = 0;
    for (let newRow = i; newRow < m - 1; newRow++) { // loop to cut the pizza vertically
      if (appleCount[newRow + 1][j] === appleCount[i][j]) continue; // if the top submatrix has no apples, skip this cut
      ans = (ans + dp(newRow + 1, j, k - 1)) % mod; // recursively calculate the number of ways to cut the remaining submatrix and add it to the answer
    }
    for (let newCol = j; newCol < n - 1; newCol++) { // loop to cut the pizza horizontally
      if (appleCount[i][newCol + 1] === appleCount[i][j]) continue; // if the left submatrix has no apples, skip this cut
      ans = (ans + dp(i, newCol + 1, k - 1)) % mod; // recursively calculate the number of ways to cut the remaining submatrix and add it to the answer
    }
    return memo[i][j][k] = ans; // memoize the current state and return the answer
  }
  
  // call the recursive function to calculate the number of ways to cut the entire pizza with k cuts starting from (0, 0) position
  return dp(0, 0, k);
};


