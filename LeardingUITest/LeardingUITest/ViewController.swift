//
//  ViewController.swift
//  LeardingUITest
//
//  Created by Kleiton Mendes on 14/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.accessibilityIdentifier = "Título"
        }
    }
    
    var isHideen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        isHideen.toggle()
        titleLabel.isHidden = isHideen
    }
}

