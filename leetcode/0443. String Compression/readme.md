443. String Compression

```js

// OJ: https://leetcode.com/problems/string-compression
// Author: Please set your name in options page
// Time: O()
// Space: O()
/**
 * @param {character[]} chars
 * @return {number}
 */
var compress = function(chars) {
    if(chars.length===1) return 1
    var cur = chars[0]
    var ans = [];
    var cnt = 0;
    var checkCnt = function(cnt,isLoop){
        var str = cnt.toString()
            for(var c of str){
                isLoop?ans.push(c):chars.push(c)
            }
    }
    while(chars.length){
        console.log(cur,ans)
if(cur != chars[0]){
    ans.push(cur)
    if(cnt>1){checkCnt(cnt,true)}
    cur = chars[0]
    cnt =1;
}else{
cnt++;
        } 
        chars.shift()
}
while(ans.length){
    chars.push(ans.shift())
}
chars.push(cur)
if(cnt>1) checkCnt(cnt)
return chars.length
}


```