# -*- coding: iso-8859-15 -*-

# supponiamo di voler gestire una rubrica telefonica
# con la quale l'utente può aggiungere o visualizzare nomi
#
# Analisi
# L'utente potrà scegliere l'operazione da eseguire, quindi
# ci servirà un modo per chiedere quale operazione effettuare

def menu() -> int:
    print("1. Aggiungi")
    print("2. Elenca")
    print("0. Esci")
    
    r = -1
    while r != 0 and r != 1 and r != 2:
        try:
            r = int(input("Scegli l'operazione: "))
        except:
            r = -1
    return r

# l'utente potrà aggiungere numeri alla rubrica
# quindi ci serve una rubrica!
rubrica = []

# l'aggiunta dei numeri dovrà prevedere la digitazione del nome
# e del numero di telefono associato
def inserisci() :
    nome = input("Nome: ") # chiede il nome all'utente
    telefono = input("Numero di telefono: ") # chiede il numero di telefono
    return nome, telefono # restituisce la tupla (nome, numero)

# la visualizzazione dovrà prevedere la stampa della rubrica
def visualizza():
    print(rubrica)
    
scelta = -1
while scelta != 0:
    scelta = menu()
    if scelta == 1:
        inserisci()
    elif scelta == 2:
        visualizza()

    