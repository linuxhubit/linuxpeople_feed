---
title: 'Lo screensaver di KDE si blocca'
description: ""
date: 2022-01-06 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Lo screen locker di kde vi si blocca quando lo riprendete dalla sospensione o ibernazione ?  

Potrebbe essere colpa della scheda video!
Ecco come fare per avere uno screen locker sempre funzionante:  

Rinominate lo screenlocker di kde

```bash
sudo mv /usr/lib/kscreenlocker_greet{,.bin}
```

Create un nuovo eseguibile che richiami quello vecchio con acune variabili d'ambiente impostate, ecco come:

```bash
printf '#!/bin/sh\nQSG_RENDER_LOOP=basic exec /usr/lib/kscreenlocker_greet.bin "$@"\n' |
sudo tee /usr/lib/kscreenlocker_greet
```

Quindi rendete eseguibile lo script nuovo

```bash
sudo chmod +x /usr/lib/kscreenlocker_greet
```

et voilà, funzionerà 10 volte su 10
