---
title: 'Github API PT1'
date: 2021-11-30 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Cerchiamo le release di un particolare repository su github direttamente da terminale, usando curl: 

```bash
curl https://api.github.com/repos/utente/nomerepo/tags
```


Ad esempio vediamo le release di Bottles: 
```bash
curl https://api.github.com/repos/bottlesdevs/bottles/tags 
```

Magari usiamo anche `jq`, per fare il parsing dei parametri no? 
Ad esempio vediamo il nome della release: 
```bash
curl "https://api.github.com/repos/bottlesdevs/bottles/tags"  | jq ".[0].name"
```

A che potrebbe servirci ? magari per costruire gli url delle release da scaricare!
