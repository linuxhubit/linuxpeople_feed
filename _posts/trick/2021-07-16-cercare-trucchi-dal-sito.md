---
title: 'Cercare trucchi del giorno da bash'
description: "Cerca i tuoi trucchi preferiti di feed.linuxpeople.org"
date: 2021-07-16 23:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Avete già visto il nostro bellissimo nuovissimo sito [feed.linuxpeople.org](feed.linuxpeople.org)?? No? 
ANDATE SUBITO!!!

Ma ora, quanti trucchi del giorno parlano di un argomento X? e soprattutto come li fate a trovare? 
Beh ecco a voi una funzioncina bash per cercarli senza spaccarvi troppo i neuroni a navigare sul sito!

```bash
function cercaTrucchi(){
        trucchi=$(wget http://feed.linuxpeople.org/search.json -O - -q)
        length=$(echo -nE "$trucchi" | jq length)

        for i in $(seq 0 $((length-1))); do
                url="https://feed.linuxpeople.org"$(echo -nE "$trucchi" | jq ".[$i].url" | cut -d '"' -f 2);
                if lynx $url --dump | grep -q "$1"; then
                        titolo=$(echo -nE "$trucchi" | jq ".[$i].title")
                        echo "$titolo → $url"
                fi
        done
}
```

Salvatela nel vostro bashrc e quindi usatela così: 
`cercaTrucchi "argomento"`

Lo script vi risponderà con i titoli e i link dei trucchi del giorno corrispondenti :D 

> PS :  
>  
> Cerca anche dentro gli articoli, non solo i titoli!


Purtroppo ancora non abbiamo inserito nel sito tutti i vecchi trucchi! Ma presto l'archivio sarà completo U.U
