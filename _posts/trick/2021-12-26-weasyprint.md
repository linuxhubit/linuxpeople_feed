---
title: 'weasyprint'
description: "Convertire html in pdf con python"
date: 2021-12-26 07:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

ricordate [htmldoc](https://feed.linuxpeople.org/posts/weasyprint) ? se per qualche motivo non dovesse funzionare, potreste provare a convertire una pagina anche con `weasyprint`. Installatelo con `pip`:  

```bash
pip install weasyprint 
```

Dopo aver scaricato con wget la pagina :  

```bash
wget link.pagina.html 
```

Utilizzatelo per trasformare la pagina in pdf:  

```bash
weasyprint pagina.html pagina.pdf 
```

et voilà :D
