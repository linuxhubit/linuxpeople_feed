---
title: 'Usare makefile impropriamete'
description: "conoscete il makefile? ecco come usarlo impropriamente"
date: 2021-07-21 17:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Un giorno giro per il web e scopro che esiste un tizio che usa le istruzioni del makefile per...**pulire la propria home**! 
Genio o follia? 😂 io lo trovo geniale. Vediamo come usare quindi il makefile per fare cose di routine quotidiana. Innanzitutto per i non programmatori, il makefile è un file di testo dove poter memorizzare una serie di istruzioni per poter in genere compilare e pacchettizzare dei progetti di codice. 
Normalmente è quindi usato in ambito di programmazione, ma questo uso può davvero essere utile a tanti altri. Per utilizzare il makefile in questo folle modo, prendete un file di testo e create un file nella home che si chiama `makefile`. Un makefile ha una struttura molto semplice: 
```
target1: 
	istruzione 1 target 1
	istruzione 2 target 1
	istruzione 3 target 1
	etc...
target2:
	istruzione 1 target 2
	istruzione 2 target 2
	etc...	
```

ogni target identifica una serie di istruzioni che verrà eseguita scrivendo poi: 
`make nometarget`

ad esempio in un makefile siffatto: 
```
clean: 
	rm -rf ~/.cache/paru
	rm -rf ~/Scrivania/recipiente/battute/*
	rm octave-workspace
	rm file
	rm -r cartella

ciao: 
	echo "ciao"
test:
	touch file
	mkdir cartella
	touch cartella/file2

```

scrivere `make clean` eseguirà tutte quelle cancellazioni!
