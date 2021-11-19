---
title: 'Gestire due file con AWK'
date: 2021-11-18 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Analizziamo due file contemporaneamente con awk: 
```bash
awk ' 
        NR==FNR{print("file 1:" $0);next;} {print("file 2:" $0);} 
' file1 file2 
```
Analizziamo la sintassi: 
una condizione prima di un blocco serve per decidere se quel blocco deve essere o no eseguito, non averla significa che viene sempre eseguito! Il primo blocco presenta una condizione: 
**NR==FNR**

Cioè il *Numero di Riga deve essere uguale al Numero di Riga del file!*  

Vediamo due blocchi.  Nel primo stampiamo l'intera riga preceduta da "file 1:" e questa condizione davanti 

La seconda stampiamo "file 2:" seguita dall'intera riga e nessuna condizione, perciò a logica dovrebbe essere eseguita sempre

*Eppure se eseguiamo quest'istruzione accade una cosa particolare*, viene stampato prima tutto il file 1 e poi tutto il file 2.  
La differenza sta nell'istruzione "`next`"

Tramite `next` in poche parole non eseguiamo più nulla oltre quell'istruzione. Vi dovrebbe essere chiaro che quindi finché viene stampato il file 1 non verrà mai eseguito il secondo blocco, che verrà eseguito solo se non è vero che il numero di riga coincide con il numero di riga del file

**Non ci avete capito nulla? fate un po' di test :D**
