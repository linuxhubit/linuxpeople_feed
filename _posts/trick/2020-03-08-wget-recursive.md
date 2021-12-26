---
title: 'Utilizzare wget per scaricare siti'
description: "wget ricorsivo"
date: 2020-03-08 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Potete scaricare un intero sito web con un comando lo sapete?

```bash
wget  --recursive  --no-clobber  --page-requisite  --html-extension  --convert-links  --restrict-file-names=windows  --domains sitoweb.com --no-parent  http://sitoweb.com
```

Prego U.u
