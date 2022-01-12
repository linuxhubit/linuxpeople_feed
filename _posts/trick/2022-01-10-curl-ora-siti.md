---
title: 'Prelevare ora dai siti, con curl'
description: ""
date: 2022-01-10 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Possiamo usare curl per sapere che ora è da Google?  
Si, così: 

```bash
curl -sI google.com| grep -i '^date:'|cut -d' ' -f2- 
```

In linea teorica comunque dovrebbe funzionare con qualsiasi sito!

Ricordate che però l'orario restituito è `UTC+0` (noi siamo `UTC+1` ) e inoltre non tiene conto dell'ora solare e ora legale.
