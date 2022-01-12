---
title: 'Eliminare righe vuote con grep'
description: ""
date: 2022-01-12 10:16
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Eliminiamo le righe vuote di un comando con `grep`!

```bash
comando | grep -Ev '^#|^$' 
```

l'opzione `E` abilita le regex estese  
L'opzione `v` inverte l'output  

la regex preleva solo righe vuote!    
[Qui altro su grep](https://feed.linuxpeople.org/posts/grep)
