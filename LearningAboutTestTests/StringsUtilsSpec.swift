//
//  StringsUtilsSpec.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 17/01/23.
//

import XCTest
@testable import LearningAboutTest

final class StringsUtilsSpec: XCTestCase {

    func testValueEmail() {
        let email = "meuemail.com"
        let value = email.isValueEmail()
        
        XCTAssertTrue(value, "Este e-mail não é válido")
    }
    
    func testValueReplace() {
        let string = "String"
        let stringText = string.replace(string: "g", replacement: "o")
        let stringText2 = stringText.replace(string: "S", replacement: "P")
        
        XCTAssert(stringText == "Strino", "O texto não é igual")
        XCTAssert(stringText2 == "Ptrino", "O texto não é igual")
    }
    
    func testRemoveWithSpace() {
        let text = "Hello Word"
        let newText = text.removeWithSpace()
        
        XCTAssert(newText == "HelloWord", "Não removeu os espaços")
    }

}
