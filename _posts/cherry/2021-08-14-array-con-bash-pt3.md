---
title: 'Array in bash pt 3'
description: "operare con i vettori in bash"
date: 2021-08-14 12:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[array con bash parte 1](https://feed.linuxpeople.org/posts/array-con-bash/) [array con bash pt 2](https://feed.linuxpeople.org/posts/array-con-bash-pt2/)

Altre piccole curiosità con i vettori: 

**verificare che una variabile sia dichiarata come un vettore**  
```bash
declare -p variabile | grep -q "declare -a"
isVettore=$?
if (( isVettore==0 )); then 
	echo "è un vettore"
else 
	echo "non è un vettore"
fi
```

> NOTA: 
> 
> anche se una variabile non è dichiarata come un vettore, può essere trattata come tale! Ad esempio:
> `a=0`  
> `a[1]=123``
> in questo caso a verrà trattata come vettore, ma il controllo di sopra darà esito negativo

**quanti elementi ci sono nel mio vettore?**
```bash
echo ${#nomevettore[@]}
```

**zsh e l'indice 0**
in zsh non esiste l'indice zero, gli indici partono da 1
