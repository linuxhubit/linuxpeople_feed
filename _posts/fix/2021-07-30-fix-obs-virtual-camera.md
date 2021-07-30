---
title: 'OBS non mostra la camera virtuale'
description: ""
date: 2021-07-30 19:10
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: fix
---

Se obs non mostra l'opzione Camera virtuale probabilmente non avete installato il driver `v4l2loopback` che fornisce questa funzionalità su linux 
ecco come farlo su Ubuntu e Archlinux: 

## Ubuntu
```bash
sudo apt install v4l2loopback-dkms
```


## Archlinux
```bash
sudo pacman -S v4l2loopback-dkms 
```

Cercate la soluzione per la vostra distro! 
