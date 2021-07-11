---
title: 'Aprire i pdf da terminale'
description: "aprire un pdf con pdftotext"
date: 2019-09-09 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

non sapete come aprire la vostra [guida di archlinux preferita](https://github.com/PsykeDady/Archlinux_installazione) direttamente da terminale? 😏 ci pensa **pdftotext**

```bash
pdftotext <nome pdf.pdf> - | less
```

con questo trucchetto potrete leggere il testo di qualunque pdf direttamente dal vostro terminale, tanto le immagini a che servono? mica leggiamo storielle per bambini 🤷‍♂️

se non avete questo software, scaricate `poppler` o `poppler-utils`
