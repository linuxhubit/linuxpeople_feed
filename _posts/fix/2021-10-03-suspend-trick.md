---
title: 'Sospensione S States'
description: ""
date: 2021-10-03 13:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: fix
---

Il pc non si sospende? Potrebbe essere colpa dello stato S della cpu. 
Per testare una possibile risoluzione provate a disabilitarlo. Innanzitutto guardate quali device lo utilizzano: 
`cat /proc/acpi/wakeup`

L'output potrebbe essere simile a questo: 
```bash
Device	S-state	  Status   Sysfs node
GP17	  S4	*enabled   pci:0000:00:08.1
GPP1	  S4	*enabled   pci:0000:00:01.2
GPP0	  S4	*enabled   pci:0000:00:01.1
```

Quindi per disabilitarlo basta scrivere nel file il device da disabilitare, scriviamoli tutti e tre: 

```bash
echo GP17 | sudo tee /proc/acpi/wakeup
echo GPP1 | sudo tee /proc/acpi/wakeup
echo GPP0 | sudo tee /proc/acpi/wakeup
```

Ora provate a sospendere o ibernare! Se tutto funziona, quando si riaccende riportate allo stato normale i vari device ripetendo i tre comandi di sopra 
