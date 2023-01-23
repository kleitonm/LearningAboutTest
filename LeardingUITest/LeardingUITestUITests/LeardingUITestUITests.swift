//
//  LeardingUITestUITests.swift
//  LeardingUITestUITests
//
//  Created by Kleiton Mendes on 14/01/23.
//

import XCTest

final class LeardingUITestUITests: XCTestCase {

    override func setUpWithError() throws {
       
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["Login"]
        app.staticTexts["Título"]
        
        XCTAssertEqual(app.staticTexts["Título"].label, "Cadastrar")
        XCTAssertTrue(app.staticTexts["Título"].exists)
        
        app.buttons["Login"].tap()
        XCTAssertFalse(app.staticTexts["Título"].exists)
        app.buttons["Login"].tap()
        XCTAssertTrue(app.staticTexts["Título"].exists)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
