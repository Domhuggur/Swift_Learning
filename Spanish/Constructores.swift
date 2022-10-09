import UIKit

// ----- CREACION DE CLASES -----

// ----- CLASE 2.Tarea -----
class Tarea {
    //variables
    var tipo:String?
    var nombre:String = ""
    var fecha:Date?
    var duracion:Int?
    var lugar:String?
    var color:String?
    var participantes:String?
    var estadoFinalizada:Bool?
    var estadoPorHacer:Bool?
       
    //funcion Init
    init (nombrePtro:String){
        self.nombre = nombrePtro
    }
    
    //Crear un OBJETO DESDE DENTRO DE OTRA CLASE para instanciar la clase Coleccion
    var objetoColeccionDesdeTarea = Coleccion()
    
    
    //funcion para decir el nombre de la tarea
    func funcionTarea(){
        print ("El nombre de esta tarea es: \(nombre)")
    }
}// ----- fin de la clase Tarea -----



// ----- CLASE 1. Coleccion -----
class Coleccion {
    //variables
    var nombreColeccion:String = ""
    var nombreTarea:String = ""
    //var arrayTareas:[Int] = [9,8,7,6,5,4,3,2,1,0]
    //var numeroTareas:Int = arrayTareas[]
    var tipo:String?
    static var cantidad:Int = 0
    
    
    //funcion Init
    /*init (nombrePtro:String){
        self.nombreTarea = nombrePtro
    }*/
    
    //Crear un OBJETO DESDE DENTRO DE OTRA CLASE para instanciar la clase Tarea
    /*IMPORTANTE!!: Aqui puedo darle valor a la variable nombre porque tengo un método INIT declarado dentro de la clase Tarea*/
    var objetoTareaDesdeColeccion = Tarea(nombrePtro:"Hacer los deberes")
    
    //Funcion para contar el número de tareas
    func funcionContador()->Int{
        cantidad += 1
        return cantidad
    }
    func agregarTarea(nombreTareaPtro:String) -> String {
        self.nombreTarea = nombreTareaPtro
        return nombreTarea
    }
}// ----- fin de la clase Coleccion -----



// ----- CLASE 3. Estado -----
class Estado {
    //Variables
    var nombreEstado:String = ""
    var fechaCambioEstado:Date?
    var estado:String?
    
    //Funcion
    func funcionEstado(nombreEstadoPtro:String)->String{
        self.nombreEstado = nombreEstadoPtro
        return nombreEstadoPtro
    }
}// ----- fin de la clase Estado -----

// ----- CLASE 4. Tipo -----
// ----- fin de la clase Tipo -----
// ----- FIN DE LA CREACIÓN DE CLASES -----


// ----- CREACIÓN DE OBJETOS DESDE FUERA DE LAS CLASES -----
//Crear un OBJETO para instanciar la clase Tarea mediante constructor
/*IMPORTANTE!!: Aqui puedo darle valor a la variable nombre porque tengo un método INIT declarado dentro de la clase*/
let objetoTarea = Tarea(nombrePtro:"Hacer la colada")

//Crear un OBJETO para instanciar la clase Coleccion mediante constructor
//IMPORTANTE!!: Aqui NO puedo darle valor a la variable nombreColeccion porque NO tengo un método INIT declarado dentro de la clase
var objetoColeccion = Coleccion()
objetoColeccion.nombreTarea
//Crear un OBJETO para instanciar la clase Estado mediante constructor
var objetoEstado = Estado()
// ----- FIN DE LA CREACIÓN DE OBJETOS -----


// ----- ACCESO A LAS VARIABLES Y FUNCIONES DE LAS CLASES MEDIANTE LOS OBJETOS -----
//Accedo a la funcion de la clase Tarea mediante el objeto externo
objetoTarea.nombre
objetoTarea.funcionTarea()

//Accedo a la funcion Contador de la clase Coleccion mediante el objeto externo
objetoColeccion.funcionContador()
objetoColeccion.funcionContador()

//Accedo a la variable nombre de la clase Coleccion mediante el objeto externo y le doy valor
//IMPORTANTE!!: Como NO tengo un método INIT dentro de la clase, la forma de darle valor a una variable es después de la instanciación de clase, a través del objeto acceder a la variable y asignarle valor.
objetoColeccion.nombreColeccion = "Tareas pendientes"
objetoColeccion.nombreColeccion = "Tareas últimas"

//Accedo a los objetos instanciados dentro de las clases desde los de fuera
print(objetoColeccion.objetoTareaDesdeColeccion.nombre)
print(objetoColeccion.funcionContador())
print(objetoColeccion.funcionContador())

//Accedo a la funcion Estado de la clase Estado, paso el nombre por la funcion y lo guardo en la variable de la clase
objetoEstado.funcionEstado(nombreEstadoPtro:"Completada")

//Accedo a la variable nombreEstado de la clase Estado mediante el objeto externo
objetoEstado.nombreEstado
// ----- FIN DEL ACCESO A LAS VARIABLES Y FUNCIONES DE LAS CLASES MEDIANTE LOS OBJETOS -----
