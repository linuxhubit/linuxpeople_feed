---
title: 'Eseguire codice typescript'
description: ""
date: 2021-11-08 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

🍒 Cherry Bin 
Compilare ed eseguire un file typescript : 
```bash
tsc nomefile.js && node nomefile.js
```

Ancora meglio: compilare un file typescript con il sourcemap associato ed eseguire node in modalità debug in modo da poterci attaccare un IDE 
```bash
tsc --sourceMap true nomefile.ts && node --inspector-brk nomefile.js
```

Di default il debugger andrà poi attaccato a
  
`127.0.0.1` porta `9229`
