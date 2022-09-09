// --- Bucle For In ------
for indice in 1...10{
    print("\(indice)")
}

var arregloLetras:[String] = ["a", "b", "c"]
for letras in arregloLetras{
    print ("\(arregloLetras)")
}

// -- Bucle While -----
var x = 1
while x < 10 {
    print ("Este es un bucle While \(x)")
    x += 1
}

// -- Ciclo Repeat-While (Do-While) --
var y = 1
repeat{
    y += 1
    print ("Esto es un ciclo Repeat-While \(y)")
}while y < 10