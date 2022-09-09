/* ********* ARRAYS ********* */
// -- Array Clásico --
//Declaramos variables antes
let name = "Jacobo"
let surname = "Jiménez"
let age = "35"
let ocupation = "estudiante"
let studies = "ingenieria informática"

var myClassicArray = Array<String>()

// -- Array Moderno --
var myModernArray = [String]()
var myModernArray2: [String] = [] //Forma alternativa

// -- Inferencia de Array --
var inferenceArray = ["He declarado el array", "_infiriendo el tipo de datos"]
print (inferenceArray)

// -- Array literal --
var arregloTareas=[String](arrayLiteral: "ejemplo")
print arregloTareas

// -- Agregar datos de uno en uno a los arrays --
myModernArray.append(name)
myModernArray.append(surname)
print (myModernArray)

// -- Agregar conjunto de datos a los arrays --
myModernArray.append(contentsOf: [age, ocupation, studies])
myModernArray += ["datos agregados al array sin usar append","sino usando +="]
print (myModernArray)

// -- Imprimir un dato por posición de Array --
print (myModernArray[2])

// -- Modificación de datos de Array --
myModernArray[3] = "estudiante perpetuo"
print(myModernArray[3])

// -- Borrar datos de Array--
myModernArray.remove(at: 3)
print(myModernArray)

// -- Recorrer datos Array --
for value in myModernArray {
    print(value)
}

// -- Saber el número total de elementos de un Array --
myModernArray.count
print(myModernArray)

// -- Ordenar los elementos de un Array --
myModernArray.sort()
