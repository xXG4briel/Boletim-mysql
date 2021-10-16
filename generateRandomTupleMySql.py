from  random import randint

listaNum = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]

for i in range(1, 12):
    for x in range(1, 8):
        nota = randint(0,10)
        falta = randint(0,16)
        num = randint(0, len(listaNum) - 1 )
        print(f"{(x, i, nota + listaNum[num], falta)},")
