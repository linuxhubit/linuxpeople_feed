---
title: 'Fish history shortcut'
description: ""
date: 2021-10-17 18:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

avete mai notato che fish non ha la scorciatoia !! di cui abbiamo [parlato qua?](https://t.me/linuxpeople_feed/567) 

beh non si sa perché non l'abbiano implementata. Per richiamare l'ultimo comando del terminale dovete invece dare:
`$history[1]`

Oppure potete mettere nel [fish config](https://feed.linuxpeople.org/posts/bashrc-zshrc-fishconfig/) questa funzione:

```bash
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end 
```

e quindi poter usare la scorciatoia !! Almeno con sudo
