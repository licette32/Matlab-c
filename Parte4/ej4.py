import numpy as np

def decimal_a_binario(numero, decimales=8):
    parte_entera = bin(int(numero))[2:]
    parte_decimal = ''
    frac = numero - int(numero)
    
    for _ in range(decimales):
        frac *= 2
        bit = int(frac)
        parte_decimal += str(bit)
        frac -= bit
    
    return f"{parte_entera}.{parte_decimal}"

def decimal_a_hexadecimal(numero):
    return hex(int(numero)) + ('.' + hex(int((numero - int(numero)) * 16))[2:] if numero % 1 != 0 else '')

def binario_a_decimal(binario):
    parte_entera, parte_decimal = binario.split('.')
    entero = int(parte_entera, 2)
    decimal = sum(int(bit) * 2**(-i) for i, bit in enumerate(parte_decimal, 1))
    return entero + decimal

def binario_a_hexadecimal(binario):
    return decimal_a_hexadecimal(binario_a_decimal(binario))

def generar_tabla_4bits():
    tabla = []
    for i in range(16):
        binario = format(i, '04b')
        sin_signo = i
        magnitud_signo = i if i < 8 else i - 16
        complemento_2 = i if i < 8 else i - 16
        sesgo_7 = i - 7
        punto_fijo = (i / 4) - 2
        tabla.append((binario, sin_signo, magnitud_signo, complemento_2, sesgo_7, punto_fijo))
    return tabla

def representar_pi_punto_fijo():
    pi_binario = decimal_a_binario(np.pi, 8)
    pi_aprox = binario_a_decimal(pi_binario)
    error_relativo = abs(np.pi - pi_aprox) / np.pi
    return pi_binario, pi_aprox, error_relativo

# Resultados del problema 4
print("a) Conversión de 123.51 a binario y hexadecimal:")
print("Binario:", decimal_a_binario(123.51))
print("Hexadecimal:", decimal_a_hexadecimal(123.51))

print("\nb) Conversión de 101111010.011 a decimal y hexadecimal:")
binario = "101111010.011"
print("Decimal:", binario_a_decimal(binario))
print("Hexadecimal:", binario_a_hexadecimal(binario))

print("\nc) Tabla de 4 bits:")
tabla = generar_tabla_4bits()
print("Binario | Sin signo | Mag-Sign | Comp-2 | Sesgo 7 | Punto fijo")
for fila in tabla:
    print(f"{fila[0]} | {fila[1]:>9} | {fila[2]:>8} | {fila[3]:>7} | {fila[4]:>7} | {fila[5]:>9.2f}")

print("\nd) Representación de π en punto fijo (mantisa de 8 bits):")
pi_bin, pi_aprox, error = representar_pi_punto_fijo()
print(f"Binario: {pi_bin}")
print(f"Aproximación decimal: {pi_aprox}")
print(f"Error relativo: {error:.6f}")