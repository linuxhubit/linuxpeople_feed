---
title: 'Array in bash'
description: "operare con i vettori in bash"
date: 2021-08-10 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[array con bash pt 2](https://feed.linuxpeople.org/posts/array-con-bash-pt2/) [array con bash pt 3](https://feed.linuxpeople.org/posts/array-con-bash-pt3/)

In bash avete anche i vettori, sapevate? Vediamo come si usano. 
Se siete pratici della programmazione sapete benissmo che i vettori permettono di portarsi più valori in giro, ecco perché è importante saperli sfruttare al meglio! 
In bash un vettore si dichiara così: 
```bash
declare -a nomevettore
```

viene poi allargato automaticamente, ecco ad esempio come inserire 10 elementi ordinati: 
```bash
declare -a vettore

for i in $(seq 0 9); do 
	vettore[$i]=$i
done
```

Per utilizzarne uno, ad esempio stamparlo, dobbiamo racchiuderne l'indice tra parentesi quadre, e tutto poi tra parentesi graffe, ecco come: 
```bash
echo ${vettore[1]}
```

in questo modo sarà stampato il numero `1`
Ora cerchiamo di capire però cos'è un vettore in bash... questa struttura viene dichiarata come una variabile al quale si possono associare più valori, il valore principale rimane quello con indice 0, gli altri vengono poi aggiunti.   
Che succede ad esempio se stampiamo la variabile stessa? La risposta è semplice, viene stampato il valore in posizione 0 e basta: 

```bash
echo "$vettore è lo stesso di ${vettore[0]}"
```

Per stampare tutti i valori invece: 
```bash 
echo "${vettore[*]}
```

per oggi è tutto :D altre avventure con i vettori più in la



