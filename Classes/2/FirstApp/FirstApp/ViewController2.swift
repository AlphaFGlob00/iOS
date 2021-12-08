//
//  ViewController2.swift
//  FirstApp
//
//  Created by Fernando Guerrero Espinosa on 03/12/21.
//

import UIKit

class ViewController2: UIViewController {
    
    //Asociando el contador al label de la vista
    @IBOutlet weak var counterLabel: UILabel!
    
    var countToDisplay: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        //mostrando la informacion
        counterLabel.text = countToDisplay
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
