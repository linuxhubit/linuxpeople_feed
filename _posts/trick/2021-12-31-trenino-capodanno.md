---
title: 'Il trenino di capodanno, con at'
description: ""
date: 2021-12-31 23:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Fate partire la canzone del trenino di capodanno con [at](https://feed.linuxpeople.org/posts/at)

```bash
at 00:01 -f <(echo "cvlc percorso/canzone") 
```

Tramite il flag `-f` stiamo dicendo ad at di eseguire i comandi da un file, il file lo creiamo al volo con `echo` in forma temporanea!

beh al posto di `cvlc` possiamo ovviamente usare il player che più ci aggrada!
