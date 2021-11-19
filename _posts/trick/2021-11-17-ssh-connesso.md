---
title: 'Dare un comando con ssh prima di connettersi'
description: ""
date: 2021-11-17 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Dare un comando SSH e poi restare connesso ? 
Si può fare. Ad esempio salutiamo con un messaggio prima di acquisire la Shell :
```bash
ssh user@ind.iri.zzo.ip -t "echo 'we bella sta shell'; bash -l" 
```
Possiamo anche avviare zsh se lo desideriamo: 
```bash
ssh user@ind.iri.zzo.ip -t "echo 'we bella sta shell'; zsh -l" 
```
L opzione `-t` di SSH forza il terminale a rimanere connesso dopo la esecuzione del comando 

L'opzione di `bash -l` invece serve alla login
