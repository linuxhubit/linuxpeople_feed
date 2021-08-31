---
title: 'Installare Dash to dock su Gnome40'
description: ""
date: 2021-08-31 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Dopo l'aggiornamento a gnome 40 siete rimasti senza dash to dock?  
Beh in realtà potete ancora installarlo, ma dovrete farlo manualmente!

Innanzitutto scaricate le dipendenze sul vostro sistema, cercate il pacchetto `sassc`

Scaricate quindi la repository di **ewlsh** nel branch gnome-40: 
```bash
git clone https://github.com/ewlsh/dash-to-dock --branch=ewlsh/gnome-40
```

Quindi i comandi per compilare e installare: 
```bash
make

make install
```

E riavviate il pc! 

Se vi da qualche errore o warning, installate ciò che vi viene richiesto! 
