---
title: 'Cercare parole su urban dictionary'
description: ""
date: 2021-12-19 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

**LMAO, SMH, LEL, LOL, WTFROFL**  
Anche voi passate il tempo su urban dictionary per trovare le definizioni delle cose che vi manda la gente?

Ecco a voi come cercare le parole direttamente dal vostro terminale, purtroppo ci vuole un po' di *programmazione in js*.  
Innanzitutto installate `node` ed `npm`, quindi create una nuova cartella con il terminale ed entrateci:  

```bash
mkdir udcli
cd !*
```

Ora scrivete:  

```bash
npm install urban-dictionary
```

Questa istruzione installerà i node modules di [questo bellissimo progetto](https://github.com/NightfallAlicorn/urban-dictionary)  

Ora creiamo un nuovo file js e scriviamoci dentro:

```javascript
'use strict'

const ud = require('urban-dictionary')

const what=[
"word",
"definition",
"example",
]

let term=""

process.argv.forEach(function (val, index, array) {
  if (index==2) term=val;
  else if(index>2){
        term=term+" "+val;
  }
});

if (term=="") {
        console.log("passa almeno un parametro!")
        return
}

ud.define(term, (error, results) => {
  if (error) {
    console.error(`define (callback) error - ${error.message}`)
    return
  }

  let mapping=Object.entries(results[0])
  for (let w of what) {
        for ( let [ key,value ] of mapping ) {
                if( key===w) {
                        console.log(`${key} = ${value}\n`)
                        break
                }
        }
  }

})
```

salviamo e poi scriviamo una funzione nel nostro bash rc:

```bash
alias udcli="node /percorso/file/js/creato"
```

e digitiamo

```bash
udcli termine da cercare 
```

et voilà!
tipo:

```bash
udcli rotlf
```

risultato:

```text
word = rotlf

definition = [rolling] on the [laughing floor]

example = [Dank meme], [ROTLF]
```

comodo vero?
