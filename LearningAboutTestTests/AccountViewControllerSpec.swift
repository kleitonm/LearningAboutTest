//
//  AccountViewControllerSpec.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 09/01/23.
//

import Nimble
import Quick
@testable import LearningAboutTest


class AccountViewModelMock: AccountViewModelProtocol {
    var status = ""
    
    var instructionText: String { return "" }
    
    var loginButtonHasBeenCalled = false
    
    func loginButtonTap() {
        loginButtonHasBeenCalled = true
    }
    
    func shouldRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {
    }
}

final class AccountViewControllerSpec: QuickSpec {

    override func spec() {
        describe("AccountViewController") {
            var sut: AccountViewController!
            
            beforEach {
                sutMock = AccountViewModelMock()
                sut = AccountViewController(nibName: "AccountViewController", bundle: nil)
                sut.viewModel = sutMock
            }
            
            contex("Actions") {
                it("Login Button Tap") {
                    sut.loginButtonAction(UIButton())
                    expect(sutMock.loginButtonCalled).to(beTrue())
                }
            }
        }
    }

}
