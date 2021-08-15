---
title: 'Convertire da md a html con pandoc'
description: "Usa pandoc per convertire un markdown in un html"
date: 2021-08-15 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Puoi facilmente convertire un markdown in un html con pandoc! scaricalo con il tuo package manager e digita:
```bash
pandoc -f markdown file.md > file.html
```

Dovrete poi pensare ad un buon css per un risultato finale accettabile, ma come vengono convertite le sezioni?

- il grassetto tra `<b>`
- corsivo tra `<em>`
- citazioni tra `<blockquote>`
- codice in line con `<code>`
- codice a blocco con `<pre>`
- immagini tra `<figure>` poi `<img>` quindi `<figcaption>` se tra quadre c'è scritto qualcosa
- liste con `<ul>`


