---
title: 'azzerare un file'
description: "quanti modi di azzerare un file esistono?"
date: 2020-01-26 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Spesso devo azzerare un file, cancellarlo e ricrearlo e quando lo faccio mi chiedo:
"ma quanti modi di azzerare un file esistono in effetti?"

Ecco quelli che ho trovato 👇
Con [echo](https://t.me/linuxpeople_feed/721) e la [redirect](https://t.me/linuxpeople_feed/812):

```bash
echo "" > file.txt
```

con  `rm` e [touch](https://t.me/linuxpeople_feed/836):
```bash
rm -f file.txt && touch file.txt
```

con [cat](https://t.me/linuxpeople_feed/585) e **redirect**:
```bash
cat /dev/null > file.txt
```

Con [python](https://t.me/linuxpeople_feed/763):
```bash
python -c 'import sys,os;f=sys.argv[1];'$'\n''with open(f,"w"): os.utime(f,None)' file.txt
```

con **true** e la **redirect**:
```bash
:>file.txt
```

Beh in realtà esistono tantissimi altri metodi ma sarebbero ripetitivi, ne avete uno preferito? ditecelo su [linuxpeople](https://t.me/linuxpeople)
