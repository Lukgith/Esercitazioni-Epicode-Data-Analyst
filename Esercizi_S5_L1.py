#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 16 14:11:58 2024

@author: luca
"""
#Esercizio N°1

#Tre task (fare la spesa, studiare un concetto, riempire il serbatoio dell'auto)
#Algoritmi testuali
#Fare la spesa:
    #Prendere la macchina
    #Raggiungere il supermercato
    #Parcheggiare la macchina
    #Prendere il carrello
    #Raggiungere la zona vendita
    #Prendere i prodotti desiderati
    #Raggiungere la cassa
    #Stare in fila alla cassa
    #Pagare
    #Imbustare
    #Riporre nel carrello
    #Raggiungere l'auto
    #Riporvi le buste
    #Ritornare il carello
    #Raggiungere casa
    #Ordinare i prodotti nei loro ripiani
    
#Studiare un concetto
    #Scegliere un argomento
    #Ricercare una fonte di informazione
    #Leggere attraverso la fonte
    #Meditare su quanto letto secondo un certo ritmo
    #Appuntare quanto meditato
    #Ripetere quanto appuntato
    #Creare esempi su quanto ripetuto
    #Fare collegamenti con altri concetti ed argomenti
    #Riporre la fonte di informazione
    
#Riempire il serbatoio dell'auto
    #Raggiungere il distributore
    #Posizionarsi di fronte ad una pompa libera
    #Spegnere l'auto
    #Scendere dall'auto
    #Inserire carte o contanti nella colonnina computerizzata
    #Inserire un importo
    #Digitare il codice della carta
    #Selezionare l'erogatore
    #Togliere il tappo al serbatoio
    #Inserire l'erogatore
    #Riempire il serbatoio
    #Riporre l'erogatore
    #Chiudere il serbatoio
    #Salire in auto
    #Accendere l'auto
    #Mettere in moto l'auto
    

#Esercizio N°2

#Abbiamo 25 studenti, memorizzare questo dato in 1 variabile

numeroStudenti = 25

#Esercizio N°3 Stampa quanto sopra a video

print(numeroStudenti)

#Esercizio N°4 Arrivano altri 3 studenti, assegnargli 1 variabile

numeroAgg = 3

#Esercizio N°5 Crea 1 altra variabile somma delle 2 sopra e poi stampala

numeroStudentiTot
numeroStudentiTot = numeroStudenti + numeroAgg
print(numeroStudentiTot)

#Esercizio N°6 Crea 1 variabile che contiene la stringa Epicode e stampala

ScuolaFormazione = 'Epicode'
print(ScuolaFormazione)

#Esercizio N°7 Crea 1 lista con numeri interi da 0 a 5, 
#memorizzala in 1 variabile e stampala

[0,1,2,3,4,5]
lista = [0,1,2,3,4,5]
print(lista)

#Esercizio N°8 Abbiamo la stringa nome_scuola = 'Epicode'
#stampane l'iniziale

nome_scuola = 'Epicode'
print(nome_scuola[0])

#Esercizio N°9 Abbiamo la stringa nome_scuola = 'Epicode'
#stampane le prime 3 lettere

nome_scuola = 'Epicode'
print(nome_scuola[0:3])

#Esercizio N°10 Abbiamo la variabile x=10
#Incrementarla di 2 e poi moltiplicarla per 3

x=10

x= (x+2)*3
x

#Esercizio N°11 Scrivi un programma che chiede 1 stringa in 
#input e stampa i primi 3 caratteri seguiti da 3 punti di
#sospensione poi gli ultimi 3 caratteri

strumento = input()
print(strumento)
print(strumento[0:4]+"..."+strumento[-4:])

#Esercizio N°12 Verificare per ognuna delle seguenti stringhe:
    #windows
    #excel
    #powerpoint
    #word
# se il numero di caratteri è compreso tra 5 e 8

if len('windows') > 4 and len('windows') < 9:
    print('TRUE')
else: print('FALSE')

if len('excel') > 4 and len('excel') < 9:
    print('TRUE')
else: print('FALSE')

if len('powerpoint') > 4 and len('powerpoint') < 9:
    print('TRUE')
else: print('FALSE')

if len('word') > 4 and len('word') < 9:
    print('TRUE')
else: print('FALSE')

#Esercizio Crea un programma che prende in input 2 elementi
#e restituisce in output una loro combo (es. 2 numeri e somma)

catetoMin = input()
catetoMaggiore = input()
catetoMinore = int(catetoMin)
catetoMaggiore = int(catetoMaggiore)
IpotenusaQuadra = (catetoMinore*catetoMinore)+(catetoMaggiore*catetoMaggiore)
print(IpotenusaQuadra)
