---
title: 'Personalizzare Peaclock'
description: "vi è piaciuto peaclock? personalizzatelo!"
date: 2021-08-22 18:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

[Installazione di peaclock](https://feed.linuxpeople.org/posts/orologio-da-terminale-pt2/)

Se vi è piaciuto peaclock, magari volete sapere meglio come gestire il file di configurazione, che ricordiamo si trova in `$HOME/.peaclock/config`.

Copiate una delle configurazioni come spiegato nel trucco precedente e proviamo a partire da un file già riempito. 
Innanzitutto cerchiamo la riga che inizia con `view`, identificherà in che modalità vorrete che si veda l'orologio. 
ne esistono 4: 
- date : visiona solo la data
- ascii : orario in testo semplice
- digital : disegna l'orario con i caratteri che gli vengono passati
- binary : disegna l'orario con i caratteri che gli vengono passati usando due colonne per cifra. Ogni colonna individua una combinazione in binario che determina il valore del numero
- icon : visualizza l'immagine di un polipo. Con questa modalità conviene eliminare il padding tra le varie celle

Nelle prime righe del file invece troviamo le informazioni sul posizionamento nonché dimensione dei blocchi che comporranno l'immagine, ovviamente son parametri che si applicano solo alle modalità digital, binary e icon, e sono: 

- block : specifica la dimenzione di ogni singolo componente
- padding lo spazio trai componenti interni
- margin : spazio tra il disegno e il resto dell'orologio (terminale) 
- date padding : spazio tra orologio e data
- ratio : definisce una proporzione di forma

Tutti questi parametri tranne il date-padding hanno bisogno di 2 valori.


Un altra opzione importante è il campo **fill** ( e tutte le sue varianti)
Con quello potete specificare che simbolo o parola usare nei disegni ( che si applicano solo su digital binary e icon ricordo) 
Scrivendo ad esempio 

`fill 'Linuxhub'`

E scegliendo come modalità icon, con un adeguata dimensione anche del parametro block (minimo 8 1) e della finestra del terminale, visualizzerete ogni pixel del polipo con la scritta **Linuxhub**

Riempiendo in maniera differenziata fill-active e fill-inactive potrete avere anche una differenza visiva tra pixel accesi e pixel no
A fine file trovate (che iniziano con style) i colori per ogni tipologia di elemento dell'orologio, potete mettere il faclore 
- #rrggbb
- nome del colore 
- `clear` per indicare senza colore
- `reverse` il contrario dello sfondo 
- la modalità speciale `party`, che colora sempre di un colore diverso per ogni refresh

Abbiamo finito con peaclock? no, ma per oggi va bene così :D 
