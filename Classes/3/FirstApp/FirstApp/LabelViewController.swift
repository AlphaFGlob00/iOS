//
//  LabelViewController.swift
//  FirstApp
//
//  Created by Fernando Guerrero Espinosa on 13/12/21.
//

import UIKit

class LabelViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    var number: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let number = number {
            valueLabel.text = "\(number)"
        }
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
