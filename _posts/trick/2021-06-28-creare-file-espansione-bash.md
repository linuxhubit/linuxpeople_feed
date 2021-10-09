---
title: Creare file con l'espansione bash
description: "Lo sapevate che si può creare uno o più file con l'espansione di bash?"
date: 2021-06-28 18:11
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Sapevate che si può usare l'espansione di bash per creare uno o più file?

```bash
touch file.{10..0} 
```

Questo creerà ad esempio **10 file**, tutti che si chiamano file e differiscono 
per il numero potete usare quest'espansione in ogni altro comando bash!

> Non funziona su tutte le shell.

