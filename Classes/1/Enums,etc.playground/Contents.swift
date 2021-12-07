import UIKit
import Darwin

//Arrays y Operaciones con switch.


//Array de jugadores de futbol

let players = [ 1: "Chicharito", 2: "Falcao",3: "Suarez", 4: "Neymar", 5: "Mbappe", 6: "Lewandoski", 10: "Messi"]

//obteniendo el top 5

var top5 = [String]()
var top3 = [String]()
var unlisted = [String]()

for (index, player) in players  {
    //agregando a los respectivos arreglos dependiendo el valor del index.
    switch index{
    //Solo esta verificando que cumpla la condicion y vuelve a regresar, no checa los demas casos
    case 0...3:
        top3.append(player)
        //para que cheque los demas casos se debe agregar falltrough
        fallthrough
    case 0...5:
        top5.append(player)
    default:
        unlisted.append(player)
    }
}

print(top3.sorted())
print(top5.sorted())
print(unlisted.sorted())

//Enums

//allCases devuelve un array donde te da el tipo de dato y que es lo que hace o representa
    //raw & implicit values
    //Agregar String para manipular el raw value
enum Planets: String, CaseIterable {
    case earth, mars, jupiter, saturn
    
    //functions dentro de enums
    func printIfHabitable(){
        switch self {
        case .earth:
            print("Habitable")
        case .mars:
            print("Dependiendo..")
        default:
            print("No Habitable")
        }
    }
}

let planets = Planets.allCases
let earth = Planets.earth
let mars = Planets.mars

earth.printIfHabitable()
mars.printIfHabitable()

for planet in planets {
    
    print (planet.rawValue.capitalized)
    
    
}

//raw value no se puede obtener de otro lado, associated si

// Ejemplos de associated  value
//1
enum Planets2  {
    case habitable(String)
    case noHabitable(String)

}

var planetHabitable = Planets2.habitable("Earth")
var planetInhabitable = Planets2.noHabitable

switch planetHabitable {
case let .habitable(name):
    print("El planeta \(name) es habitable")
case .noHabitable:
    print("No Habitable")
}

//2
//a un caso de una enumeracion le puedo asignar un valor para obtener informacion extra
//puedo saber que es credit y aparte saber a que segmento corresponde.
enum BankingCard {
    case credit(String)
    case debit(String)
}

let amexCorporativa = BankingCard.credit("Black")






