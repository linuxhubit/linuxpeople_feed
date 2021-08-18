---
title: 'Orologio da terminale'
description: "descrizione post"
date: 2021-08-18 17:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Volete un orologio da esibire nel vostro terminale? 
SI?????
bene.

La strada numero uno è usare il comando date, magari in un alias dentro il vostro [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/): 
```bash
alias orologio='date +"Ciao $USER, sono le ore %H:%M:%S del giorno: %Y-%m-%d ed è nuvoloso. No scherzo il meteo non lo so"'
```


Ma se volete qualcosa di più carino potete usare questo [progettino qui](https://github.com/xorg62/tty-clock.git)
```bash
git clone https://github.com/xorg62/tty-clock.git

cd tty-clock

make

sudo cp tty-clock /usr/bin/tty-clock
```

quindi:
```bash
tty-clock
```

per vederlo

Magari ne fate un alias più comodo come sopra se desiderate
