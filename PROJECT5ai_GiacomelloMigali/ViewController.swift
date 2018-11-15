//
//  ViewController.swift
//  PROJECT5ai_GiacomelloMigali
//
//  Created by M3llo on 15/11/2018.
//  Copyright © 2018 M3llo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func fromStringToInt(numero: String) -> Int{
        let intero:Int = Int(numero) ?? 0
        return intero
    }
    
    func calcolaAreaQuadrato(lato: Int) -> Int{
        let area = pow(Double(lato), 2)
        return Int(area)
    }

    @IBOutlet weak var output: UILabel!
    @IBAction func input(_ sender: UITextField) {
        let lato = fromStringToInt(numero: sender.text ?? "0")
        output.text = String(calcolaAreaQuadrato(lato: lato))
    }
}

