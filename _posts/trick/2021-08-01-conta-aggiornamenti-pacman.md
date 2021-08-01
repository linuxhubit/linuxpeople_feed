---
title: 'Conta gli aggiornamenti con pacman'
description: ""
date: 2021-08-01 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Trucco per gli arcieri 🏹:
Quanti aggiornamenti dovete fare oggi? beh per saperlo, installate prima di tutto `pacman-contrib`:

`sudo pacman -S pacman-contrib`

Quindi contateli con il tool `checkupdates` unito a `wc`:

```bash
checkupdates | wc -l
```


