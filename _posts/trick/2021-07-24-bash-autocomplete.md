---
title: 'Aggiugere opzioni all&sbquo; autocompletamento'
description: "aggiungere opzioni all'autocompletamento tab"
date: 2021-07-24 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Uno dei trucchi più belli degli ambienti Linux e del suo terminale è sicuramente l'autocompletamento con il tasto tab. 
Se iniziate a scrivere dei comandi infatti, tramite tasto tab e l'autocompletamento bash completerà sia il comando stesso, sia le sue opzioni sia i percorsi. 

Ma possiamo anche migliorare questo meccanismo, ad esempio se ci sono comandi che diamo sempre con una determinata opzione possiamo registrarli come autocompletamento del comando stesso. 
Facciamo un esempio con "`echo`". Supponiamo di voler completare il comando con le opzioni "`ciao`" "`come`" e "`stai`".

complete -W "ciao come stai" echo

In questo modo, scrivendo: 
`echo ci`

e premendo tab, bash scriverà: 
`echo ciao`


stessa cosa con le parole **come** e **stai**
magico vero? :D migliorate il vostro flusso di lavoro mettendo tutti gli autocomplete nel vostro [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/) !!
