---
title: 'Usare jq parte 2'
description: "Usare jq per analizzare json con array!"
date: 2021-07-09 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[jq parte 1](https://feed.linuxpeople.org/posts/usare-jq-json/)

Se avete seguito la ciliegina su come usare jq vi può interessare a maggior ragione sapere come comportarvi se un json presenta anche degli array o oggetti innestati. 
Supponiamo il seguente json: 

```json
[
        "ciao",
        "come",
        "stai"
]
```

cioè un semplice vettore da tre elementi. Con jq possiamo stamparlo intero così: 
```bash
echo '
[
        "ciao",
        "come",
        "stai"
]
' | jq
```

Possiamo però prelevarci a questo punto una sola cella, ad esempio la seconda: 

```bash
echo '
[
        "ciao",
        "come",
        "stai"
]
' | jq ".[1]"
```

Se avessimo un vettore innestato, potremmo accedere in cascata concatenando l'indice tra parentesi quadre.
Ad esempio: 
```bash
[
        ["ciao","'$USER'"],
        "come",
        "stai"
]
' | jq ".[0][0]" 
```
Stamperebbe solo ciao. Al contrario possiamo stampare tutto il sotto vettore indicando un solo indice come prima.
Infatti: 
```bash
echo '
[
        ["ciao","'$USER'"],
        "come",
        "stai"
]
' | jq ".[0]"
```
Stamperebbe 
```json
[
  "ciao",
  "nomeutente"
]
```
