---
title: 'Avviare un software da terminale e chiuderlo'
description: ""
date: 2021-10-08 12:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Un metodo veloce per avviare un software che deve rimanere aperto in background e poi chiedere il terminale senza chiudere il software è usare le [subshell](https://t.me/linuxpeople_feed/594): 

```bash
( comando& ); exit;
```


