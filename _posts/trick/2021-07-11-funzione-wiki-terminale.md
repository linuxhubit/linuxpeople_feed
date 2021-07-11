---
title: 'Visitare la wiki da terminal'
description: "crea la tua funzione per visitare wiki da terminale"
date: 2021-07-11 16:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Uniamo alcuni trucchi del giorno per fare una ricerca su wikipedia direttamente da terminale.
 
In particolare usiamo il trucco su [jq](https://feed.linuxpeople.org/posts/usare-jq-json/), gli [alias](https://t.me/linuxpeople_feed/493) e le [funzioni](https://t.me/linuxpeople_feed/1014) 

Scriviamo prima una funzione che fa una ricerca: 
```bash
function wiki() {                                               
    search_term="${1}"
    json=$(curl -s 'https://en.wikipedia.org/w/api.php?action=opensearch&format=json&search='$search_term'&namespace=0&limit=1')
    echo $json
}
```

Quindi creiamo un alias che, dato il risultato, preleva il link e lo manda su un browser da noi scelto, ad esempio [lynx]() 

```bash
alias wikis='lynx $(wiki nvidia | jq -r ".[3][0]") '
```

ovviamente possiamo sostituire lynx con firefox o qualsiasi altro browser. A voi la scelta! 
