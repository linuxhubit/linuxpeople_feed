---
title: 'Installare VS code su solus'
description: ""
date: 2021-08-09 20:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Solus ha solo la versione open source di visual studio code (codium), come facciamo ad installare invece quella proprietaria? 
Beh se ricordate abbiamo messo a vostra disposizione già [uno strumento per installarci .NET](https://feed.linuxpeople.org/posts/better-call-solus-dotnet/), usiamo lo stesso repository per installare anche visual studio code!
 
Innanzitutto scarichiamo lo script : 

```bash
wget https://raw.githubusercontent.com/mirkobrombin/BetterCallSolus/main/vscode.sh
```

Per semplicità potete clonare anche tutto il repository 
```bash
git clone https://github.com/mirkobrombin/BetterCallSolus/

cd BetterCallSolus
```

Potete quindi avviare lo script: 
```bash
chmod +x vscode.sh
./vscode.sh
```

detto, fatto!
