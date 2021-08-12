---
title: 'Passaggio di un parametro dato il puntatore'
description: ""
date: 2021-08-12 19:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Su bash tutti i passaggi avvengono per valore, cioè se richiamate una funzione questa si preleverà il valore del parametro passato. 
Ma ci son casi in cui è comodo avere il riferimento. Come fare ?
Supponiamo di avere un vettore: 
``'bash
declare -a vettore
vettore[1]=1
vettore[2]=123
```

Quindi vogliamo passare questo vettore per riferimento e scambiare di posizione valore 1 e valore 2:
```bash
function scambiaValori(){
	local -n vettore_funzione=$1
	tmp=${vettore_funzione[1]}
	vettore[1]=${vettore_funzione[2]}
	vettore[2]=$tmp
}
```

Con `local -n` stiamo dicendo di utilizzare un nome per cercare una variabile con quel nome in memoria, il metodo va ora richiamato con il nome della variabile da passare: 
```bash
scambiaValori "vettore"

echo ${vettore[*]}
```

in output vedremo i valori scambiati! 
