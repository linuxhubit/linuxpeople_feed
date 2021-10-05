---
title: 'Risolvere pull request da terminale'
description: ""
date: 2021-10-05 10:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Dovete rsolvere una pull request o riallineare il vostro progetto con una patch più aggiornata dal repository originale? beh vediamo che approccio usare. 

> ATTENZIONE: 
> 
> Alcune istruzioni potrebbero cambiare da caso a caso

<u>CASO 1 - PULL REQUEST:</u>
il vostro repository (https://github.com/NOME/PROGETTO) ha ricevuto una pull request da UTENTE2. Le pull request sono fork ( o copie) del vostro progetto a cui vengono apportate delle modifiche, di fatti quindi è un progetto con un nuovo link. Aggiungiamolo ai remote del vostro git locale: 
```bash
git remote add FORKUTENTE2 https://github.com/UTENTE2/PROGETTO
```
Scarichiamo e controlliamone le modifiche: 

```bash
git checkout -b patch FORKUTENTE2/patch
```

Il nome del branch della patch potrebbe cambiare ovviamente, per assicurarsi di quale sia prima digitate: 
```bash
git branch -a
```

E guardate quali branch ci sono sul `FORKUTENTE2`

Quindi procediamo con il merge dei due. Ritorniamo sul nostro branch main (o qualunque branch su cui sia avvenuta la patch): 

```bash
git checkout main
```

e facciamo la merge 

```bash
git merge --no-ff patch
```

> ATTENZIONE: 
> 
> potrebbero esserci stati dei conflitti, usare degli appositi tool per risolverli

quindi effetuiamo un push dei nuovi contenuti. 


<u>CASO 2 - Riallineare il proprio fork</u>
Se siamo noi ad avere effettuato un fork e vogliamo allineare le nostre modifiche con degli aggiornamenti del repository originale, le operazioni da effettuare sono essenzialmente le stesse, ma conviene effettuare una rebase anziché una merge. Vediamo passo passo: 

il vostro repository (https://github.com/NOME/PROGETTO) è un fork del progetto di UTENTE2. Aggiungiamo il suo link tra i remote del vostro git locale: 
```bash
git remote add ORIGINALEUTENTE2 https://github.com/UTENTE2/PROGETTO
```
Scarichiamo e controlliamone le modifiche: 

```bash
git checkout -b originalmain ORIGINALEUTENTE2/main
```

Il nome del branch da riallineare potrebbe cambiare ovviamente, usate sempre quest'istruzione per controllarli tutti: 
```bash
git branch -a
```

E guardate quali branch ci sono sul `ORIGINALEUTENTE2`

Quindi procediamo con il rebase dei due. Ritorniamo sul nostro branch main (o qualunque branch su cui sia avvenuto l'aggiornamento): 

```bash
git checkout main
```

e facciamo la rebase

```bash
git rebase --no-ff originalmain
```

quindi effetuiamo un push dei nuovi contenuti.   
Anche qui, stiamo attenti ad eventuali conflitti!


