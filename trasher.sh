busybox sleep 10

x=0

while [ $x -lt $1 ]; do
    a=$RANDOM
    let "a = a % 12"
    let "a = a + 540"
    b=$RANDOM
    let "b = b % 7"
    let "b = b + 960"
    c=$RANDOM
    let "c = c % 12"
    let "c = c + 900"
    d=$RANDOM
    let "d = d % 7"
    let "d = d + 1800"

    input tap $a $b
    busybox sleep 0.1
    input tap $c $d
    busybox sleep 0.8

    (( x++ ))
done
