---
title: 'Operazioni matematiche multiple'
description: "fare pi&ugrave; operazioni matematiche con bash"
date: 2021-07-31 16:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Potete concatenare più operazioni matematiche in bash con la virgola (,) all'interno delle doppie parentesi tonde.
Questo ad esempio per assegnare variabili
Ecco un esempio: 
```bash
echo $((a=1,1+2))
```

Solo l'ultima operazione verrà poi usata come output della funzione!
