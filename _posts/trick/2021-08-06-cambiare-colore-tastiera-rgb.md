---
title: 'Gestione tastiera RGB'
description: "cambiare i colori di una tastiera rgb"
date: 2021-08-06 18:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Se hai una tastiera RGB molto probabilmente stai pensando che su linux non puoi vedere tutte quelle robe fighe che fanno sugli altri pc... e qui forse ti sbagli. 
Potresti provare ad usare `ite8291r3-ctl`

Innanzitutto installa `python-pip` e quindi digita: 
```bash
pip install ite8291r3-ctl
```

Ora vediamo come usarlo, innanzitutto possiamo verificare con: 
```bash 
ite8291r3-ctl -h
```

Le possibili cose da fare, poi ad esempio possiamo utilizzare uno degli effetti preimpostati: 
```bash
sudo ite8291r3-ctl effect NOME_EFFETTO
```

I possibili effetti sono 
- breathing
- wave
- random
- rainbow
- ripple
- marquee
- raindrop
- aurora
- fireworks

possiamo quindi aumentare o diminuire la luminosità: 
```bash
ite8291r3-ctl brightness valore
```

i valori vanno da **0 a 50**
Possiamo anche colorare di un solo colore tutta la tastiera.
```bash
sudo ite8291r3-ctl monocolor --rgb COLOREROSSO,COLOREVERDE,COLOREBLU
```

i valori dei colori vanno 0 a 255

o con i nomi dei colori 
```bash
sudo ite8291r3-ctl monocolor --name NOMECOLORE
```

i possibili colori sono: 
- black
- white
- red
- green
- blue
- yellow
- aqua
- purple
- silver
- gray
- maroon
- teal
- orange

Beh colorate le vostre tastiere :D 
in realtà esiste un ultima modalità ma ... più in la
