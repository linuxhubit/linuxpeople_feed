---
title: 'usare whatthecommit per i propri commit'
description: "impostare un whatthecommit per i propri commit"
date: 2020-01-29 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Una piccola chicca per programmatori.
Vi siete mai trovati in difficoltà scrivendo un messaggio di commit per git?
"ma che scrivo... risolto bug? aggiunta feature? e chi si ricorda più cosa ho toccato..."

Bene MAI PIÚ indecisioni, da oggi decide: [whatthecommit](http://whatthecommit.com/) per voi!

per un messaggio casuale da terminale:
```
curl -s  whatthecommit.com/index.txt
```

Potete includerlo direttamente nel commit così:
```bash
git commit -m "$(curl -s  whatthecommit.com/index.txt)" fileocartelladacommittare
```

Gli usufruitori di **oh-my-zsh** possono includere nel loro .zshrc il plugin `lol` ed usufruire della shortcut 
`yolo`

