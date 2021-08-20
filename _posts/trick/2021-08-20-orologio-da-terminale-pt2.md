---
title: 'Un altro orologio da terminale'
description: "peaclock, carino e personalizzabile"
date: 2021-08-20 12:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Se vi è piaciuto e servito [questo orologio da terminale](https://feed.linuxpeople.org/posts/orologio-da-terminale/), è molto probabile che vi faccia impazzire peaclock!

peaclock è un orologio personalizzabile e reattivo, vediamo come scaricarlo:

```bash
git clone https://github.com/octobanana/peaclock

cd octobanana

./RUNME.sh
```

Dovete avere installato `gcc` e `cmake`.   

Potete poi configurarlo attraverso il file `config` della directory `$HOME/.peaclock` (da creare eventualmente).
```bash
mkdir ~/.peaclock

touch ~/.peaclock/config
```

Trovate sul [repository ufficiale nel README](https://github.com/octobanana/peaclock) vari esempi di config (cliccate l'immagine che vi piace di più) 

Potete partire da la per personalizzarli eventualmente. Se avete ancora il repository scaricato, potete ricopiare il vostro prefereito da li, ad esempio copiamo: 

```bash
cp cfg/binary-party ~/.peaclock/config
```

possiamo quindi eventualmente modificarlo.

Ma sapete che peaclock fa anche da timer e cronometro? beh :D vedremo come 
