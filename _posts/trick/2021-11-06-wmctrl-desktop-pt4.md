---
title: 'Controllare i desktop con wmctrl pt4'
description: "parte 4 - determinare il numero di desktop"
date: 2021-11-06 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

[parte 1 - introduzione wmctrl](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt1)  
[parte 2 - cambiare desktop](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt2)  
[parte 3 - desktop successivo e precedente](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt3)  

usate wmctrl per determinare il numero dei desktop: 

```
wmctrl -n numeroDiDesktop
```

Tipo se volete 4 destkop : 
```
wmctrl -n 4
```


