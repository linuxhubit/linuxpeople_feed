---
title: 'chiave ssh senza password da git'
description: ""
date: 2021-10-22 12:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

volete evitare di inserire la password di git ogni volta che dovete fare pull o push dei vostri codici sui repo? 
ecco come fare: 

```bash
eval '$(ssh-agent -s)'

ssh-add /percorso/a/chiave/privata
```

adesso non dovreste più dover inserire la password 
Se avete seguito la procedura sul sito di git per aggiungere la vostra chiave ssh l'istruzione add avrà questo percorso: 
```bash
ssh-add  ~/.ssh/id_ed25519  
```


Se volete rimuoverla in futuro, digitate
```bash
ssh-add  -D ~/.ssh/id_ed25519   
```

sempre dopo aver però avviato l'agent ( prima istruzione) 
