## bfs
```js

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
 * @return {number[]}
 */
var largestValues = function(root) {
    // bfs
    var ans = []
    if(!root) return []
    var queue = [root]
    while (queue.length){
        var max=queue[0].val;
        var len = queue.length
        while(len>0){
            var cur = queue.shift()
            max = Math.max(cur.val, max)
            if(cur.left) queue.push(cur.left)
            if(cur.right) queue.push(cur.right)
            len --
        }
        ans.push(max)
    }
    return ans
};
```

### dfs
```js
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
 * @return {number[]}
 */
var largestValues = function(root) {
    // dfs
    var ans = []
    // create dfs func
    var dfs = (root,level) =>{
if(!root) return
if(ans.length<= level) ans.push(root.val)
else{
    ans[level] = Math.max(root.val,ans[level])
}
dfs(root.left, level+1)
dfs(root.right,level+1)
    }

    // call dfs func
    dfs(root,0);
    return ans
};

```