---
title: 'Sospendere e riavviare processi'
description: "risparmiare CPU? ecco come"
date: 2021-08-25 18:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Troppa CPU in utilizzo? 
compratene un altra.

Ah no c'è la crisi del silicone... beh allora stoppate i processi! 

```bash
kill -STOP $(ps -f -u $USER | grep -i NOMEPROCESSO | awk -F ' ' '{if ( $0 !~ "grep") print $2}')
```

magari prima cercate il nome del processo in maniera precisa usando strumenti come `htop` o comandi come `ps`


E per riprendere il processo? stesso comando, cambia solo il segnale 

```bash
kill -CONT $(ps -f -u $USER | grep -i Telegram | awk -F ' ' '{if ( $0 !~ "grep") print $2}')
```
