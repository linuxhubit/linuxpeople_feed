---
title: 'Usare sshpass e gpg'
description: ""
date: 2021-10-25 09:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---



Qui abbiamo parlato di [sshpass](https://feed.linuxpeople.org/posts/sshpass/) e di come però non ci piaccia che la chiave sia in chiaro sul nostro file system   
Beh usiamo un po' la crapa pelata che ci ritroviamo e riflettiamo su quali strumenti abbiamo per renderlo più sicuro   
Che ne dite ad esempio di usare gpg per criptare il file delle password?  

Andate a recuperare questo [post](https://feed.linuxpeople.org/posts/gpg-encrypt) in cui utilizziamo gpg per criptare un messaggio, quindi usiamolo per criptare un file in cui abbiamo scritto in chiaro la nostra password, generando un `file.asc`  

Fatto??? (mi sento giovanni mucciacia) bene, ora per connetterci scriviamo:  
```bash
sshpass -p "$(gpg -r 'indirizzo@email.com' --decrypt file.asc 2> /dev/null)" ssh utente@ind.iri.zzo.ip
```

nulla di più semplice in effetti, ma non vi illudete troppo, è un espediente atto giusto a migliorare un po' la sicurezza, gpg ha comunque i suoi difetti
