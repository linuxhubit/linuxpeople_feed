---
title: 'Opzioni bash'
date: 2021-03-19 11:00
layout: post
author: Davide Galati (in arte PsykeDady)
author_github: PsykeDady
tag: trick
---

Per quei vecchietti che ancora usano bash e non zsh, sapete che potete attivare delle opzioni carine?
Tutto con shopt

Digitate:

shopt -s <opzione> 
Per impostare ad on una feature

shopt -u <opzione>
Per disabilitarla

Senza specificare ne -s ne -u vedrete lo stato attuale delle opzioni.

shopt 
vede lo stato di tutte le opzioni

shopt <opzione>
vede lo stato dell'opzione indicata.


Vediamo qualche opzione tra quelle più carine:

shopt -s autocd 
Consente di fare  il cambio di cartella senza specificare cd, ad esempio:
$HOME/Documenti/Lavoro
Entra nella cartella Documenti/Lavoro nella vostra home


shopt -s cdspell
Corregge piccoli errori sui comandi cd (non quelli impliciti fatti con autocd però), tipo:
cd Docmenti
Si trasforma automaticamente in cd Documenti

shopt -s globstar
Attiva l'estensione della shortcut **, richiede una spiegazione approfondita, supponiamo di voler applicare un operazione a tutti i file nella cartella corrente, potremmo brevemente usare:

for i in *; do <comando> $i; done

Oppure
for i in **; do <comando> $i; done

Con l'opzione globstar attiva, ** non restituisce tutte le cartelle e i file, ma anche sottocartelle e file nelle sottocartelle (ricorsivamente)! 
Ad esempio:
cat ** 2> /dev/null
stamperebbe a schermo il contenuto dei file di testo nella cartella corrente e dei file in tutte le sottocartelle della cartella corrente (sopprimento gli errori del tipo "is a directory") .
___________________________________________________
E niente penso di aver appesantito abbastanza questo trucco del giorno al momento, altre opzioni un altro giorno se mi andrà U.U
