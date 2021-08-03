---
title: 'Categorizza i tuoi file con MOWISH'
description: "uno script per ordinare le tue cartelle"
date: 2021-08-03 22:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ricordate quando parlavamo di [organizzare i vostri file con python?](https://feed.linuxpeople.org/posts/classificatore-python/), beh mi sono impegnato per offrirvi di più. 
Voglio presentarvi uno script completamente scritto con funzioni bash che ho pensato per voi, ecco **MOWISH** (**M**ake **O**rder **WI**th ba**SH**)

Premesso che è un progetto giovane che ancora sto perfezionando, con mowish potete già classificare parecchi vostri file, come? ecco a voi:

clonate con git il repository: 
```bash
git clone https://github.com/PsykeDady/mowish
```

Quindi avviate lo script di installazione: 

```bash
./mowish/install.sh
```

Se volete, lo script farà anche pulizia del repository clonato!

Il software è installato!  
Quindi potete usarlo in due modi. Senza parametri, ordinando quindi la directory corrente: 
```bash
mowish
```

Oppure indicando un percorso
```bash
mowish percorso/cartella
```

Al momento son presenti tre soli flag 
1. -d : flag di debug, stamperà tutte le operazioni che andrete a fare
2. -e : stampa la tabella degli stati di uscita del programma
3. -h : stampa l'help

Il software al momento è tradotto sia in italiano che in inglese, individua automaticamente la vostra lingua dal sistema  

E voi? userete MOWISH? fatemi sapere che ne pensate :D  
