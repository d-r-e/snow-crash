extract pcap file from level02 home folder using scp
open with tshark -r level02.pcap -T fields -e data.data > out.txt

filtering the output, a word "Password:" can be found, and next to it:

cat output |grep 040

66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d

to hex ->

echo -e "\\x66\\x74\\x5f\\x77\\x61\\x6e\\x64\\x72\\x7f\\x7f\\x7f\\x4e\\x44\\x52\\x65\\x6c\\x7f\\x4c\\x30\\x4c\\x0d"

but \x7f is a backspace, so 

echo -e "\\x66\\x74\\x5f\\x77\\x61\\x4e\\x44\\x52\\x65\\x4c\\x30\\x4c\\x0d"

which converted to ascii results in 
```ft_waNDReL0L```
(7f are backspaces)