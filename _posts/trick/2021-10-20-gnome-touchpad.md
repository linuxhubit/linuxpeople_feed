---
title: 'Disabilitare e abilitare il touchpad con Gnome'
description: ""
date: 2021-10-20 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Disabilitate e riabilitate il touchpad con il terminale se siete sul DE gnome così: 

Per abilitarlo:
```bash
gsettings set org.gnome.desktop.peripherals.touchpad send-events 'enabled'
```


Per disabilitarlo:
```bash
gsettings set org.gnome.desktop.peripherals.touchpad send-events 'disabled'
```

Forse vi conviene fare degli alias però :-\
