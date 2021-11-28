---
title: 'Titolo'
description: "descrizione post"
date: aaaa-mm-gg 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ricordate [ite8291r3-ctl](https://feed.linuxhub.com/posts/cambiare-colore-tastiera-rgb) per le vostre tastiere rgb?  
Sapete di poter creare voi stessi una mappatura rgb?

Scriviamo un file di testo dove, per ogni lettera che vogliamo fare illuminare, scriviamo la seguente frase: 

```bash
pos y x r,g,b 
```

Vediamo come sostituire tutte queste belle letterine....
La `x` e la `y` identificano la nostra lettera partendo dal basso, ad esempio generalmente troviamo il tasto *ctrl nella posizione 0 0* 

*Shift si trova nella posizione 1 0*

mentre *fn* ( se lo avete, altrimenti il tasto a destra di ctrl) *nella posizione 0 2*

perché da *0 a 2* ? proprio perché il tasto a destra di ctrl può subire delle variazioni in base alla mappatura.  
I valori RGB invece vanno sostituiti con i valori di **rosso**, **verde** e **blu** che volete applicare al tasto. Ad esempio  
*255,0,0 determinerà un tasto ROSSO*

*255,0,255 determinerà il colore VIOLA*
e così via...

Alla fine del file ci deve essere scritto
`apply`

Potete scrivere dei commenti con il tasto # prima della frase. Tipo per ricordarvi che avete messo il tasto u verde potete scrivere: 
```bash
# u colorato di verde
pos 3 8 0,255,0
```

Ora vediamo ad esempio come colorare soltanto le lettere "sudo" per i nostri pc: 

```bash
# s
pos 2 3 255,0,0

# u
pos 3 8 0,255,0

# d
pos 2 4 0,0,255

# o
pos 3 10 255,255,0

apply
```

Scriviamolo in un file chiamato per esempio sudo_mode e poi digitiamo: 

```bash
sudo ite8291r3-ctl anim --file sudo_mode
```
Troveremo ora solo le lettere sudo colorate! figo vero? fatevi le vostre mappature preferite, trovate le vostre x e y sulla tastiera per ogni tasto!
