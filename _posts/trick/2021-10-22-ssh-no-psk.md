---
title: 'chiave ssh senza password'
description: ""
date: 2021-10-22 12:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Evitare di inserire la password durante un accesso di ssh: 

```bash
ssh-copy-id -i ~/.ssh/CHIAVEPUBBLICA  user@ind.iri.zzo.ip
```
