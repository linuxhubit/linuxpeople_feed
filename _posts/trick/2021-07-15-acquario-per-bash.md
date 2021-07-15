---
title: 'Un acquario sul tuo terminale'
description: "installa un bell'acquario"
date: 2021-07-15 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Se ti piacciono gli acquari, non puoi non pretenderne uno per il tuo terminale!
Installate dal vostro package manager: 
`perl-term-animation` e  `perl-curses`  
Se non li trovate con questi termini precisi, cercate `libcurses-perl` o comunque usate gli strumenti di ricerca del vostro pm. 

Quindi scarichiamo il progetto
```bash
git clone https://github.com/cmatsuoka/asciiquarium.git
```

e quindi entriamo nella cartella 
```bash
cd asciiquarium
```


Per eseguirlo

```bash
./asciiquarium
```


Volendo possiamo spostarlo nella cartella `/usr/bin` e renderlo avviabile con il solo nome
