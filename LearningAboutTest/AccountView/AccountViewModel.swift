//
//  AccountViewMdel.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 09/01/23.
//

import UIKit


protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ())
    
    var instructionText: String { get }
    var status: String { get set }
}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    private let model: AccountModel
    private let provider: ProviderProtocol
    
    init(shouldUseLocation: Bool, model: AccountViewModel, provider: ProviderProtocol = Provider()) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
        self.provider = provider
        self.status = ""
    }
    
    func getJoke() {
        provider.getJoke { result, error in
            if error != nil {
                self.status = "Erro"
                return
            }
            self.status = result![0]
        }
    }
}
    
extension AccountViewModel: AccountViewModelProtocol {
    var status: String {
        get {
            return ""
        }
        set {
            return ""
        }
    }
    
    var instructionText: String {
        if shouldUseLocation {
            return model.instruction + " com localização"
        }
        return model.instruction
    }
    
    func loginButtonTap() {
        print("login Realizado com Sucesso")
    }
    
        func shouldRequestLocation(showAlert: () -> (),
                                   askUserPermission: () -> (),
                                   completion: () -> ()) {
            
            if shouldUseLocation {
                askUserPermission()
                completion()
                return
            }
            showAlert()
            completion()
        }
    }
