652. Find Duplicate Subtrees

```js

// OJ: https://leetcode.com/problems/find-duplicate-subtrees
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {TreeNode[]}
 */
var findDuplicateSubtrees = function(root) {
    //bottom up 
    // the left right and parent value should be same
    if(!root)return null
    const map = new Map()
    const ans = []
    var dfs = (root)=>{
        if(!root) return 'leaf'
        const subtree = `${root.val}+${dfs(root.left)}+${dfs(root.right)}`
        map.set(subtree,(map.get(subtree)||0)+1)
        if(map.get(subtree)===2) ans.push(root)
        return subtree
    }
    dfs(root)
    return ans
};

```