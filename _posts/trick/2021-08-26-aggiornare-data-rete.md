---
title: 'Aggiornare la data con timedatectl'
description: "mantenere la data aggiornata con tramite connessione"
date: 20211-08-26 16:30
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Oggi ho notato che l'orologio del pc non era sincronizzato con tutti gli altri, beh quale migliore opportunità per mostrarvi come si tiene aggiornato tramite rete l'orario del vostro sistema!

```bash
timedatectl --adjust-system-clock set-ntp 1 
```

state così indicando al vostro sistema che volete che si sincronizzi con i server ntp!
Cosa sono i server ntp? sono server adibiti alla sincronizzazione degli orari, dal nome `Network Time Protocol`

Il server ntp è salvato dentro il file: `/etc/systemd/timesyncd.conf`, se assente o commentato, ne utilizza uno di default. Per sapere quale, scrivete
```bash
timedatectl show-timesync 
```
