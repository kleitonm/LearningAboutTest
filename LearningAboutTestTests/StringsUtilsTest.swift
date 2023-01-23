//
//  StringsUtilsTest.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 17/01/23.
//

import Quick
import Nimble
@testable import LearningAboutTest

final class StringsUtilsTest: QuickSpec {

    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "meuemial@gmail.com"
                    let isValidEmail = email.isValueEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "meuemail.com"
                    let isValidEmail = email.isValueEmail()
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }

}
