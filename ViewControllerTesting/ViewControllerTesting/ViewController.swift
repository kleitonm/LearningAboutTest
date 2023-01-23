//
//  ViewController.swift
//  ViewControllerTesting
//
//  Created by Kleiton Mendes on 14/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func generateRandonButton(_ sender: Any) {
        titleLabel.textColor = ColorRandomize.random()
    }
}

