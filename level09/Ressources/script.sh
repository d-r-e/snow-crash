cat << EOF > /tmp/decrypt.c
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int ac, char **av)
{
    char c;
    char prev;
    int i;
    int ret;

    if (ac != 2)
        return (0);

    i = 0;
    int fd = open(av[1], O_RDONLY);
    while ((ret = read(fd, &c, 1)) > 0)
    {
        if (i > 0)
        {
            c -= i;
        }
        write(1, &c, 1);
        prev = c;
        i++;
    }
    close(fd);
    write(1, "\n", 1);
}
EOF
cd /tmp # gcc needs to be on a writable folder to generate temporary files during compilation
gcc -o /tmp/decrypt /tmp/decrypt.c
/tmp/decrypt ~/token