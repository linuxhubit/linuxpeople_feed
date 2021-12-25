---
title: 'Usare discover per aggiornare pacchetti pacman'
description: "usare lo store di plasma con pacman"
date: 2021-07-22 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

gli arcieri 🏹che hanno installato sulla propria archlinux plasma si ritrovano con uno store che nativamente supporta solo solo pacchetti flatpak. 
Ma non è l'unica possibilità che avete, vi viene incontro infatti `package-kit`. Una volta installato potrete godere di tutto il vostro parco software di pacman sullo store e potrete anche aggiornare da li i pacchetti: 

```bash
sudo pacman -S packagekit packagekit-qt5
```

et voilà :D
