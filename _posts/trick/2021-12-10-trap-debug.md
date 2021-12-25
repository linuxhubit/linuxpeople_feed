---
title: 'Messaggi di debug su Bash con trap'
description: "descrizione post"
date: 2021-12-10 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

E se vi dicessi che potete creare una funzione che agisce per ogni comando bash che date?  

In che senso? ad esempio per questioni di debug!  
Mettete nel vostro .bashrc queste istruzioni:  

```bash
function process_command() {
  echo "stai dando il comando: '$BASH_COMMAND'"    
}

trap process_command DEBUG
```

riavviate bash e guardate la magia 🔮  

> **Nota Bene**:  
> funziona solo su bash  
