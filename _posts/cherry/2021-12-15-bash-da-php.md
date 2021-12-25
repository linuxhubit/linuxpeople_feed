---
title: 'Eseguire Bash da PHP'
description: ""
date: 2021-12-15 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

Potete eseguire comandi bash da PHP, assegnare ad una variabile l output e stamparla.  

Così:

```php
< ?php
$result=shell_exec("comando bash");
echo($result);
? >
```

[Si può fare il contrario?](https://feed.linuxhub.org/posts/php-da-bash)
