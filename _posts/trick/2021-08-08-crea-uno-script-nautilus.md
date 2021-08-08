---
title: 'Crea uno script nautilus'
description: "automatizza il tuo lavoro su questo f.m."
date: 2021-08-08 19:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Mi piace tantissimo automatizzare quello che faccio, creare comnadi che giornalmente riproducono quelle cose che son solito fare manualmente in determiniti ambiti della giornata. Ad esempio scrivere un trucco del giorno! :D 

Per questo cerco sempre meccanismi per farli con poche mosse, uno di questi è creare dei menu contestuali per i nostri file manager, abbiamo già parlato di quello di dolphin ad esempio, oggi vediamo per nautilus!
Nautilus è il file manager che vi ritrovate se avete gnome o distro simili, scriviamo il nostro script bash, ad esempio uno che crei una cartella con degli elementi selezionati: 

```bash
#!/bin/bash

nome="Gruppo Elementi Selezionati"
backup="$nome"
cont=2
while [[ -e "$nome" ]]; do 
	nome="$backup ($cont)"
	cont=$((cont+1))
done

mkdir "$nome"

while (( #? > 0 )); do 
	mv "$1" "$nome"
	shift
done
```

Quindi mettiamolo nella cartella giusta, supponendo che il file si chiami "`creaSelezione.sh`" scriviamo
```bash
mv creaSelezione.sh $HOME/.local/share/nautilus/scripts	
```

Se non esiste il percorso creiamolo noi! 
ora rendiamo eseugibile lo script: 
```bash
chmod +x $HOME/.local/share/nautilus/scripts/creaSelezione.sh
```

Se tutto va bene dovremmo avere con il tasto destro del nostro nautilus un menu "script" con dentro la nostra voce :D 
il menu prende il nome dello script, se volete potete anche dare un nome con spazi e senza ".sh" alla fine
