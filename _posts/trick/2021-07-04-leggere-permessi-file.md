---
title: 'Leggere i permessi di un file con stat'
description: "Vediamo come leggere i permessi di un file con stat"
date: 2021-07-04 23:09
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---
Lo sapevate che si può leggere i permessi di un file utilizzando il comando `stat`?

Ecco come:

```bash
stat -c %A /percorso/file
```