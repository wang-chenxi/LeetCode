### 1319. Number of Operations to Make Network Connected

```js

// OJ: https://leetcode.com/problems/number-of-operations-to-make-network-connected
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @param {number[][]} connections
 * @return {number}
 */
var makeConnected = function(n, connections) {
    if(connections.length+1-n<0) return -1
    var theNodes = new Array(n).fill().map(()=>[])
    for(var [node1,node2] of connections){ 
        theNodes[node1].push(node2)
theNodes[node2].push(node1)
    }
    var visited = new Array(n).fill(null)
    let numComponents = 0;
const dfs = (node) => {
    visited[node] = true;
    for (const neighbor of theNodes[node]) {
        if (!visited[neighbor]) {
            dfs(neighbor);
        }
    }
};
for (let node = 0; node < n; node++) {
    if (!visited[node]) {
        numComponents++;
        dfs(node);
    }
}
    return numComponents-1
};