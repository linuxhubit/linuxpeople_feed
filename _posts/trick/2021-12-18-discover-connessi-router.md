---
title: 'Scoprire hosts attaccati alla rete locale'
description: ""
date: 2021-12-18 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ecco a voi come scoprire quali sono tutti gli host collegati al vostro router, mi serve spesso per connettermi al mio raspberry e non ricordo mai l'indirizzo:

```bash
nmap -sn 192.168.1.1/24   
```

Ovviamente dovete sostituire l'indirizzo ( `192.168.1.1` ) con quello del vostro **gateway**. Ma la maggiorparte delle volte corrisponde a quello che ho scritto.

Se avete un router fritzbox probabilmente sarà  

```bash
nmap -sn 192.168.178.1/24
```
