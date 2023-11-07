```js

/**
 * @param {number[]} dist
 * @param {number[]} speed
 * @return {number}
 */
var eliminateMaximum = function(dist, speed) {
    for (var i = 0;i<dist.length;i++){
        dist[i]=(Math.ceil(dist[i]/speed[i]))
    }
    dist.sort(function(a, b){return a-b})
    var cnt = 0;
    for(;cnt<dist.length;cnt++){
        if(dist[cnt]<=cnt) break;
    }
    return cnt
};


```