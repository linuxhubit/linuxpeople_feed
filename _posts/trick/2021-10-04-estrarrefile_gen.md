---
title: 'Estrarre i file con una funzione'
description: ""
date: 2021-10-04 13:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

"ma qual'era quel comando per estrarre x?" 

Beh se te lo dimentichi spesso, puoi provare a fare una funzione che ti aiuti che ne dici? 
ecco un esempio trovato in giro per il [web](https://unix.stackexchange.com/questions/6/what-are-your-favorite-command-line-features-or-tricks):

```bash
function extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)  tar xjf "$1"      ;;
            *.tar.gz)   tar xzf "$1"      ;;
            *.bz2)      bunzip2 "$1"      ;;
            *.rar)      rar x "$1"        ;;
            *.gz)       gunzip "$1"       ;;
            *.tar)      tar xf "$1"       ;;
            *.tbz2)     tar xjf "$1"      ;;
            *.tgz)      tar xzf "$1"      ;;
            *.zip)      unzip "$1"        ;;
            *.Z)        uncompress "$1"   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
} 
```
Mettilo nel tuo file [bashrc](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/) ed usalo così: 
extract nomefile 

Io poi fossi in voi lo riscriverei un po' meglio, creando una cartella di estrazione ed entrandoci prima di estrarre i file. Che ne dite? 

```bash
function extract () {
    mkdir "$1".extracted 
    mv "$1" "$1".extracted
    cd "$1".extracted 
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)  tar xjf "$1"      ;;
            *.tar.gz)   tar xzf "$1"      ;;
            *.bz2)      bunzip2 "$1"      ;;
            *.rar)      rar x "$1"        ;;
            *.gz)       gunzip "$1"       ;;
            *.tar)      tar xf "$1"       ;;
            *.tbz2)     tar xjf "$1"      ;;
            *.tgz)      tar xzf "$1"      ;;
            *.zip)      unzip "$1"        ;;
            *.Z)        uncompress "$1"   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
} 
```
