//
//  BeforeEachAfterEach.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 17/01/23.
//

import UIKit
import Quick
import Nimble
@testable import LearningAboutTest

final class BeforeEachAfterEach: QuickSpec {

    override func spec() {
        describe("befourEach and afterEach behaviour") {
            beforeEach {
                print("Describe before each")
            }
            
            context("some context") {
                beforeEach {
                    print("context before each")
                }
                it("example 1") { print("example 1")}
                
                it("example 2") { print("example 2")}
                
                it("example 3") { print("example 3") }
                
                afterEach {
                    print("context after each")
                }
            }
            
            context("another context") {
                beforeEach {
                    print("context before each")
                }
                
                it("example 4") { print("example 4")}
                
                it("example 5") { print("example 5")}
                
                afterEach {
                    print("context after each")
                }
            }
            afterEach {
                print("Describe after each")
            }
        }
    }

}
