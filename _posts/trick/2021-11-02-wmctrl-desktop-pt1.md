---
title: 'Controllare i desktop con wmctrl'
description: "parte 1 - vedere i desktop"
date: 2021-11-02 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---
[parte 2 - cambiare desktop](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt2)  
[parte 3 - desktop successivo e precedente](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt3)  
[parte 4 - cambiare numero dei desktop](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt4)  


In che desktop siete? 
Linux da sempre ( 👀 capito microsoft ed Apple?  DA SEMPRE) ha il concetto di desktop virtuale, un po' come avere più schermi ma sullo stesso computer, così che possiate organizzare al meglio le vostre finestre aperte.
Con `wmctrl` potete operare sul vostro windows manager per attuare alcune operazioni anche su desktop virtuale, ecco come: 

```bash
wmctrl -d  
```

Così facendo avrete le informazioni su tutti i desktop. Quello con il carattere '*' è quello corrente!

