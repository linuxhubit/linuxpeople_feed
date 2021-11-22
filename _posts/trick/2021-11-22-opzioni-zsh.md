---
title: 'Opzioni di zhs'
date: 2021-11-22 08:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ricordate [come attivare le opzioni di bash](https://feed.linuxpeople.org/posts/opzioni-bash/)? 
Beh non sono uguali a quelle di zsh ovviamente, ma anche la nostra shell avanzata ne ha di carine.

Ad esempio ha un sistema di auto-correct dei comandi: 
```
setopt correct
```

Inseritelo nel file di avvio (`$HOME/.zhrc`) e poi provate a scrivere: 
 ```
eco "ciao"
```

vi chiederà se volete correggere in "`echo`", digitate `y` e vedrete la magia.

Ma potete usarlo in modi anche più creativi, ad esempio zsh ha un "`autocd`", se non è abilitata scrivete: 
```
setopt autocd
```

sempre nel file di avvio. 

Ora che le avete abilitate entrambe, cosa pensate accada se avete una cartella di nome "Scrivania" e digitate: 
```
scrivania
```

o 

```
sCrivnia
```

? 
Viene auto corretto e farete cd automaticamente al suo interno!
