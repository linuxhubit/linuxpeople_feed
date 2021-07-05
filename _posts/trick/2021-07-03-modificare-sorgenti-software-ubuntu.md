---
title: 'Modificare le sorgenti software su Ubuntu'
description: "Vediamo come modificare le sorgenti software su Ubuntu"
date: 2021-07-03 16:23
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---
Ehi utenti **Ubuntu**!

Lo sapevate che potete modificare le sorgenti del vostro software in due modi, il primo manualmente modificando il file: 
```bash
/etc/apt/source.list
```

e tutti i file nella cartella
```bash
/etc/apt/source.list.d 
```

Ma potete anche usare il comodo comando
```bash
sudo apt edit-sources 
```

Potete eventualmente specificare il nome del file da modificare, ad esempio se avete un file megasync.list potete digitare 
```bash
sudo apt edit-sources megasync
```
