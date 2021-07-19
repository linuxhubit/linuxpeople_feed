---
title: 'Cercare articoli di linuxhub da bash'
description: "usare jq e lynx per cercare articoli da linuxhub"
date: 2021-07-19 14:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

L'altro giorno abbiamo visto [come cercare trucchi del giorno da terminale](https://feed.linuxpeople.org/posts/cercare-trucchi-dal-sito/) utilizzando `jq` e `lynx` da terminale. Ma possiamo cercare anche articoli di [linuxhub](https://linuxhub.it/) ? 
La risposta è si, la metologia è la stessa e cambia solo il sito! 

ricopiate questa funzione nel vostro [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/) ed utilizzatela

```bash
function cercaArticoli(){
        trucchi=$(wget http://linuxhub.it/search.json -O - -q)
        length=$(echo -nE "$trucchi" | jq length)

        for i in $(seq 0 $((length-1))); do
                url="https://linuxhub.it/"$(echo -nE "$trucchi" | jq ".[$i].url" | cut -d '"' -f 2);
                if lynx $url --dump | grep -q "$1"; then
                        titolo=$(echo -nE "$trucchi" | jq ".[$i].title")
                        echo "$titolo → $url"
                fi
        done
}
```

Ecco un esempio di utilizzo:

```bash
cercaArticoli 'ssh'
```


Presto potrebbe arrivare una sorpresina 😏
