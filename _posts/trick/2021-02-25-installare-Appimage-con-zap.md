---
title: 'Installare AppImage con zap'
description: "come usare zap"
date: 2021-02-25 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Sono elettrizzato oggi!
perché? ho installato zap⚡️, un  package manager per gli appImage 😍 
Qua il link del progetto : 
https://github.com/srevinsaju/zap

Installatelo così :
 `curl -fsSL https://git.io/zapinit | bash`

Aggiungete al vostro [bashrc]() il path di zap: 
 `export PATH=$PATH:~/.bin:~/.local/bin`

Ora per installare un app ci sono due modi, il primo è semplice:
`zap install <nomeapp>`

non ha un tool per cercare le app tramite linea di comando però potete cercare le app manualmente da 
https://g.srevinsaju.me/get-appimage/all/p/0


Un altro modo per installare le app è tramite un link github, installiamo bottles:
`zap install-gh  https://github.com/bottlesdevs/Bottles`

Vediamo come si chiamano le app installate:
`zap list`

quindi avviamone una 
`zap x bottles`
