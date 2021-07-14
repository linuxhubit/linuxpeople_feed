#!/bin/bash

wget https://gitweb.dragonflybsd.org/dragonfly.git/blob_plain/1975d09eeb449df1192c97c0419380768b658a20:/usr.bin/covid/covid.1
wget https://gitweb.dragonflybsd.org/dragonfly.git/blob_plain/1975d09eeb449df1192c97c0419380768b658a20:/usr.bin/covid/covid.c

gzip -f9 covid.1
sed -i -E 's/__unused/__attribute__((unused))/g' covid.c

#compiliamo
gcc -o covid covid.c

#installiamo
sudo install -Dm755 covid      "/usr/bin/covid"
sudo install -Dm644 covid.1.gz "/usr/share/man/man1/covid.1.gz"
