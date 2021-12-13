import UIKit
import Darwin

//Delegate and Protocols
var greeting = "Hello, playground"



//Metodo estatico
//incializador por defecto
struct Persona{
    
    var nombre: String
    var altura: Double
    
    //caminar hace referencia a una instancia en particular
    func caminar(){
        print("caminando...")
    }
    
    //Static: hace refencia a una clase en si
    
        //Static Property:
        static var cantidadOrejas: Int {
            return 2
        }
    
        //metodo comun para persona
                //va a devolver un entero
        static func cantidadOjos() -> Int {
            return 2
        }
}
//Static Method
print(Persona.cantidadOjos())
//Static Property
print(Persona.cantidadOrejas)
//Instancia para acceder a metodos no estaticos
let persona =  Persona(nombre: "Fernando", altura: 1.80)
persona.caminar()



//DELEGATES:
//se requiere un Protocolo para ser utilizado y no puede usarse con struct
        //Any Object: Para uso del weak, cualquier implementacion del protocolo debe ser un objeto o clase.
//Protocolo puede ser trabajado como un tipo
protocol Trabajador: AnyObject {
    func laborar()
        
}


class Personal: Trabajador {
    
    func operar(){
        
        var maquina = Maquina()
        //interaccion del empleado con la maquina mediante el delegado
        maquina.delegate = self
        maquina.hacerProduccion()
    }
    
    //Pertenece Protocolo Trabajador
    func laborar() {
        print("ayudando a la maquina a cumplir su funcion")
    }
}

struct Maquina{
    //asignando el delegado
    //weak solo puede aplicarse a clases y objetos.
    weak var delegate: Trabajador?
    
    func hacerProduccion() {
        //soldadora
        terminarPieza()
        
    }
    func terminarPieza () {
        //va a hacer un trabajo que no es la responsabilidad pero requiere de llevarse a cabo
        //aqui entrara la interaccion del Trabajador
        print("Terminando el Producto")
        delegate?.laborar()
        print("Producto Listo")
    }
}

Personal().operar()

//Table y Collection View se manejan con DELEGADOS
//Tablas: Dos delegados -> DataSource
                     // -> Delegate



//Extensiones
//Extensiones: Darle funcionalida adicional a una clase pre existente y poder extenderla
//Determinar numero es par o impar

extension Int {
    
    func esPar() -> Bool {
        return self % 2 == 0
    }
}
print(1.esPar())
print(2.esPar())
    

