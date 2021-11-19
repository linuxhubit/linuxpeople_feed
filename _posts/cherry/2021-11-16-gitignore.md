---
title: 'Creare il gitignore'
date: 2021-11-16 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Oggi insegniamo ai bambini delle aziende come generare i ++gitignore** correttamente. 

Manualmente basta creare un file nella cartella git chiamato `.gitignore` QUANDO si crea il proprio progetto, i file può contenere sia specifici file che pattern. Ad esempio blocchiamo tutti i file compilati di java così :
```
*.class 
```
Oppure eliminiamo le cartelle **target** così:
```
*/target/ 
```
Ma se volessimo generarlo automaticamente? esiste un sito molto utile chiamato [gitignore.io](http://gitignore.io)

Ma se volessimo fare tutto in automatico ma da terminale? 
Ecco a voi un progetto molto carino in rust: 
```bash
git clone https://github.com/janniks/git-ignore.git
```

quindi entrate nella cartella:
```bash
cd git-ignore
```

compilate con rust ( se non avete rust scaricatelo) 
```bash
cargo build
```

il file che vi si genera nella cartella `target/debug` chiamato `git-ignore` è il binario che dovete usare. trasferitelo in una cartella in cui avete definito il path, ad esempio `/usr/bin`: 
```bash
sudo mv target/debug/git-ignore /usr/bin/git-ignore
```

Ora quando create un progetto potete digitare: 
```bash
git-ignore
```

Lui si scaricherà i template dal sito ( dovete quindi avere la connessione) e quindi potrete cercare e aggiungere i template direttamente da cli!
quando avete terminato di cercare e aggiungere template premete *un enter a vuoto*
