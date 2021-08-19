---
title: 'Abilita sospensione nano'
description: ""
date: 2021-08-19 19:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

con la scorciatoia CTRL+Z puoi sospendere un processo attivo nel terminale e poi riprenderlo più in la
è un ottimo metodo se ad esempio stiamo scrivendo un documento ma non ricordiamo qualcosa di specifico come un path o un comando, quindi sospendendo l'editor possiamo provarlo in console
Ma se proviamo a sospendere nano potrebbe capitare di ricevere il messaggio:
`"sospensione non abilitata"`

come fare? Andiamo nel nostro file sulla home `$HOME/.nanorc` e aggingiamo la linea ( se non esiste il file, createlo) 
```bash
set suspend
```

et voilà, fatto.
Sapete come utilizzare al meglio nano? no? Leggete il nostro articolo [Scrivere con l'editor nano](https://linuxhub.it/articles/howto-scrivere-con-l-editor-nano/)

