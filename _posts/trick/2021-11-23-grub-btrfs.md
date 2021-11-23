---
title: 'Individuare con grub la partizione BTRFS'
description: "GRUB non vede la partizione BTRFS? ecco come fare"
date: 2021-11-23 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Volete aggiungere al grub della vostra partizione primaria un altra distribuzione che ha il suo **<u>File system su BTRFS?</u>**   
Beh se ci avete già provato sapete che non viene rilevata! Come fare? Ve lo spiego io U.U  

Montate manualmente la partizione, identificate il numero con il comando  
```
blkid
```

Create una cartella dove montarla, ad esempio:   
```bash
sudo mkdir /media/PartizioneBTRFS
```

Quindi procedete col mounting:   
```bash
sudo mount /dev/sdxY /media/PartizioneBTRFS
```

Entrateci dentro:  
```bash
cd /media/PartizioneBTRFS
```

Ora dovete fare i seguenti link simbolici:  
```bash
sudo ln -s @/boot boot

sudo ln -s @/etc etc 
```

Quindi potete procedere con la rigenerazione del grub, seguendo [quest'altro trucco](https://feed.linuxpeople.org/posts/aggiornare-grub) 
