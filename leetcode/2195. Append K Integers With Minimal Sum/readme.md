2195. Append K Integers With Minimal Sum

```js

// OJ: https://leetcode.com/problems/append-k-integers-with-minimal-sum
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
const minimalKSum = (nums, k) => {
  const set = new Set(nums);
  let sum = (1 + k) * k / 2;
  let more = 0;
  nums = Array.from(set)
  for (const n of nums) {
    n <= k && (++more, sum -= n);
  }
  while (more > 0) {
    !set.has(++k) && (sum += k, --more);
  }
  return sum;
};

```