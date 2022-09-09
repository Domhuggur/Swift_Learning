/* ********* DICCIONARIOS ********* */

// -- Sintaxis --
let myOldDictionary = Dictionary<String, Int>() //Clásica
var myNewDictionary = [String:Int]() //Actual

// -- Agregar un nuevo dato --
myNewDictionary["Jacobo"] = 007
myNewDictionary["estudiante"] = 003
print(myNewDictionary)

// -- Agregar varios valores --
myNewDictionary = ["Jacobo":007, "Jimenez":001, "estudiante":003, "36":002]
print(myNewDictionary)

// -- Acceso a un dato --
print (myNewDictionary["Jimenez"])
print (myNewDictionary["Pedro"])
 
// -- Actualizar un dato --
myNewDictionary["Jimenez"] = 011
print(myNewDictionary)
print(myNewDictionary["36"])

myNewDictionary.updateValue(010, forKey: "36")
print(myNewDictionary["36"])

// -- Eliminar un dato --
myNewDictionary["36"] = nil
print(myNewDictionary["36"])
myNewDictionary.removeValue(forKey: "Jimenez")
print(myNewDictionary)