---
title: 'Installazione di Zap (Trucco aggiornato)'
description: ""
date: 2021-11-01 08:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Oggi rifacciamo la guida di [zap](https://feed.linuxpeople.org/posts/installare-zap/).   
Per chi non sapesse cos'è, zap è un package manager di AppImage, vi consente di installarli e aggiornarli, supporta sia l'installazione automatica tramite [AppImage.github.io](https://appimage.github.io), sia sempre automaticamente tramite [srev](https://g.srev.in/get-appimage/) e sia implementa la ricerca su github con una particolare opzione. 

È passato un po' di tempo dall'ultima e son cambiate tante cose, ad esempio ora è scritta con GO. 

Innanzitutto se lo avevate installato (attraverso la guida precedente), disinstallatelo così: 
```bash
rm ~/.local/bin/zap
```

oppure 

```bash
rm ~/.bin/zap
```

sinceratevi prima di dove si trovi ovviamnete tra i due path diversi.
Quindi reinstalliamolo da capo: 

Se non avete la directory `~/.local/bin`, procedete con la sua creazione: 
```bash
mkdir -p $HOME/.local/bin
```

Ed aggiungiamola al path di sistema, aggiungendo questa riga al vostro [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/): 
```bash
 export PATH=$PATH:~/.local/bin
```

Quindi scarichiamo l'eseguibile: 
```bash
wget https://github.com/srevinsaju/zap/releases/download/continuous/zap-amd64 -O ~/.local/bin/zap
```

Potete cambiare il path ovviamente, basta cambiare il percorso che trovate alla fine.  E potete cambiare l'architettura sostituendo amd64 con la vostra, son supportate:  
- i386
- amd64
- arm 
- arm64


Rendiamo eseguibile il software: 
```bash
chmod +x ~/.local/bin/zap
```

Ora testiamo se funziona: 
```bash
zap --help
```

Proviamo ad installare bottles
```bash
zap install bottles
```

Possiamo installare da github così:
```bash
zap install --github --from accountgithub/nomerepo
```

Ad esempio:
```bash
zap install --github --from bottlesdevs/Bottles
```

Ed avviamolo scrivendo semplicemente il nome del software: 
```bash
bottles
```

Easy vero ? 

 

