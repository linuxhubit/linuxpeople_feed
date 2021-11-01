---
title: 'Installazione di zap'
description: ""
date: 2021-02-25 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Sono elettrizzato oggi!  
perché? ho installato zap⚡️, un  package manager per gli appImage 😍   
Qua il link del progetto :   
[ZAP](https://github.com/srevinsaju/zap)

Installatelo così :
```bash
 curl -fsSL https://git.io/zapinit | bash  
```

Aggiungete al vostro [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/) il path di zap: 
```bash
 export PATH=$PATH:~/.bin:~/.local/bin
```

Ora per installare un app ci sono due modi, il primo è semplice:
```bash
zap install <nomeapp>
```

non ha un tool per cercare le app tramite linea di comando però potete cercare le app manualmente da 
```bash
https://g.srevinsaju.me/get-appimage/all/p/0
```

Un altro modo per installare le app è tramite un link github, installiamo bottles:
```bash
zap install-gh  https://github.com/bottlesdevs/Bottles 
```

Vediamo come si chiamano le app installate:
```bash
zap list
```
quindi avviamone una 
```bash
zap x bottles
```
