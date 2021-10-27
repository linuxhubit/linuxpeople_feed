---
title: 'Temi sonori di Gnome'
description: ""
date: 2021-10-27 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Tra le tante cose che potete cambiare in un DE, ci sono anche i suoni su alcuni. Come nel caso di GnomeDE.
Scaricate un tema sonoro da gnome-look, ad esempio quello di [Megaman](https://www.gnome-look.org/p/1149319/)

```bash
wget https://dl1.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE0Njk2MDY4MTgiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImVjMTIwMjA0ODc2OGE1ODM3MDI0ZWM4NzZjNDIxZTk0YjVmOWMxZjdkOTgzNTY4NTBkMDI5MWQzZjRhYjYxN2E1NDQ3YmRiY2Q2NmZhYjY0MjQ0ZmUxZDE0MjlkOWRjNDg3NGNjZTA2MmEzZGJlNDg1NWIwZmQ5OGNhNTQ5OGMyIiwidCI6MTYzNTMyNDY1Miwic3RmcCI6ImI4NTdmNDllNWQyODRkMzFiNTkzMDVmNjg5NTAzZjcwIiwic3RpcCI6IjM3LjE2Mi4xNTYuMTUyIn0.ndm12SCj-JbrtvZ0o1LkOiDVQXtj9r3X__KIfyoQTiw/75451-megaman5_start_close_systemsounds.tar.gz  -O megaman.tar.gz
```

estraiamolo: 
```bash
mkdir megaman-sounds

mv megaman.tar.gz megaman-sounds 

cd megaman-sounds

tar -xvf megaman.tar.gz 

rm megaman.tar.gz 

sudo mv megaman*/ /usr/share/sounds
```

Ora avviamo gnome-tweaks e dovremmo trovarlo tra i temi

