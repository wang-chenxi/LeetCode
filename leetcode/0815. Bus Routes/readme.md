- find shortest path - bfs
- to use double seen to reduce time

```js

/**
 * @param {number[][]} routes
 * @param {number} source
 * @param {number} target
 * @return {number}
 */
var numBusesToDestination = function(routes, source, target) {
    if(target==source) return 0;
    var stopToBus = new Map()
    for(var i = 0;i<routes.length;i++){
        for(var stop of routes[i]){
            if(!stopToBus.has(stop)) stopToBus.set(stop,[i])
            else{
                stopToBus.get(stop).push(i)
            }
        }
    }
    var seenBus = new Array(routes.length).fill(false)
    var seenStops = new Set()
    var queue = [source]
    seenStops.add(source)
    var cnt = 0;
    while(queue.length){
        var curChoices = queue.length
        for(var i = 0;i<curChoices;i++){
            var curStop = queue.shift()
            if(curStop == target) return cnt
            for(var bus of stopToBus.get(curStop)){
                if(seenBus[bus]) continue
                seenBus[bus]= true
                for(var stop of routes[bus]){
                    if(seenStops.has(stop)) continue
                    seenStops.add(stop)
                    queue.push(stop)
                }
            }
        }
        cnt ++
    }
    
    return -1
};

```



