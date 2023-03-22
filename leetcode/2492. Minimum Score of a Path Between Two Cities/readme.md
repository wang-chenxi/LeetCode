### 2492. Minimum Score of a Path Between Two Cities

```js 
// OJ: https://leetcode.com/problems/minimum-score-of-a-path-between-two-cities
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {number} n
 * @param {number[][]} roads
 * @return {number}
 */
var minScore = function(n, roads) {
    // bfs
    var ans = Number.MAX_SAFE_INTEGER
    var visited = new Set()
    var distances = new Array(n+1).fill().map(() => []);
    for(var road of roads){
        var city1  = road[0]
        var city2 = road[1]
        distances[city1].push([city2,road[2]])
        distances[city2].push([city1,road[2]])
    }
    var queue = [1]
    visited.add(1)
    while(queue.length){
        var cur = queue.shift()
        for(var distance of distances[cur]){
            ans = Math.min(distance[1],ans)
            if(visited.has(distance[0])) continue
            else{
                visited.add(distance[0])
                queue.push(distance[0])
            }
        }
    }
    return ans
};