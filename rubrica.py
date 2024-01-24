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


def inserisci():
    nome = input("Nome: ")  # chiede il nome all'utente
    telefono = input("Numero di telefono: ")  # chiede il numero di telefono
    return nome, telefono  # restituisce la tupla (nome, numero)

# la visualizzazione dovrà prevedere la stampa della rubrica
def visualizza():
    for i in rubrica:
        print("Nome:", i["nome"], "Telefono", i["telefono"])


# implementazione della persistenza su file
file_rubrica = "./rubrica.txt"  # nome del file

# salva le informazioni su un file di testo
def salva(nome_file: str):
    with open(nome_file, "w") as f:
        f.writelines([e["nome"] + ';' + e["telefono"] + '\n' for e in rubrica])

# legge le informazioni da un file di testo
def leggi(nome_file: str):
    with open(nome_file, "r") as f:
        lines = f.readlines()  # legge le righe per intero
    # divide ogni riga in base alla presenza di un carattere ;
    elab = [l.strip().split(';') for l in lines]
    #      trasforma le liste ottenute in precedenza creando per ogni riga un dict
    return [{'nome': l[0], 'telefono': l[1]} for l in elab]


rubrica = leggi(file_rubrica)
scelta = -1
while scelta != 0:
    scelta = menu() # l'utente sceglie una voce del menu
    if scelta == 1:
        nome, numero = inserisci()  # qui ottengo ciò che l'utente ha inserito
        # lo aggiungo alla rubrica
        rubrica.append({'nome': nome, 'telefono': numero})
        salva(file_rubrica)
    elif scelta == 2:
        visualizza()