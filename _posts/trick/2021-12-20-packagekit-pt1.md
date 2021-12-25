---
title: 'Usare PackageKit'
description: ""
date: 2021-12-20 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

[packagekit pt2](https://feed.linuxpeople.org/posts/packagekit-pt2)  
[apper](https://feed.linuxpeople.org/posts/apper)  

I software center di linux come **gnome-software** e **discovery** di *kde* utilizzano `packagekit` per cercare, aggiornare ed installare i pacchetti.  
Potreste banalmente utilizzare lo stesso metodo per aggiornare la vostra distribuzione anche in autonomia, In realtà su KDE Neon è addirittura *consigliato*.  

Qui ad esempio abbiamo visto [come installare packagekit con archlinux](https://feed.linuxpeople.orgs/posts/discover-e-pacman), da li poi potreste pensare di utilizzarlo per tutte le vostre operazioni.  

Utilizzate:  

```bash
pkcon get-updates 
```

per sapere i pacchetti da aggiornare ad esempio. Aggiornateli poi con:

```bash
pkcon update 
```

O per aggiornare il sistema intero ( non è possibile su tutte le distribuzioni ):

```bash
pkcon upgrade-system
```
