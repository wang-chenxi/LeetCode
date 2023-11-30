1561. Maximum Number of Coins You Can Get

```js
/**
 * @param {number[]} piles
 * @return {number}
 */
var maxCoins = function(piles) {
    piles.sort(function(a,b){return a-b})
    var cnt = piles.length/3
    var len = piles.length
    var ans = 0;
    for(var i = 0;i<cnt;i++){
        var index = 2*i
        var cur = piles[len-2-index]
        ans += cur
    }
    return ans
    
};



```