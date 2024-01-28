# -*- coding: iso-8859-15 -*-

# voglio leggere questo file
file_name = "./elenco-comuni.csv"


def load(fn: str):
    with open(fn, "r") as f:
        lines = f.readlines()  # leggo tutte le linee dal file
        #         sesto campo        quindicesimo
    return [{'city': l[5], 'acronym': l[14]}
            # prendo tutte le liste create dall'istruzione successiva
            for l in
            # pulisco la stringa e creo
            # una lista considerando il
            # separatore ;
            #       |             a partire dalla quarta riga
            #       |             per saltare le intestazioni
            #       |                        |
            #       V                        V
            [s.strip().split(';') for s in lines[3:]]]


cities = load(file_name)
print(cities[:10]) # prime 10 città
print("Quante città in archivio?", len(cities))
print("Quante città in provincia di Roma?",
      len([x for x in cities if x['acronym'] == 'RM']))
print("Quante città il cui nome inizia per A?",
      len([x for x in cities if x['city'].startswith('A')]))
print("Tutte le città il cui nome inizia per 'bo':",
      [c for c in cities if c['city'].lower().startswith('bo')])
