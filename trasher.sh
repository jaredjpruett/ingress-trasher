busybox sleep 10

c=0

while [ $c -lt $1 ]
do
x=$RANDOM
y=$RANDOM

let "x = x % 72"
let "x = x + 454"
let "y = y % 186"
let "y = y + 907"

input tap $x $y
busybox sleep 0.2

x=$RANDOM
y=$RANDOM

let "x = x % 97"
let "x = x + 802"
let "y = y % 38"
let "y = y + 1759"

input tap $x $y
busybox sleep 0.8

(( c++ ))
done
