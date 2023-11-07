

const find_bot = (log, cnt) =>{
    var processedArray = log.replace('ts,IP','').split('\n').map(x => x.split(','));

    var map = {}

     var bots = []
    for(var i = 0;i<processedArray.length;i++){
        var curIp = processedArray[i][1]
        if(!map[curIp]){
            map.set(curIp,1)
        }else if(map[curIp]=="bot"){
            continue;
        }
        else {
            map.set(curIp,map[curIp]+1)
        }
        if(map[curIp]>cnt){
            bots.push[curIp]
            map.set(curIp, "bot")
        }
    }
    return bots;
}