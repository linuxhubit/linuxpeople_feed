---
title: 'Timer con bash'
description: "descrizione post"
date: 2021-10-06 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---


Ecco un timer personalizzato per voi!  

```bash
function timer() {
        clear;
        for i in {$1..01}; do
                tput cup 10 $l
                echo -n "$i"
                sleep 1
        done;
        clear;
        echo Finito!
}
```


richiamate con: 
`timer (numero)`


tipo
`timer 20`
