---
title: 'Vedere tutte le connessioni di rete attive con lsof'
description: "usare lsof per il network"
date: 2021-07-18 23:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Abbiamo già visto altre volte il comando lsof per vedere dove un determinato path fosse montato nel nostro sistema o quale processo lo utilizzasse, ma sapevate di poter vedere tutte le connessioni attive con tanto di ip ?
Ecco come:
```bash
lsof -i -nP 
```
