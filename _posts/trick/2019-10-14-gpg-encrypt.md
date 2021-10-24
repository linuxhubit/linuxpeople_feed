---
title: 'Crittografare messaggi con gpg'
description: ""
date: 2019-10-14 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Maniaci della sicurezza? don't worry, be trusted!
**gpg** è da sempre uno degli strumenti più utilizzati (anche inconsapevolmente) dai nostri sistemi linux, infatti applica algoritmi a doppia chiave per firmare messaggi o proteggere comunicazioni. 
Creiamo la nostra coppia di chiave con 
```bash
gpg --full-generate-key
```
o nelle versioni più vecchie con 
```bash
gpg --default-new-key-algo rsa4096 --gen-key
```

Scegliete tipologia di chiave *RSA and RSA*

 Scrivete un messaggio e criptatelo con:
```bash
echo 'testo del messaggio' | gpg -r indirizzo@email.com --encrypt  > msg.asc
```

Potete anche indicare un file dopo encrypt invece che passare il messaggio in pipeline ovviamente.
Decifratelo con 
```bash
gpg -rindirizzo@email.com --decrypt msg.asc
```

Potete esportare e dare la chiave pubblica con questo comando:
```bash
gpg --armor --export indirizzo@email.com > chiave.asc
```

in seguito i vostri amici potranno cifrare un messaggio con la vostra chiave importandola oppure specificando il file della chiave dopo **il parametro -r**