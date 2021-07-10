---
title: 'Usare jq parte 3'
description: "Usare jq per analizzare json con oggetti innestati!"
date: 2021-07-10 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[jq parte 1](https://feed.linuxpeople.org/posts/usare-jq-json/) - [jq parte 2](https://feed.linuxpeople.org/posts/usare-jq-json-2/)


Come lavorare jq con oggetti innestati? Supponiamo il json: 
```json
{       
        "nome":"'$USER'",
        "kernel":"'$(uname -osr)'",
        "config":{
                "DE": "'$XDG_CURRENT_DESKTOP'",
                "GDMSession": "'$GDMSESSION'",
                "WM": "'$(wmctrl -m | cut -d " " -f 2 | head -1)'"
        },
        "date":"'$(date +"%Y-%m-%d")'"
}
```
Analizziamolo con jq, cercando ad esempio solo il DE come informazione: 
```bash
echo '
{       
        "nome":"'$USER'",
        "kernel":"'$(uname -osr)'",
        "config":{
                "DE": "'$XDG_CURRENT_DESKTOP'",
                "GDMSession": "'$GDMSESSION'", 
                "WM": "'$(wmctrl -m | cut -d " " -f 2 | head -1)'"
        },
        "date":"'$(date +"%Y-%m-%d")'"
}
' | jq ".config.DE"
```

Basta concatenare con i punti le varie proprietà! 
Vediamo ora cosa succede se l'oggetto interno è un vettore, ad esempio consideriamo il json: 
```json
{       
        "nome":"'$USER'",
        "kernel":[
                "'$(uname -o)'",
                "'$(uname -s)'",
                "'$(uname -r)'"
        ],
        "config":{
                "DE": "'$XDG_CURRENT_DESKTOP'",
                "GDMSession": "'$GDMSESSION'",
                "WM": "'$(wmctrl -m | cut -d " " -f 2 | head -1)'"
        },
        "date":"'$(date +"%Y-%m-%d")'"
}
```

Quindi chiediamo di sapere solo la release del kernel (`uname -r`) : 
```bash
 echo '
{       
        "nome":"'$USER'",
        "kernel":[
                "'$(uname -o)'",
                "'$(uname -s)'",
                "'$(uname -r)'"
        ],
        "config":{
                "DE": "'$XDG_CURRENT_DESKTOP'",
                "GDMSession": "'$GDMSESSION'",
                "WM": "'$(wmctrl -m | cut -d " " -f 2 | head -1)'"
        },
        "date":"'$(date +"%Y-%m-%d")'"
}
' | jq ".kernel[2]"
```
le parentesi quadre vanno affiancate direttamente al nome della chiave corrispettiva al vettore!

