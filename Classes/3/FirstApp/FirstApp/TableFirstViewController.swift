//
//  TableFirstViewController.swift
//  FirstApp
//
//  Created by Fernando Guerrero Espinosa on 13/12/21.
//

import UIKit

class TableFirstViewController: UIViewController {
    //Referencia a la tableview
    @IBOutlet weak var myTableView : UITableView!
    
    //creando un array de celdas
    var enteros: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for  i in 1...100 {
            enteros.append(i)
        }
    }
    //conectando con DetailView mediante el segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detalleVC = segue.destination as! LabelViewController
        guard let  selectedRow = myTableView.indexPathForSelectedRow?.row else{
            return 
        }
        
        //la label va a mostrar el texto de la tabla
                //selected el numero de celda en la nueva pantalla
        detalleVC.number = enteros[selectedRow]
    }

}
//Como buena practica cuando se implementen protocolos es mejor
//manejarlos como extension
extension TableFirstViewController: UITableViewDataSource{
    //que informacion mostrar, cuantas rows mostrar y como mostrarlo
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //cantidad de filas a mostrar
        //swift puede asumir la palabra return sin necesidad de escribirla
        return enteros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cual mostrar primero?
        
        //Reutilizando Celdas
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableCustomCell
        cell.customLable.text = "\(enteros[indexPath.row])"
        //validacion de condicion por operacion ternaria
        cell.backgroundColor = indexPath.row.esPar() ? .gray : .red
        
        // ! = desenvolver la instancia, mas rapido y asegura en cierto modo que
        // no es nulo o tambien equivale a un force unwrap
        return cell
    }
}

extension Int {
    func esPar() -> Bool {
        return self % 2 == 0
    }
}


//Sin Reutilizar celdas
            //estilos por default por inferencia de tipo
/*let cell = UITableViewCell(style: .default, reuseIdentifier: "MyDefaultTableViewCell") */
