from  random import randint

listaNum = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]

for i in range(1, 12):
    for x in range(1, 8):
        nota1= randint(2,9) + listaNum[randint(0, len(listaNum) - 1 )]
        nota2= randint(2,9) + listaNum[randint(0, len(listaNum) - 1 )]
        nota3= randint(2,9) + listaNum[randint(0, len(listaNum) - 1 )]
        nota4= randint(2,9) + listaNum[randint(0, len(listaNum) - 1 )]
        falta = randint(0,12)
        # media = round(sum([nota1, nota2, nota3, nota4]) / 4, 1)
        # resultado = "A" if media >= 5.5 else "R"
        # print(f"{(x, i, nota1, nota2, nota3, nota4, media, resultado, falta)},")
        print(f"{(x, i, nota1, nota2, nota3, nota4, falta)},")