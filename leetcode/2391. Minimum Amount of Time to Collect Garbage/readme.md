```js
2391. Minimum Amount of Time to Collect Garbage

/**
 * @param {string[]} garbage
 * @param {number[]} travel
 * @return {number}
 */
var garbageCollection = function(garbage, travel) {
    var Mcar = 0;
    var Pcar = 0;
    var Gcar = 0;
    var Mtemp = 0;
    var Ptemp = 0;
    var Gtemp = 0;
    for(var i = 0; i<garbage.length;i++){
        var mcount =0;
        var pcount = 0;
        var gcount = 0;
        for(var j = 0;j<garbage[i].length;j++){
            if(garbage[i][j]=="M") mcount++
            else if(garbage[i][j]=="P") pcount ++
            else gcount++
        }
        if(mcount){
            Mcar += Mtemp +mcount
            Mtemp = 0
        }
        if(pcount){
            Pcar += Ptemp +pcount
            Ptemp = 0
        }
        if(gcount){
            Gcar += Gtemp +gcount
            Gtemp = 0
        }
        Mtemp += travel[i]
        Gtemp += travel[i]
        Ptemp += travel[i]
    }
    return Mcar + Pcar + Gcar

};

```