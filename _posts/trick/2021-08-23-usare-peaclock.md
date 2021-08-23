---
title: 'Usare peaclock'
description: "descrizione post"
date: 2021-08-23 22:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

[installazione di peaclock](https://feed.linuxpeople.org/posts/orologio-da-terminale-pt2/) [personalizzazione di peaclock](https://feed.linuxpeople.org/posts/personalizzare-peaclock/)


Un ulteriore cosa carina di peaclock è il suo utilizzo, nel vero senso della parola. 
Infatti ha molte funzioni carine.

Una volta aperto abbiamo un interfaccia interattiva che cambia sempre, vediamo quali sono le opzioni più importanti: 

- q : si chiude 
- w : si apre la modalità orologio
- e : si apre la modalità timer
- r : si apre la modalità cronometro
- a : modalità 24 ore on/off
- s : secondi visibili/nascosti
- d : data visibile/nascosta
- f : l'orologio occupa tutto lo schermo (attivi e disattivi) 
- g : la proporzione è automatica in base alla dimensione dei blocchi ( attivi/disattivi) 
- h : dimninuisci la distanza orizzontale tra un blocco e un altro
- j : dimninuisci la distanza verticale tra un blocco e un altro
- k : aumenti la distanza orizzontale tra un blocco e un altro
- l : aumenti la distanza verticale tra un blocco e un altro


Inoltre in modalità cronometro e timer si hanno le seguenti funzionalità: 
- spazio: parte il conteggio 
- backspace : riavvii il conteggio

Se volete modificare il timer da quando parte dovete modificare il file di configurazione nella voce "`timer`". 
Potete anche scegliere cosa succede quando scade il timer modificando la voce "`timer-exec`"
