#Estoy mas acostumbrado al uso de Python

def es_palindromo(palabra):
    palabra = palabra.lower()
    palabra_sin_espacios = ''.join(palabra.split())

    return palabra_sin_espacios == palabra_sin_espacios[::-1]

palabra_a_verificar = input("Introduce una palabra para verificar si es un palíndromo: ")

if es_palindromo(palabra_a_verificar):
    print(f"{palabra_a_verificar} es un palíndromo.")
else:
    print(f"{palabra_a_verificar} no es un palíndromo.")
