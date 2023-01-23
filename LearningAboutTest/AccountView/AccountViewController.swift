//
//  ViewController.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 09/01/23.
//

import UIKit

class AccountViewController: UIViewController {

    var viewModel: AccountViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.shouldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
        print("Click")
    }
    
    

}

