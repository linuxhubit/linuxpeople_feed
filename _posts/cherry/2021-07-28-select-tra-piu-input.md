---
title: 'Select'
description: "usa il comando select per scegliere tra piu' input"
date: 2021-07-28 20:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

cosa c'è di più affascinante che fare un bel menu a selezione multipla autogestito? 
In che senso chiedete? beh nel senso che l'utente può scegliere tra diverse ozioni no ?
Ecco come farne uno immediamo in bash tramite la parolina select!
Select si usa esattamente come un ciclo:

```bash
select variabile in [...tante opzioni...]; do 
	istruzioni
done;
```

All'interno delle istruzioni potete ovviamente richiamare la variabile della select, per poter includere la scelta dell'utente nelle vostre operezioni. 
La cosa interessantissima è che esattamente come in un for, la select può ospitare un comando qualunque! 
Ora vediamo un caso semplice di utilizzo: 

````bash
echo -e "Seleziona un animale\n"
select i in "cane" "gatto" "uccello"; do 
	if   [[ $i == "cane" ]]; then 
		echo "woof woof"
	elif [[ $i == "gatto" ]]; then 
		echo "miaoooo"
	elif [[ $i == "uccello" ]]; then 
		echo "cip cip, cip"
	else 
		echo "scelta errata, riprova! ( per chiudere CTRL+c )"
	fi;	 
done; 
```

Con questo metodo avrete il pieno controllo di ciò che può scrivere l'utente, senza possibilità che possa inserire qualche carattere errato!
L'utilizzo più interessante comunque è sicuramente quello di poterlo usare ad esempio con i comandi che creano le opzioni. 
Un piccolo esempio potrebbe essere: 

````bash
select i in $(ls -d ./*/); do
        if [[ $i =~ [^[:space:]] ]]; then
                ls $i ;
        else
                break;
        fi
done;
```

quando con select viene selezionata un opzione errata, normalmente viene restituita una stringa con il solo carattere di ritorno, nel select di sopra ho controllato questa condizione confrontando la variabile della select con la regex che indica una linea vuota o con soli spazi
