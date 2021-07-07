---
title: 'installare powerlevel10k senza oh my zsh'
description: "installare powerlevel10k senza oh my zsh"
date: 2021-01-24 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Non siete obbligati ad usare [oh-my-zsh](https://t.me/linuxpeople_feed/1399) per avere il tema powerlevel10k
potreste semplicemente scrivere:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

ovviamente potete scaricare il pacchetto dove più preferite

