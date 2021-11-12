---
title: 'Sottomoduli git pt 2'
description: "push e pull"
date: 2021-04-26 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry

---

[sottomoduli pt1](https://feed.linuxpeople.org/posts/sottomoduli-git-pt1)



[sottomoduli pt3](https://feed.linuxpeople.org/posts/sottomoduli-git-pt3)



Che ci fate con un submodule git di pratico??
beh potete innanzitutto pushare e pullare su tutti i progetti (principali e sottomoduli) così:

```bash
git push --recurse-submodules=on-demand
```

```bash
git pull --recurse-submodules=on-demand 
```

Richiedete i log dei sottomoduli così 
```bash
git log -p --submodule=log
```