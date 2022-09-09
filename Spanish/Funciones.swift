// -- Funcion void --
func sayHello(){
    print("Hola cabesa")
}
sayHello()

// -- Funcion con un parámetro de entrada --
func sayHello2 (nombre:String){
    print("Hola, mi nombre es \(nombre)")
}
sayHello2(nombre:"Jacobo")

// -- Funcion con más de un parámetro de entrada --
func sayHello3 (nombre:String, edad:Int){
    print ("Hola, mi nombre es \(nombre) y mi edad es \(edad) años")
}
sayHello3(nombre: "Romualdo", edad: 36)

// -- Funcion con valor de retorno --
func sayHello4()->String {
return "Hola picha"
}
print(sayHello4())

// -- Funcion con valor de retorno y parámetros de entrada --
func sayHello5(nacionalidad:String, añoNacimiento:Int)->(String, String, String, Int){
    return ("Yo soy ", (nacionalidad), "y mi año de nacimiento es ", (añoNacimiento))
}
print(sayHello5(nacionalidad: "español", añoNacimiento: 1987))