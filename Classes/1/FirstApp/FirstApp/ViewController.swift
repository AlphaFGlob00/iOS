//
//  ViewController.swift
//  FirstApp
//
//  Created by Fernando Guerrero Espinosa on 19/11/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoImageView: UIImageView!
    
    //contador de ingresos a pantalla
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //evento que se dispara cada que se ejecuta un segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        count += 1
        //pasando el contador al destination
                        //Pasar el dato a la otra pantalla
       let vc2 = segue.destination as? ViewController2
        vc2?.countToDisplay = "Hola por \(count) vez"
    }
}

