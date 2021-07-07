---
title: 'Installare powerlevel9k'
description: "come installare powerlevel9k"
date: 2020-03-26 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---
❇️ Trucco del giorno 
AAAAAAAAAAAAAAAAAAAAAAAAAAAH MI HANNO ELIMINATO POWERLEVEL_9k DAI REPO COMMUNITY DI ARCH AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

ma come dice la guida galattica per autostoppisti, **DON'T PANIC**, installare un tema su zsh con oh-my-zsh è facile, facciamo subito un esempio proprio con powerlevel9k.

Innanzitutto scarichiamo il tema, nel nostro caso è su github, semplice da reperire con:
```bash
git clone https://github.com/Powerlevel9k/powerlevel9k.git
```

Poi sposiamolo nella cartella dei temi, in genere dopo un installazione di oh-my-zsh troviamo la cartella in 
```
/usr/share/oh-my-zsh
```
Se installato con un gestore di pacchetti, altrimenti nella home in `$HOME/.oh-my-zsh`

Supponiamo la prima, quindi:
```bash
sudo mv powerlevel9k  /usr/share/oh-my-zsh/themes
```

( se state recuperando powerlevel9k da un installazione precedente come la mia potreste ricevere un errore dato da un link simbolico, dovete cancellare il link con: `sudo rm -rf /usr/share/oh-my-zsh/themes/powerlevel9k` )

Quindi io consiglio di modificare un file in particolare che mi crea spesso problemi di lingua, cioè: 
```
/usr/share/oh-my-zsh/themes/powerlevel9k/function/icon.zsh
```
io lo faccio con nano:
```
sudo nano /usr/share/oh-my-zsh/themes/powerlevel9k/function/icon.zsh
```
Cerchiamo le stringhe che iniziano con `local LC` e aggiungiamo un `#` davanti. Io lo faccio con una shortcut di nano, premendo o digitando in sequenza:

```
Ctrl-W
local LC_
# 
```

E poi :
```
Ctrl-W
invio
#
```

e da capo fino a che non ne trova più di nuovi
[impara anche tu ad usare nano come un vero pro](https://linuxhub.it/articles/howto-scrivere-con-l-editor-nano/)

Quindi modifichiamo il file `$HOME/.zshrc` e nella variabile `ZSH_THEMES` inseriamo:
`powerlevel9k/powerlevel9k`

Riapriamo il terminale (oppure con `exec zsh` sostituiamo il processo) et voilà, il gioco è fatto
Come dicevo, eccetto pochi passaggi più particolari, l'iter è simile per tutti i temi. Scaricate il tema, lo mettete nella cartella themes di oh-my-zsh, lo indicate nella variabile dei temi del file .zshrc

NOTA: 
**anche il tema powerlevel10k contiene powerlevel9k**!
