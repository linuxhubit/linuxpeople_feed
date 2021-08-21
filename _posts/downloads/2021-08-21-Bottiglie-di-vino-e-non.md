---
title: 'Eseguire software windows con bottles'
description: "Bottiglie di vino e vaniglia"
date: 2021-08-21 18:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: download
---

**Nome software**   : Bottles
**Scopo principale** : Eseguire file windows 
**Scritto in** : python+gtk
**Licenza** : open source GPL v3
**Costo** : Il sudore di Mirko

Volevo oggi consigliarvi un software di cui Linuxhub va abbastanza fiera: Bottles.
Trattasi di un wrapper di wine semplificato, che vi aiuta a creare ambienti (chiamati bottiglie) di esecuzione per i file di windows completi di librerie e cerca di ottimizzarli usando i giusti runner ( o aiutandovi a scaricarne uno ) 

potete scaricare bottles in diversissimi modi:
- [dalla pagina dei rilasci su Github](https://github.com/bottlesdevs/Bottles/releases) ( formato appimage magari o deb) 
- con [zap](https://feed.linuxpeople.org/posts/installare-Appimage-con-zap) : 
```bash
zap install-gh https://github.com/bottlesdevs/Bottles
```
- con flatpak: 
```bash
flatpak install bottles
```

Ma anche con AUR per gli archilinuxiani (pacchetto `bottles-git`) con con **snap** per gli ubuntuisti!

