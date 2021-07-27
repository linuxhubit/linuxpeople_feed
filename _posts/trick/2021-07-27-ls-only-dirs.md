---
title: 'mostrare le sole directory con ls'
description: "come si mostrano le sole directory con ls"
date: 2021-07-27 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Come si mostrano le sole directory con il comando ls? 
ecco a voi: 

`ls -d */`

Il parametro -d serve per mostrare solo i nomi di directory e non il loro contenuto. Aggiungendo al glob (*) la slash (/) stiamo indicando di usare ls sulle sole directory 
Con questi due piccoli inganni, ci stiamo assicurando che le cartelle listate non listino anche il loro contenuto :D 

Per applicarlo ad un path specifico e non la cartella corrente, dovete listare dopo il path il glob. 
Ad esempio listiamo le sole directory in Documenti nella home: 
`ls -d ~/Documenti/*`

Questo trucco è molto utile anche nella programmazione bash U.U è considerabile anche un cherry bin diciamo!
