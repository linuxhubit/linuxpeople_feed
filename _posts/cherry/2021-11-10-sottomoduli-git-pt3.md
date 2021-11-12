---
title: 'Sottomoduli git pt 3'
description: "foreach"
date: 2021-01-10 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: cherry
---

[sottomoduli pt2](https://feed.linuxpeople.org/posts/sottomoduli-git-pt1)



[sottomoduli pt4](https://feed.linuxpeople.org/posts/sottomoduli-git-pt3)



Dopo aver creato un progetto con sottomoduli git e quindi aver imparato come si fanno push e pull ricorsivi, serve ora capire come effettuare le *add ricorsive* no?



in generale potete applicare qualunque operazione git ai sotto moduli con il foreach:

```bash
git submodule foreach COMANDO GIT
```

 

ad esempio la add:

```bash
git submodule foreach git add
```

