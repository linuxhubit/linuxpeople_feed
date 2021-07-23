---
title: 'separare i campi con awk'
description: "usare awk per separare i campi dello stdin"
date: 2021-07-23 21:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Potete leggere lo standard input di un comando e separarlo per "campi" con awk, gestendo tutti i vari pezzettini separatamente.  
sapete come? 

supponiamo di avere in ingresso la stringa "2021/07/01". Di voler separare i vari campi per carattere "/" e ristampare solo il secondo, con awk: 
```bash
echo "2021/07/01" | awk -F "/" '{print$2}'
```

dopo l'opzione -F possiamo specificare il separatore, poi stamparlo con la funzione print di awk (gli indici partono da 1, $1 è l'anno, $2 il mese e $3 il giorno)

E fin qui, potevamo farlo tranquillamente con cut. Complichiamoci la vita, supponiamo di voler ristampare l'intera data, ma separata da `-`

```bash
echo "
2021/07/01
" |
awk -F "/" '
{
        for(i=1;i<NF;i++)
                printf("%s-",$i)
        print$NF
}
'
```

con NF stiamo indicando il **Numero massimo di Fields**, o campi. 
Ma ora complichiamoci ancora di più la vita: 
supponiamo di avere una stringa che può contenere come separatori sia "/" che "-", e di volere alla fine una stringa formattata come: `anno,mese,giorno`. Possiamo specificare diversi field separator? 
La risposta è si, con il carattere `|` : 

```bash
echo "
2021/07-01
" |
awk -F "/|-" '
{
        for(i=1;i<NF;i++)
                printf("%s,",$i)
        print$NF
}
'
```

Beh ora fate partire gli ingranaggi della vostra fantasia e sbizzaritevi :D 
