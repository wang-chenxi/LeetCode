#!/bin/bash

# https://gist.github.com/cdown/1163649#gistcomment-1639097
urlencode() {
    # urlencode <string>

    local LANG=C
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%%%02X' "'$c" ;; 
        esac
    done
}

file="README.md"
rm $file
echo "# LeetCode

Author: [https://github.com/wang-chenxi](https://github.com/wang-chenxi)

My JS/Java Code for LeetCode OJ.

The README is updated weekly. 

Please give this repo a :star: if it inspires you. Thanks. :blush:

😩 Hate manually copy & pasting the example testcases when solving LeetCode problems?  
👉 Try my husband Richard's [LeetCode Testcase Extractor](https://liuzhenglai.com/post/5e6f2551e9a0d01760b274d8)

Now I'm using a Chrome Extension Richard developed -- [LeetCoder](https://chrome.google.com/webstore/detail/gkmoalkjclphfhgnhdlilebaolpdkgpf) -- to facilitate my having fun on LeetCode. Features including but not limited to:
* showing stats
* copying problem, answer and **testcases**
* randomly picking a problem.

\# | Title | Difficulty | Solution
---|---|---|---" >> $file

IFS=$'\n'; for d in $(find leetcode/ -type d -maxdepth 1 -mindepth 1 -exec basename {} \; | sort -n) ; do # https://unix.stackexchange.com/questions/33909/list-files-sorted-numerically
    num=$(echo "$d" | cut -d "." -f1)
    title=$(echo "$d" | cut -d " " -f2-)
    first=$(head -1 "leetcode/$d/README.md")
    diff=""
    case $first in
        *\(Easy\)*)
            diff="Easy"
            ;;
        *\(Medium\)*)
            diff="Medium"
            ;;
        *\(Hard\)*)
            diff="Hard"
            ;;
    esac
    line="$num | $title | $diff | [Solution](leetcode/$(urlencode $d))"
    echo $line >> $file
done

echo "
# License

All rights reserved by [github.com/wang-chenxi](https://github.com/wang-chenxi). Contact me if you want to redistribute the code. No commercial use." >> $file