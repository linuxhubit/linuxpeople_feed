---
title: 'Titolo'
description: "descrizione post"
date: 202-10-14 17:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Avete visto? oggi è uscita l'edizione di plasma per il 25° anniversario. [Qui il video trailer](https://www.youtube.com/watch?v=RMXViPlehAo)

Beh il trucco di oggi lo dedichiamo a loro!
Spegnete lo schermo da command line:

```bash
sleep 0.5 && qdbus org.kde.kglobalaccel /component/org_kde_powerdevil invokeShortcut "Turn Off Screen"
```

Lo sleep è importante perché altrimenti rischiereste di accendere lo schermo con movimenti inconsulti, eventualmente per assicurarvi ulteriormente potreste aumentarne i tempi e ripetere due volte il comando

Vediamo come bloccare lo schermo: 
```bash
qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock 
```

Ci sono anche altri modi ovviamente, questi son magari lunghi da ricordare ma funzionano ! 



