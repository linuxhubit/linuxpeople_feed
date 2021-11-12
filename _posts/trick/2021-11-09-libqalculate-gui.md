---
title: ''
description: ""
date: aaaa-mm-gg H:M
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: downloads
---

**Nome software**   : libqalculate gtk e qt
**Scopo principale** : Interfaccia gui di qalc (https://t.me/linuxpeople_feed/1442) 
**Scritto in** : C++ e GTK+ / C++ e QT
**Licenza** : GPLv2

Abbiamo già incontrato qalc, software per fare rapidamente dei calcoli, anche complessi, da terminale. 
Ha in realtà diverse funzioni molto utili, tra cui la conversione di valute o unità di misura. 

Ma se voleste la gui? 
Esistono per voi ben due diverse varianti GUI: una con gtk ( per gli amanti di DE come gnome, xfce, etc...) ed una con qt ( per gli utilizzatori di Plasma e lxqt )

In alcune distribuzioni, come archlinux, basta installare i pacchetti: `libqalculate-gtk` oppure `libqalculate-qt`

Per gli altri potete il progetto dalla pagina github: 

GTK = https://github.com/Qalculate/qalculate-gtk/

QT   = https://github.com/Qalculate/qalculate-qt/

E seguire le istruzioni di building.

Nel solo caso dell'applicativo GTK potete anche utilizzare flatpak: 

```
flatpak install qalculate
```

L'applicazione GTK mi risulta comunque fatta meglio, magari con flatpak potreste utilizzarla con piacere anche in ambienti qt...
