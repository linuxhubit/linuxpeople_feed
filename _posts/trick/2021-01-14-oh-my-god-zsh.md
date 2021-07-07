---
title: 'oh my ... zsh!'
description: "installa il gestore di plugin di zsh più famoso"
date: 2021-01-14 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

oh-my-~~god~~zsh

chi utilizza linux sa che ogni giorno avrà a che fare con il terminale
ma quanti sanno che potete cambiarne l'interprete? Beh se avete letto [questo trick lo sapevate](https://t.me/linuxpeople_feed/543)!

abbiamo parlato ad esempio più volte di **zsh** , installatelo con *il package manager* della vostra distribuzione e poi installiamo OH-MY-ZSH:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
```

````
quindi, finita l'installazione, potremmo installare ora un tema, tipo powerlevel10k:
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Copiamo il template di zshrc: 
`mv ~/.oh-my-zsh/zshrc .zshrc`

e quindi editare il nostro file rc:
`nano .zshrc`

e modificare la riga ZSH_THEME con il valore
`ZSH_THEME="powerlevel10k/powerlevel10k"`
 

avviare e cambiare la shell per configurarla.
`zsh`
 

Ed una volta pronta cambiare la shell predefinita con [questo trucco](https://t.me/linuxpeople_feed/543) 


Potrebbero essere necessari del caratteri particolari, installate i nerdfont, ad esempio i [FURA:]
(https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
