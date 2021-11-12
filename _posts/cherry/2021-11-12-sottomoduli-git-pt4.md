---
title: 'Sottomoduli git pt 4'
description: "commit ricorsivo"
date: 2021-01-12 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry

---

[sottomoduli pt3](https://feed.linuxpeople.org/posts/sottomoduli-git-pt1)



Se abbiamo capito come operare ricorsivamente sui sottomuduli git ( ma abbiamo provato con il commit, abbiamo ricevuto probabilmente degli errori se tali sotto progetti non avevano commit da fare.  

Il che se abbiamo pochi sottomoduli potrebbe non essere problematico, ma se sono tanti diventa poi seccante. Come automatizzare il tutto? Ecco il foreach perfetto per i soli commit: 

```bash
git submodule foreach 'git diff --quiet && git diff --staged --quiet || git commit -m "submodule update"'
```

 

Eseguendo questo comando, verrà creato un commit con il messaggio "submodule update" per ogni progetto che presenta cambiamenti. 
Si lo so che non è un messaggio molto esplicativo, ma per ora accontentiamoci. 

Dopo aver eseguito la commit possiamo fare un push ricorsivo. Ora ci dobbiamo chiedere se tutto questo può essere ancora più facilitato con qualche script...

