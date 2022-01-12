---
title: 'Conta righe con grep'
description: ""
date: 2022-01-04 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Spesso per i miei script conto il numero di righe con [wc](https://feed.linuxpeople.org/posts/wc) così:

```bash
wc -l nomefile 
```

Tuttavia questo è errato, infatti da documentazione wc conta il numero di "fine riga"  
Questo significa che se un file è senza fine riga finale, conta una riga in meno.

Come fare???
Usiamo [grep](https://feed.linuxpeople.org/posts/grep)  così:

```bash
grep -c "" nomefile 
```

et voilà :D
