---
title: 'cercare un file nei branch di git'
description: ""
date: 2021-08-13 16:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Avete perso un file nei meandri del vostro repo git con mille branch? 
beh facciamo così, ecco un trucco. Cercatelo con: 
```bash
git log --all -- "**/nomefile**"
```

