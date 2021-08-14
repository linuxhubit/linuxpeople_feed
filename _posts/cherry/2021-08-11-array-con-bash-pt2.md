---
title: 'Array in bash pt 2'
description: "operare con i vettori in bash"
date: 2021-08-11 19:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[Array parte 1](https://feed.linuxpeople.org/posts/array-con-bash/)  [Array parte 3]((https://feed.linuxpeople.org/posts/array-con-bash-pt3/))

Generalmente in bash potete eliminare il valore di una variabile con l'istruzione `unset`
```bash
a="valore"

unset a

echo $a
```

Questo vale a maggior ragione per gli array e per ogni singolo elemento. Supponiamo di avere il solito vettore riempito sequenzialmente: 
```bash
declare -a vettore

for i in $(seq 0 9); do 
        vettore[$i]=$i
done
```

Quindi eliminiamo il 5 elemento: 
```bash
unset vettore[5]
```

Che succede se stampiamo le variabili?
```bash
echo ${vettore[*]}
```

Saranno stampati tutti gli elementi tranne il 5. ma che succede se stampiamo ora il 5 elemento? 
```bash
echo ${vettore[5]}
```

Semplicemente non verrà stampato nulla, rimane un buco nella nostra struttura. La cancellazione di un elemento in bash non può quindi essere usata per simulare un array dinamico! 
Se vogliamo quindi operare un vettore come se fosse dinamico, dobbiamo studiare delle funzioni apposite. 
Vedremo nelle prossime guide come fare

