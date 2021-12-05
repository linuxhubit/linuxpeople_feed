---
title: 'Una guida al'utilizzo delle AppImage'
date: 2021-12-05 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ormai non faccio segreto del mio amore per il formato AppImage su linux, per me secondo solo al formato nativo delle distribuzioni. 

Tra i tanti vantaggi che questi offrono, vi è il fatto che oltre ad avviare semplicemente il software abbiamo una serie di opzioni che possiamo attuare quando avviamo un appimage.

Tutte le opzioni son disponibili scrivendo:
```bash
./file.AppImage --appimage-help 
```

Personalmente penso che le più utili siano quelle di poter estrarre il contenuto di un app image in una cartella, così: 
```bash
./file.AppImage --appimage-extract 
```

E, ancora più utile, quella di poter creare una "configurazione portatile" della nostra app image simulando una finta home e una finta cartella delle configurazioni. ad esempio creiamo due nuove cartelle così:
```
mkdir fintahome
mkdir finteconf
```

e quindi avviamo la nostra appimage così:
```
HOME=fintahome XDG_CONFIG_HOME=finteconf ./file.AppImage --portable-home --portable-config 
```

et voiltà. Se zippiamo tutto possiamo portare la nostra appimage con le stesse configurazioni ovunque. 

