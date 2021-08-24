---
title: 'Recupera i tuoi dati persi'
description: "usa photorec per recuperare dati"
date: 2021-08-24 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Siete stupidi come il sottoscritto? Avete dato un comando errato e adesso non avete più i dati sulla home? Beh solo alla morte non c'è soluzione! o quasi...

Cercate dal vostro package manager "`teskdisk`" e digitate dal terminale 
```bash
sudo photorec
```

Una volta avviato si aprirà un interfaccia di selezione dell'hard disk
Selezionate quello interessato, quindi potete scegliere quale partizione analizzare ( o l'intero disco)

MA ASPETTATE A SCEGLIERE, dovete recuperare tutto tutto? 
se non dovete recuperare proprio tutto, con la freccetta destra andate verso la voce "**File Option**" dove potrete selezionare ad una ad una le estensioni dei file da recuperare
Molto comodo se dovete fare dei recuperi "mirati". Selezionate scendendo e salendo con le freccette e con il tasto **spazio**. Potete premere s per disabilitare tutte le estensioni e abilitarne quindi poi solo poche.

una volta finito premete invio per tornare al menù precedente, potete anche selezionare dal menu **options** alcune altre opzioni e infine "search" per passare al prossimo menu.  
In questo, avremo la possibilità di scegliere il file system, infine dovrete scegliere la directory dove i file verranno salvati.
 
> PREFERIBILMENTE, non scegliete una directory dello stesso disco che state analizzando, avrete altrimenti molti file duplicati

Beh attendete, una volta recuperati i file, che ne dite di usare [mowish](https://feed.linuxpeople.org/posts/mowish-categorizza-file/) per classificarli??? leggete la documentazione :D ho sviluppato molte nuove features  
[Documentazione Mowish](www.github.com/PsykeDady/mowish)
