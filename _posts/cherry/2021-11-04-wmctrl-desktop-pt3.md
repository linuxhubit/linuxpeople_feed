---
title: 'Controllare i desktop con wmctrl pt 3'
description: "parte 3 - desktop precedente successivo"
date: 2021-11-02 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[parte 1 - introduzione wmctrl](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt1)  

[parte 2 - cambiare desktop](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt2)  

[parte 4 - cambiare numero dei desktop](https://feed.linuxpeople.org/posts/wmctrl-desktop-pt4)  

Ecco come potreste crearvi una funzionacina bash che vada al desktop precedente o successivo attraverso `wmctrl` : 

```bash
function cdes () { 
  dc=$(wmctrl -d | grep '*' | cut -d ' ' -f 1)
  echo "dc=$dc"
  max=$( wmctrl -d | tail -1 | cut -d ' ' -f 1)
  echo "max=$max"
  delta=0;
  case $1 in ;
    '+') delta=1; echo "+";;
    '-') delta=-1; echo "-";;
    '*') echo "argomento non riconosciuto"; exit;;
  esac
  val=$((dc+delta))
  echo "dc+delta=$val"
  ((val<0)) && val=$max
  echo "abs=$val"
  val=$((val%(max+1)))
  echo "val%max=$val"
  wmctrl -s $val
}
```

per il desktop successivo
```bash
cdes +
```

per il desktop precedente
```bash
cdes -
```
