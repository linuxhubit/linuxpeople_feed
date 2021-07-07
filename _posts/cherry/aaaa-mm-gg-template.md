---
title: 'autofetch con oh my zsh'
description: "come effettuare autofetch di git con zsh"
date: 2021-07-07 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Potete attivare tra i [plugin di oh-my-zsh](https://feed.linuxpeople.org/posts/cherry/) una funzione per fare autofetch di un repository appena entrate nella cartella. Come? aprite il vostro **.zshrc** e aggiungente tra i *plugin git* `git-auto-fetch`.
Così: 
```bash
plugins=(git git-auto-fetch)
```

riavviate zsh ed entrate nei vostri repo preferiti :D 
