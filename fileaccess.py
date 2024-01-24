# -*- coding: iso-8859-15 -*-

file_name = "Esempio.txt"
directory = "./" # il . indica la "cartella nella quale sto lavorando"

file_full_name = directory + file_name

file = open(file_full_name, "r") # r = read = lettura, w = write = scrittura

# ... qui possiamo accedere al contenuto del file
lines = file.readlines() # legge tutte le linee all'interno di una lista

# quando abbiamo terminato
file.close() # il file va chiuso affinché il sistema possa riutilizzare lo handle

print(lines)

print("Ciao", end="")
print(" a tutti")

for l in lines:
    print(l.strip(), end=" ")
    
with open(file_full_name, "r") as f:
    ll = f.readlines()
# qui finisce la with e quindi viene chiuso automaticamente anche il file

print(ll)

with open(file_full_name, "w") as fw:
    fw.writelines([l.upper() for l in ll])
 
with open(file_full_name, "a") as fw: # a = scrittura con aggiunta (append)
    fw.writelines([l.lower() for l in ll])

with open(file_full_name, "r") as f:
    print(f.read())