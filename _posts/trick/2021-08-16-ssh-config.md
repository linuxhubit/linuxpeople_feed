---
title: 'Configurare un host su ssh config'
description: ""
date: 2021-08-16 19:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Sapevi di poter dare un nome al tuo indirizzo preferito di ssh?   
Puoi anche impostare il numero di porta e il nome utente. Ecco come!
Crea il file di config se non c'è, nel file `$HOME/.ssh/config`:  
```bash
Host NOMEHOST
    HostName  ind.iri.zzo.ip
    User nomeutente
    Port porta
```

quindi ora puoi connetterti semplicemente digitando: 
```bash
ssh NOMEHOST
```

Ora devi solo inserire la password!
