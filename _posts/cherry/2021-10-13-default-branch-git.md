---
title: 'Cambiare il default branch di git'
description: "descrizione post"
date: 2021-10-13 13:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Tornando sul discorso del politically correct un altra pratica ormai comune è quella di chiamare il proprio branch primario `main` e non `master`

Son quindi due i modi di creare un branch con il nome main dal prorio terminale. 
Il primo è forzare per ogni singola creazione il branch con il nome specifico: 

```bash
git init --initial-branch=main
```

Ora, questo è abbastanza scomodo a lunga andare, poiché non sempre ci si ricorda di mettere questa opzione nella quotidianità. 
Quindi si può anche pensare di scrivere invece: 
```bash
git config --global init.defaultBranch main
```

Questa operazione consente di memorizzare il tuo branch iniziale come configurazione predefinita di git.
