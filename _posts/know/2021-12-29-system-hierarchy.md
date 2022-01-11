---
title: 'Gerarchia del File System'
description: "Come è suddiviso il file system di linux?"
date: 2021-12-29 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: know
---

Il file system di linux ha un organizzazione derivata da quella di UNIX?  
Vediamo un po' come son strutturati ed a cosa servono le cartelle. La prima con cui dobbiamo familiarizzare è sicuramente la `root`, ovvero `/` ( da non confondere con `/root`). Da qui parte il nostro sistema, normalmente non si può scrivere senza privilegi alti a questo livello e non è comunque mai una buona pratica (anche se io ogni tanto lo faccio, ma shhh)  

Al di sotto troviamo:  

`boot :` all'interno di boot troviamo i file di avvio, kernel ad esempio, grub ma anche a volte la cartella **EFI**, anche se quest'ultima potrebbe trovarsi in una cartella `/efi` a se stante in alcune distribuzioni.  

`bin :` contiene i software binari che dovrebbero stare alla base del nostro os, quindi software che svolgono ruoli precisi e limitati ( come la `bash`, alcuni *editor di testo primitivi*, `ls` e altro)  

`sbin :` sudo bin, ovvero binari che normalmente richiedono permessi di root, come `chmod`, `mount`, `modprobe`... può essere anche interpretata come *system bin*, ovvero binari necessari in fase di avvio del sistema ( `fsck`, `swapon` etc.. ) tuttavia a conti fatti, nella mia ci ho trovato altre porcherie varie tipo playonlinux 😂  

`lib :` contiene le librerie software, ovvero dei particolari binari che non sono direttamente eseguibili, ma contengono funzionalità che servono ad altri software. lib contiene tipicamente librerie a 32bit  

`lib64 :` come lib, ma a 64 bit  

`dev :` qui troviamo i così detti *device speciali*, cioè dei file che rappresentano le nostre periferiche, come hard disk, joystick, mouse, webcam  

`etc :` Qui ci potete trovare i file di configurazione ( generalmente suddivisi in cartelle ) dei vari programmi, ad esempio i file di avvio di bash globali ( `profile` ) o la cartella di configurazione dei driver (`modprobe.d`). Generalmente qui dentro, le cartelle finiscono con il suffisso `.d`, cioè **directory**  

`usr :` sta per `user-data` e contiene in genere le installazioni software, con tanto di alcuni file di configurazione per ognuno di essi. Solo questa cartella, per quanta roba contiene, meriterebbe un trucco a se stante  

`media :` questa cartella contiene generalmente i file system esterni montati, ma non tutte le distribuzioni la usano ( vedi arch). Controllate il suo contenuto se state cercando dove è stata montata la vostra penna usb!

`mnt :` sta per `mount`, e viene utilizzata anche questa per montarci un dispositivo, in genere è utilizzata dai programmi di installazione delle distribuzioni, quando appunto si installano nel vostro pc (montano al suo interno la partizione designata come nuova root)  

`run :` sta per `runtime`, qui dentro vengono inserite informazioni riguardo la sessione desktop corrente. Alcune distribuzioni come **arch** utilizzano una loro subdirectory per montare dispositivi esterni ad esempio ( come la cartella `media` di cui sopra )

`var :` in questa cartella normalmente vi si trovano i log dei vari programmi in esecuzione, e vi si possono consultare  

`tmp :` è una cartella per l'appunto temporanea, generalmente montata in RAM per non occupare spazio di archiviazione. I programmi la utilizzano per creare e scambiare file temporanei  

`home :` la cartella forse che conoscete di più, al suo interno vi sono TUTTE le cartelle utenti. Specifico TUTTE, infatti la `/home` non contiene *una home*, **ma TUTTE**, pensare il contrario è un errore comune nei neofiti, sappiate quindi che al suo interno vedrete tante cartelle ognuna chiamata con **il nome dell'utente** di cui contengono una home. Ad esempio `/home/nomeutente`  

`/root :` è la home dell'utente root ! Ovvero l'amministratore per eccellenza del nostro sistema
