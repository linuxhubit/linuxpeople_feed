---
title: 'La tua distro ha il covid'
description: "installa il covid nella tua distro"
date: 2021-07-14 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

La tua distro ha il covid! ma cos'è il covid? 
Beh quelli di bsd hanno fatto un bel lavoro per spiegartelo. 
Scarichiamo quindi covid, il software!


```bash
wget https://gitweb.dragonflybsd.org/dragonfly.git/blob_plain/1975d09eeb449df1192c97c0419380768b658a20:/usr.bin/covid/covid.1
wget https://gitweb.dragonflybsd.org/dragonfly.git/blob_plain/1975d09eeb449df1192c97c0419380768b658a20:/usr.bin/covid/covid.c
```

Quindi prepariamo il pacchetto: 
```bash
gzip -f9 covid.1
sed -i -E 's/__unused/__attribute__((unused))/g' covid.c

#compiliamo
gcc -o covid covid.c

#installiamo
sudo install -Dm755 covid      "/usr/bin/covid"
sudo install -Dm644 covid.1.gz "/usr/share/man/man1/covid.1.gz"
```


Se volete ho sintetizzato tutto in uno [script](/uploads/script_covid_install.sh) pronto all'uso! 
Ora come si usa **covid** ? 
molto semplice, per vedere la sequenza del genoma del coronavirus 2019, scrivere: 
`covid`  

invece per informarvi meglio scientificamente su cosa sia e quali siano i migliori rimedi ad oggi, scrivete:
```bash
man covid
```

E voi? avete avuto il covid? lo avete mischiato alla vostra distro? fatelo con questo metodo :D 
