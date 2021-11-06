---
title: 'Controllare i desktop con wmctrl pt2'
description: "parte 2 - vedere i desktop"
date: 2021-11-03 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

[parte 1 - introduzione wmctrl](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt1)
[parte 3 - desktop successivo e precedente](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt3)
[parte 4 - desktop successivo e precedente](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt4)


Abbiamo visto come usare wmctl per sapere su che desktop siamo, ma per cambiarlo? 
Scriviamo :
```bash
wmctrl -s numerodesktop 
```
Ad esempio 
```bash
wmctrl -s 2 
```
Passerà al desktop numero 2. Ma come utilizzaro per dire "il desktop precedente" o "quello successivo" ? 
Prossimo trucco :D
