---
title: 'Riavviare la sessione di plasma e kwin'
description: "come riavviare una sessione di plasma se da problemi"
date: 2021-07-12 18:30
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: fix
---

Hai problemi nella tua sessione di plasma o kwin? 
resettale!

per la prima, usando alt-spazio oppure `bashrun` digitiamo:

```bash
killall plasmashell && kstart5 plasmashell
```

per la seconda 
```bash
kwin_x11 --replace
```
