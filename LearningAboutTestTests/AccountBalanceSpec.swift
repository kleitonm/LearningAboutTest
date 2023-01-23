//
//  AccountBalanceSpec.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 17/01/23.
//

import XCTest
import Quick
import Nimble
@testable import LearningAboutTest

final class AccountBalanceSpec: QuickSpec {

    override func spec() {
        describe("AccountBalance") {
            var account = AccountBalance?.self
            context("O saldo menor que 100, deve retornar o saldo +10") {
                it("Saldo menor que 100") {
                    account = AccountBalance(balance: 100)
                    let specialBalance = account?.getSpecialLimit()
                    expect(specialBalance).to(beLessThanOrEqualTo(100))
                }
            }
        }
    }


}
