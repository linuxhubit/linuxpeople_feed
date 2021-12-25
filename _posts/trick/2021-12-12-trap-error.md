---
title: 'Debug su Bash con trap'
description: ""
date: 2021-12-12 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Si può applicare questo genere di [debug](https://feed.linuxpeople.org/posts/trap-debug) intercettando i comandi che danno errore cambiando la parolina `DEBUG` con `ERR`. Ecco un esempio:

```bash
function process_command() {
  echo "il comando '$BASH_COMMAND' ha dato errore"    
}
trap process_command ERR
```
