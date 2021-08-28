---
title: 'Inversione audio con sox'
description: ""
date: 2021-08-28 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Ma vi ricordate quando negli album gli autori mettevano tutti quei easter eggs in cui dicevano cose al contrario nell'ultima traccia per prendere un po' per il sedere chi pensava che ci fossero messaggi subbliminali? 
Beh io si! era fantastico ahhaha 

Oggi potreste analizzarli con strumenti come audacity o ... con `sox`!  
Installate sox dal vostro package manager e digitate: 

```bash
sox fileinput fileoutput reverse
```

et voilà! avrete nell'output la canzone al contrario! 

