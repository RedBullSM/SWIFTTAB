//
//  ViewController.swift
//  prova2
//
//  Created by Sebastiano Panico on 19/11/2018.
//  Copyright © 2018 Sebastiano Panico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguire1" {
            let ok = segue.destination as! TableViewController1
            let nino = sender as! [String]
            ok.ni = nino
        }
        if segue.identifier == "seguire2"{
            let ok1 = segue.destination as! TableViewController2
            let nino1 = sender as! [String]
            ok1.ni = nino1
        }
    }

   
    @IBAction func PREMI1(_ sender: Any) {
        let ninos = ["NINOAS","POPPI"]
        performSegue(withIdentifier: "seguire2", sender: ninos)
        
    }
    @IBAction func PREMI(_ sender: Any) {
        print("NINO VERSIONE")
        let okok = ["CIIII","NINO","IK"]
    performSegue(withIdentifier: "seguire1", sender: okok)
    }
    @IBOutlet weak var label1: UILabel!
    var stringa : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = stringa
    }


}

