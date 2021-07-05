---
title: Git e l'autocorrezione
description: Sapevate che git corregge automaticamente i vostri comandi?
date: 2021-07-01 11:23
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

```bash
git pll 
git chckut 
git dd 
```

Ok niente.. non è la vostra giornata fortunata, non ne azzeccate una e 
sbagliate tutti i comandi di `git`!!

Ma sapete cosa? `git` stesso vi può aiutare con la funzione autocorrect. 
Abilitatela così: 
```bash
git config --global help.autocorrect 10 
```

In questo modo se scrivete:
```bash
git pll
``` 

Dopo un secondo `git` autocorreggerà ed eseguirà pull 

Perché `10`? Beh questo è il numero di decimi di secondo (quindi 10=1 secondo) 
con cui potete bloccare l'autocorrect nel caso in cui neanche lui abbia capito 
che c**zo volete fare della vostra vita! (bloccate con `Ctrl-C`) 

Per disabilitare l'autocorrect:
```bash
git config --global help.autocorrect 0 
```

Per renderlo "immediato" (senza attese) 
```bash
git config --global help.autocorrect -1
```

Beh dalla redazione è tutto alla prossima!
