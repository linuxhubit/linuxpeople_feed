---
title: 'Eseguire file con awk'
description: ""
date: 2021-08-02 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Se lavorate spesso con awk potrebbe esservi utile sapere come creare degli script che verranno eseguiti automaticamente con il comando awk! Come? attraverso il magic number dello script, o meglio chiamato **hashbang** che dice all'interprete con quale strumento interpretare il file! 

Ad esempio scriviamo uno script che numeri le righe del file. Scrivete quindi in un file: 
```bash
#!/usr/bin/awk -f
BEGIN{
        i=0
}

{
        print(i,")"$0);
        i=i+1
}
```

Quindi rendetelo eseguibile:
```bash
chmod +x nomefile
```

Ora potete usarlo direttamente senza richiamarlo con awk, facciamo un esempio: 
```bash
echo "ciao
come
stai" | ./nomefile
```

Comodo vero? :D 
