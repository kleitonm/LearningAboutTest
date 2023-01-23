//
//  AccountViewModelSpec.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 09/01/23.
//

import Nimble
import Quick
@testable import LearningAboutTest

final class AccountViewModelSpec: QuickSpec {
    
    
    override func spec() {
        describe("AccountViewModel") {
            
            var sut: AccountViewModel!
            
            context("Should Request Location") {
                
                var showAlert: Bool!
                var askUserPermission: Bool!
                var completion: Bool!
                
                beforeEach {
                    var showAlert = false
                    var askUserPermission = false
                    var completion = false
                }
                it("Use Location True") {
                    sut = AccountViewModel(shouldUseLocation: true)

                    //                    var showAlert = true
                    //                    var askUserPermission = true
                    //                    var completion = true
                    
                    sut.shouldRequestLocation(
                        showAlert {
                            showAlert = true
                        },
                        askUserPermission {
                            askUserPermission = true
                        },
                        completion {
                            completion = true
                        })
                    
                    expect(showAlert).to(equal(false))
                    expect(askUserPermission).to(equal(false))
                    expect(completion).to(equal(false))
                }
                
                it("Use Location False") {
                    sut = AccountViewModel(shouldUseLocation: true)
                    
                    //                var showAlert = false
                    //                var askUserPermission = false
                    //                var completion = false
                    
                    sut.shouldRequestLocation(
                        showAlert {
                            showAlert = false
                        },
                        askUserPermission {
                            askUserPermission = false
                        },
                        completion {
                            completion = false
                        })
                    
                    expect(showAlert).to(equal(true))
                    expect(askUserPermission).to(equal(true))
                    expect(completion).to(equal(true))
                }
                
                it("loginButtonTap") {
                    sut = AccountViewModel(shouldUseLocation: true)
                    
                    expect(sut.loginButtonTap()).to(beVoid())
                }
            }
            context("AccountViewModelProtocol") {
                it("Verify AccountViewModelProtocol") {
                    sut = AccountViewModel(shouldUseLocation: false)
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
            
            context("Instruction Text") {
                it("Verify using location") {
                    sut = AccountViewModel(shouldUseLocation: true, model: AccountModel(instruction: "Olá mundo"))
                    expect(sut.instructionText).to(equal("Olá mundo com localização"))
                }
                
                it("Verify using location") {
                    sut = AccountViewModel(shouldUseLocation: false, model: AccountModel(instruction: "Olá mundo"))
                    expect(sut.instructionText).to(equal("Olá mundo"))
                }
            }
            
            context("Get Joke") {
                it("with error"){
                    sut = AccountViewModel(shouldUseLocation: true, model: AccountViewModel(instruction: "Olá Mundo"),
                                           provider: ProviderMock(status: .invalidResponse))
                    sut.getJoke()
                    expect(sut.status).to(equal("Error"))
                }
                
                it("Whithout error") {
                    sut = AccountViewModel(shouldUseLocation: true, model: AccountViewModel(instruction: "Olá mundo"),
                                           provider: ProviderMock(status: .sucess))
                    sut.getJoke()
                    expect(sut.status).to(equal("animal "))
                }
            }
        }
    }
}

