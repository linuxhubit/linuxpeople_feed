---
title: 'Quanta memoria vi occupa un programma'
description: "descrizione post"
date: 2021-11-05 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Quanta ram vi consuma un determinato programma? 
Beh non è una domanda facilissima a cui rispondere a causa del fatto che alcuni software utilizzano diversi processi ( vedi i browser )
Ecco come automatizzare un processo di raccoglimento dei dati

*installate prima di tutto [qalc](https://feed.linuxpeople.org/posts/usare-qalc) per continuare!*

```bash
function howmem() {

        somma=0;
        sw="$1"
        for i in $(ps -axu | grep "$sw" | awk -F " " '{print $4}') ; do
                # echo "$i"
                somma=$(LANG=C qalc -t "$somma"+"$i");
        done;
        echo "tot %mem=$somma"
        totMem=$(free | awk -F ' ' '{if ( $1=="Mem:" )print$2}')
        ris=$(LANG=C qalc -s "precision 2" -t "$somma*$totMem/(100*1024*1024)")
        echo "Tot GB=$ris"
}
```


Assicuratevi di chiamarlo con il nome del processo, se avete dubbi su quale sia identificatelo tramite 
`ps -u $USER`

Quindi chiamate lo script così:
`howmem nomesoftware`

Ad esempio: 
`howmem vivaldi-bin`

Risultato (nel mio caso) : 
```
tot %mem=6.6
Tot GB=2112
```
ed ora mi resta da capire come mai vivaldi mi occupa 2gb di memoria ram😂

