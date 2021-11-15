---
title: 'Sottomoduli git pt5'
description: "script ricorsivo"
date: 2021-11-15 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry

---

[sottomoduli pt4](https://feed.linuxpeople.org/posts/sottomoduli-git-pt4)


Vi mando infine una comoda funzione da inserire nei vostri script di avvio per fare add, commit e push ricorsiva su tutti i moduli! 

```bash
function subpush(){

        branchSviluppo=${1:=main}

        # Aggiornamento dei sottomoduli
        git submodule update --init --recursive

        # Passaggio a branch $1, se non lo si e' gia'
        git submodule foreach git checkout $branchSviluppo

        # Aggiornamento sotto moduli
        git submodule foreach git add .
        git submodule foreach 'n=$(git rev-parse --show-toplevel) && n=$(basename $n) && git diff --quiet && git diff --staged --quiet || git commit -m "submodule $n update"' 
        git submodule foreach git push

        # Aggiornamento del repository che li contiene tutti
        git add . 
        git commit -m "updated submodules"
        git push --recurse-submodule=on-demand

        # porto i sottomoduli al branch $1
        git submodule foreach git checkout $branchSviluppo

}
```
