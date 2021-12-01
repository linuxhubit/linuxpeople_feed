---
title: 'Github API PT2'
date: 2021-12-01 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

usiamo [il trucco del giorno sui tag di github](https://feed.linuxpeople.org/posts/github-api-pt1) per scaricare una release da github.
Innanzitutto preleviamo il nome del tag da scaricare, ad esempio la prima release tag stabile di bottles è la sesta nel json.  
Quindi:

```bash
nome=$(curl "https://api.github.com/repos/bottlesdevs/bottles/tags"  | jq ".[6].name")
```

Ora che abbiamo il nome della release, gioca un passo fondamentale conoscere la prassi con cui, coloro che caricano le release sul repository, nominano i loro package in questa forma: 

```bash
Bottles-NOMERELEASE-x86_64.FORMATORELEASE 
```

Va aggiunto la base dell'url, cioè:
```bash
https://github.com/bottlesdevs/Bottles/releases/download/2021.10.28-treviso
```

Se proprio abbiamo il dubbio, possiamo chiederlo a github, utilizzando ancora una volta le sue API! 

Per l'URL della release app image di bottles ad esempio:
```bash
curl "https://api.github.com/repos/bottlesdevs/bottles/releases" | jq ".[6].assets[0].browser_download_url"
```

L'output è:
```bash
"https://github.com/bottlesdevs/Bottles/releases/download/2021.10.28-treviso/Bottles-2021.10.28-treviso-x86_64.AppImage"
```

Ora possiamo scaricarlo:
```bash
URL=$(curl "https://api.github.com/repos/bottlesdevs/bottles/releases" | jq ".[6].assets[0].browser_download_url" | tr -d '"')

wget $URL
```

et voilà.

Ovviamente per costruire un procedimento automatico user friendly c'è da lavorare un pochino, districarsi ad esempio tra i vari assets o tra i vari tag non è semplicissimo. 
Ma con le API di github tutto è possibile! 
