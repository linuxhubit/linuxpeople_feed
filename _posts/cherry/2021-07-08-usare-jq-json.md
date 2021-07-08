---
title: 'Usare jq'
description: "fare il parsing di json da shell"
date: 2021-07-08 15:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Se avete letto come [inviare richieste post con CURL](feed.linuxpeople.org/posts) allora vi potrebbe interessare sapere come farne il parsing!
Per fare il parsing di un json da bash utilizziamo `jq` in pipeline. Così: 
```bash
comando| jq [opzioni]
```

Senza alcuna opzione verrà visualizzato il json formattato per bene. Ma vediamo come leggere ad esempio uno specifico parametro, con un comando concreto come `echo`: 

```bash
echo '
{
  "param1":"valore",
  "param2":"un altro valore"
}' | jq ".param2"
```

In questo modo in output avremo: `"un altro valore"`
Il filtro passato parte sempre per un `.` che identifica il livello iniziale. Quindi va specificato il nome del parametro che va filtrato, di cui vogliamo il valore. 

Attivando il parametro `-r` vengono disabilitati i colori che portano caratteri di formattazione, ottimo per eventuali script.
