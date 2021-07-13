---
title: 'I file di start delle shell'
description: "bashrc, zshrc e fishconfig"
date: 2019-08-13 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

ogni shell ha un determinato file che esegue al suo avvio in modo automatico! inserendo in quel file dei comandi di proprio gradimento verranno eseguiti ogni qual volta si apre il terminale. Non ci credi? scriviamo *"Benvenuto <nome utente>, sono <nome shell> e son qui per servirti"* ad ogni avvio

su bash, tramite il **.bashrc**

`echo 'echo "Salve $USER, sono $0 e son qui per servirti"' >> .bashrc`

su zsh tramite **.zshrc**

`echo 'echo "Salve $USER, sono $0 e son qui per servirti"' >> .zshrc`

su fish tramite il **config.fish+*

`echo 'echo "Salve $USER, sono fish e son qui per servirti"' >> $HOME/.config/fish/config.fish`

Se usate un altra shell, cercate il nome del file di avvio per poter poter sfuttare al massimo anche solo l'avvio del vostro terminale 😃
