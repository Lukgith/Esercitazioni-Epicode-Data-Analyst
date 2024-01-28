# -*- coding: iso-8859-15 -*-

l = [1, 2, 4325, 65734, 143, 746, 23465, 5978,
     48567, 6908, 3457, 657809, 26543, 58790]

l2 = []
for x in l:
    l2.append(x * 2)

print(l, l2)

# list comprehension
#    scrivi x * 2 per ogni x che è presente in l
l3 = [x * 2 for x in l]
print(l3)
# inline-if
#    scrivi "pari" se x è pari altrimenti "dispari" per x che varia in l
l4 = ["pari" if x % 2 == 0 else "dispari" for x in l]
print(l4)
#    scrivi x con x in l solo se x è pari
l5 = [x for x in l if x % 2 == 0]
print(l5)

from random import randint as rnd

l = [rnd(0, 100) for x in range(0, 10)]
print(l)
print([i for i in l if i % 2 == 0])
print([i for i in l if i % 2 != 0])
