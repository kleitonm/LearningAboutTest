//
//  ViewControllerTestingTests.swift
//  ViewControllerTestingTests
//
//  Created by Kleiton Mendes on 14/01/23.
//

import XCTest
@testable import ViewControllerTesting

final class ViewControllerTestingTests: XCTestCase {

    var viewController: ViewController?
    
    override func setUpWithError() throws {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(identifier: "FirstViewController") as? ViewController
        viewController?.loadView()
    }

    override func tearDownWithError() throws {
        viewController = nil
    }

    func testButtonAction() {
        let firstColor = viewController?.titleLabel.textColor
        XCTAssertEqual(firstColor, UIColor.black)
        viewController?.generateRandonButton(UIButton())
        XCTAssertFalse(firstColor == viewController?.titleLabel.textColor)
    }
}
