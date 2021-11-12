---
title: 'Impostare precisione con qalc'
description: ""
date: 2021-11-11 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

fare un calcolo matematico e farsi restituire il risultato con numero di cifre fissato:

```bash
qalc -s "precision numerocifre"  "calcolo"
```

 

Ad esempio: 

```bash
qalc -s "precision 4"  pi
```

 

restituisce **solo le prime 4 cifre del pi greco** (3 incluso)