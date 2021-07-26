---
title: 'Classificare i tuoi file con Python'
description: "classifier, da python"
date: 2021-07-26 23:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

A volte la Apple pensa anche cose buone nonostante tutto. Mi riferisco all'organizzatore automatico di file che mette in cartelle ben organizzate file, Musica, Documenti e altro.
Su linux abbiamo soluzioni del genere? beh in realtà si. Ecco `classifier`.
Installatelo tramite `pip` (installate a sua volta pip tramite il vostro package manager se non lo avete) 
```bash
pip install classifier
```

quindi usatelo così:
```bash
classifier -d /cartella/da/organizzare -o /cartella/di/output
```

la cartella da organizzare e quella di arrivo possono essere anche la stessa! 
Ad esempio organizziamo la nostra incasinatissima scrivania: 
```bash
classifier -d ~/Scrivania -o ~/Scrivania
```

In realtà questo organizzatore alcune estensioni le ignora... mmmm si può fare di meglio?
beh prossimamente con bash magari :D 
