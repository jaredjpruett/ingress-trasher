busybox sleep 10

while [ 1 ]; do
    let "x = 100"
    let "y = 100"

    input tap $x $y
    busybox sleep 30
done
