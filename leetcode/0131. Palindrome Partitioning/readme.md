### 131. Palindrome Partitioning

```js
var partition = function(s) {
    // backtracking
    let isPal = (str)=>{
        let l = 0
        let r = str.length-1
        while(l<r){
            if(str[l]!==str[r]) return false
            l++
            r--
        }
        return true
    }
    let ans = []
    let backtrack = (str,par)=>{
        if(!str.length){
            ans.push(par)
            return
        }
        for(let i = 0;i<str.length;i++){
            if(isPal(str.substring(0,i+1))){
                let newPar = [...par,str.substring(0,i+1)]
                backtrack(str.substring(i+1,str.length),newPar)
            }
        }
    }
    backtrack(s,[])
    return ans
};

```