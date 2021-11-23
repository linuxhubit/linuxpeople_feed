---
title: 'Aggiornare il grub'
description: ""
date: 2019-12-25 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---


Sapete come si aggiorna grub?
molti di voi conosceranno il celebre alias di ubuntu `update-grub2`

Ma le distribuzioni che non derivano da ubuntu usano il comando diretto che in vero è:
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
Tranne su fedora (😏 sono bambini speciali quelli di fedora..)
Loro devono dare:

```bash
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```
Su sistemi legacy

```bash
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```
su sistemi EFI

---
E se dovete reinstallare il grub?
```bash
sudo grub-install /dev/sdX
```
Su fedora:
```bash
sudo grub2-install /dev/sdX
```
Dove X è la lettera del disco dove volete installare il grub!
