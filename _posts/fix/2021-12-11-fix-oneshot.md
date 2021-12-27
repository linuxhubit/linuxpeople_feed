---
title: 'Fix oneshot (e simili) da steam'
description: ""
date: 2021-12-11 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: fix
---

Un trucco per pochissimi-missimi
avete comprato oneshot da steam, ma la versione nativa di linux non va?  
Provate così:  

```bash
cd  ~/.local/share/Steam/steamapps/common/OneShot

mv librt.so.1 librt.so.1.old

mv libGLdispatch.so.0 libGLdispatch.so.0.old

mv libdrm.so.2 libdrm.so.2.old              

mv libstdc++.so.6 libstdc++.so.6.old
```

Questo stesso trucco potrebbe funzionare anche su altri giochi che sfruttano rpgmaker se notate che non si avvia.
